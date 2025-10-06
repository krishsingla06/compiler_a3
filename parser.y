%{
#include <bits/stdc++.h>
#include<iomanip>
using namespace std;

/* Make sure yylex is visible as a C function */
extern "C" int yylex(void);
extern FILE* yyin;
extern int yylineno;

static void yyerror(const char* s) {
    cerr << "Parse error at line " << yylineno << ": " << s << "\n";
}

%}

%code requires {
    #include <bits/stdc++.h>
    using namespace std;
    
    // Structured type information - contains isConst, isPointer, baseType, etc.
    struct TypeInfo {
        bool isStatic;
        string baseType;        // int, char, float, void, struct_name, etc.
        bool isPointer;
        int pointerCount;
        bool isArray;
        vector<int> arrayDimensions;  // stores size of each dimension, -1 for unknown size
        
        // Native value storage
        union {
            int int_value;
            float float_value;
            char char_value;
            //KRISH - add here ig a byte for int* ptr = &x
        } native_value;
        
        string* string_value;   // Separate for heap-allocated strings
        bool has_native_value;
        string value;           // Keep for identifiers/expressions
        
        TypeInfo() : isStatic(false), baseType(""), 
                     isPointer(false), pointerCount(0), 
                    isArray(false), string_value(nullptr),
                     has_native_value(false), value("") {
            // Initialize union to zero
            native_value.int_value = 0;
        }
        
        // Value setters
        void setIntValue(int val) { 
            native_value.int_value = val; 
            has_native_value = true; 
        }
        void setFloatValue(float val) { 
            native_value.float_value = val; 
            has_native_value = true; 
        }
        void setCharValue(char val) { 
            native_value.char_value = val; 
            has_native_value = true; 
        }
        void setStringValue(const string& val) { 
            if (string_value) delete string_value;
            string_value = new string(val); 
            has_native_value = true; 
        }
        
        // Value getters
        int getIntValue() const { return native_value.int_value; }
        float getFloatValue() const { return native_value.float_value; }
        char getCharValue() const { return native_value.char_value; }
        string getStringValue() const { 
            return string_value ? *string_value : ""; 
        }
        
        // Destructor
        ~TypeInfo() {
            if (string_value) delete string_value;
        }
        
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), isPointer(other.isPointer), 
                    pointerCount(other.pointerCount), isArray(other.isArray),
                    arrayDimensions(other.arrayDimensions), native_value(other.native_value),
                    has_native_value(other.has_native_value), value(other.value) {
            string_value = other.string_value ? new string(*other.string_value) : nullptr;
        }
        
        string toString() const {
            string result = "";
            if (isStatic) result += "static ";
            result += baseType;
            for (int i = 0; i < pointerCount; i++) {
                result += "*";
            }
            if (isArray) {
                for (int size : arrayDimensions) {
                    result += "[";
                    if (size >= 0) result += to_string(size);
                    result += "]";
                }
            }
            return result;
        }
    };

    // Scope context with per-scope value storage
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        vector<uint8_t> value_storage; // raw byte storage for variable values
        size_t next_offset;
        int scope_level;
        
        ScopeContext(int level) : next_offset(0), scope_level(level) {}
        
        // Get size of a type in bytes
        size_t getTypeSize(const TypeInfo& type) {
            if (type.isPointer) {
                return sizeof(void*);  // Pointer size
            }
            
            if (type.isArray) {
                size_t element_size = getBaseTypeSize(type.baseType);
                size_t total_elements = 1;
                for (int dim : type.arrayDimensions) {
                    if (dim > 0) total_elements *= dim;
                }
                return element_size * total_elements;
            }
            
            return getBaseTypeSize(type.baseType);
        }
        
        size_t getBaseTypeSize(const string& baseType) {
            if (baseType == "int") return sizeof(int);
            if (baseType == "float") return sizeof(float);
            if (baseType == "char") return sizeof(char);
            return 1; // Default for unknown types
        }
        
        // Always allocate space, initialize with zeros if no value provided
        size_t allocateVariable(const TypeInfo& type, const void* init_value = nullptr) {
            size_t size = getTypeSize(type);
            size_t offset = next_offset;
            
            // Resize storage to accommodate new variable
            value_storage.resize(offset + size);
            
            if (init_value) {
                // Copy provided initial value
                memcpy(&value_storage[offset], init_value, size);
            } else {
                // Initialize with zeros
                memset(&value_storage[offset], 0, size);
            }
            
            next_offset += size;
            return offset;
        }
        
        // Retrieve value from this scope's storage
        template<typename T>
        T getValue(size_t offset) const {
            if (offset + sizeof(T) <= value_storage.size()) {
                return *reinterpret_cast<const T*>(&value_storage[offset]);
            }
            throw runtime_error("Invalid offset or corrupted storage");
        }
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable name
        bool isPointer;
        int pointerCount;
        bool isArray;
        vector<int> arrayDimensions;
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        DeclaratorInfo() : name(""), isPointer(false), pointerCount(0),  
                          isArray(false), initValue(""), initType(nullptr) {}
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;
        TypeInfo type;
        int line;
        int scope_level;
        size_t value_offset;        // Always valid - every variable has storage
        size_t value_size;          // Always > 0 - size of allocated storage
        bool isInitialized;         // true = has explicit initial value, false = zeros
        
        SymbolEntry() : line(0), scope_level(0), value_offset(0), 
                       value_size(0), isInitialized(false) {}
    };
}

%code {
    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;

    // Function declarations for scope management
    void enter_scope();
    void exit_scope();
    void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType = nullptr);
    bool lookup_symbol(const string& name, SymbolEntry& entry);
    bool lookup_symbol_current_scope(const string& name);
    void check_variable_declaration(const string& name);
    TypeInfo* lookup_typeinfo_by_name(const string& name);
    void displayNativeValue(const TypeInfo& type, const TypeInfo& valueType);
    void* parseInitialValue(const TypeInfo& type, const TypeInfo& initType);
    
    // Type checking functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    TypeInfo* get_expression_type(const string& expr_value);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    bool check_literal_type(const string& value, const string& expected_base_type);
}

/* Declare value types */
%union {
    int ival;       /* integer literals */
    string* sval;     /* identifiers */
    float fval;     /* float literals */
	char cval;      /* char literals */
	vector<string>* strlist; /* list of strings */
	TypeInfo* typeinfo; /* structured type information */
    vector<TypeInfo>* typelist; /* list of type information */
	DeclaratorInfo* declinfo; /* declarator information */
	vector<DeclaratorInfo*>* decllist; /* list of declarators */
}


%token INT FLOAT CHAR VOID IF ELSE FOR WHILE DO UNTIL BREAK CONTINUE SWITCH CASE DEFAULT SIZEOF STATIC GOTO

%token NULL_LITERAL INVALID
%token INCREMENT DECREMENT
%token ARROW LEFT_SHIFT RIGHT_SHIFT
%token LOGICAL_AND LOGICAL_OR EQ NEQ LE GE
%token PLUS MINUS STAR DIVIDE MOD ASSIGN LT GT LOGICAL_NOT BIT_AND BIT_OR BIT_XOR BIT_NOT DOT
%token COLON SEMICOLON COMMA LBRACE RBRACE LPAREN RPAREN LBRACKET RBRACKET
%token STRUCT RETURN 
%token <sval> IDENTIFIER
%token <ival> INT_LITERAL 
%token <fval> FLOAT_LITERAL
%token <sval> STRING_LITERAL CHAR_LITERAL
%type <declinfo> direct_declarator
%type<typeinfo> return_types
%type<typeinfo> declaration_specifiers
%type<typeinfo> type_specifier
%type<decllist> init_declarator_list
%type<declinfo> init_declarator
%type<declinfo> declarator
%type<declinfo> fun_declarator
%type<declinfo> fun_direct_declarator

%type<typeinfo> parameter_declaration
%type<declinfo> parameter_declarator
%type<declinfo> parameter_direct_declarator


%type<strlist> declaration_list
%type <typeinfo> pointer
%type<sval> struct_specifier
%type<sval> struct

%type<sval> struct_declarator
%type<strlist> struct_declarator_list
%type<ival> constant_expression
%type<typeinfo> primary_expression
%type<typeinfo> postfix_expression
%type<typeinfo> unary_expression
%type<typeinfo> cast_expression
%type<typeinfo> multiplicative_expression
%type<typeinfo> additive_expression
%type<typeinfo> shift_expression
%type<typeinfo> relational_expression
%type<typeinfo> equality_expression
%type<typeinfo> and_expression
%type<typeinfo> exclusive_or_expression
%type<typeinfo> inclusive_or_expression
%type<typeinfo> logical_and_expression
%type<typeinfo> logical_or_expression
%type<typeinfo> conditional_expression
%type<typeinfo> assignment_expression
%type<typeinfo> expression
%type<typeinfo> initializer
%type<strlist> initializer_list // ignore it for now
%type<sval> assignment_operator
%type<sval> unary_operator
%type<strlist> argument_expression_list
%type<typelist> parameter_list




%%
start
	: global_declaration                        /* e.g., int x; */ 
	| start global_declaration                   /* e.g., int x; float y; */
    ;

//---------------------------------------- Declarations --------------------------------------------------

global_declaration
	: function_definition                        
	| declaration                                	
    ;

function_definition
	: return_types fun_declarator compound_statement               /* e.g., int f() { ... } */  
	| return_types fun_declarator SEMICOLON				/* e.g., int f(); */
	;

declaration
	: return_types SEMICOLON { delete $1; }                                   /* e.g., extern int; (rare)*/ 
	| return_types init_declarator_list SEMICOLON {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *$2) {
			TypeInfo combinedType = *$1;  // Start with base type
			
			// Add declarator-specific type information
			combinedType.isPointer = declInfo->isPointer;
			combinedType.pointerCount = declInfo->pointerCount;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			
			// Type check initialization if present
			if (declInfo->initType != nullptr) {
				if (!check_initialization_compatibility(combinedType, *declInfo->initType)) {
					yyerror(("Type mismatch in initialization of variable " + declInfo->name).c_str());
				}
			}
			
			// Insert into symbol table with native value storage
			insert_symbol(declInfo->name, combinedType, declInfo->initType);
			
			// Clean up initType after insertion
			if (declInfo->initType != nullptr) {
				delete declInfo->initType;
			}
			delete declInfo;
		}
		delete $1;
		delete $2;
	}                                 /* e.g., int x, *p = NULL, arr[10] = {0}; */

    ;

//------------------------------------------- Return types --------------------------------------------------

return_types 
	: declaration_specifiers { $$ = $1; }
	;

declaration_specifiers
	: type_specifier { $$ = $1; }                                             /* e.g., int */
	| STATIC type_specifier { 
		$$ = $2;
		$$->isStatic = true;
	}                                     /* e.g., static int */
	;
    

type_specifier
    : VOID { 
        $$ = new TypeInfo(); 
        $$->baseType = "void"; 
    }
    | CHAR { 
        $$ = new TypeInfo(); 
        $$->baseType = "char"; 
    }
    | INT { 
        $$ = new TypeInfo(); 
        $$->baseType = "int"; 
    }
    | FLOAT { 
        $$ = new TypeInfo(); 
        $$->baseType = "float"; 
    }
    | struct_specifier { 
        $$ = new TypeInfo(); 
        $$->baseType = *$1;
        delete $1;
    }

    ;





//-------------------------------------------------- Declarators --------------------------------------------------

init_declarator_list					// a=3,b=&x,c,*d=x,&y=NULL
    : init_declarator { 
        $$ = new vector<DeclaratorInfo*>();
        $$->push_back($1);
    }
    | init_declarator_list COMMA init_declarator {
        $$ = $1;
        $$->push_back($3);
    }
    ;


init_declarator
	: declarator { $$ = $1; }                                                  /* e.g., x */ 
	| declarator ASSIGN initializer { 
		$$ = $1;
		$$->initType = $3;  // Store the initializer's type for later checking
	}                                 /* e.g., x = 5 */ 
	;


// ACTUALLY POINTER IS ONLY pointer -> ****
declarator
	: pointer direct_declarator {                                 /* e.g., *p or int *p */ 
		$$ = $2;
		// Combine pointer info with declarator info
		$$->isPointer = $1->isPointer || $$->isPointer;
		$$->pointerCount += $1->pointerCount;
		delete $1;
	}
	| direct_declarator {                                         /* e.g., x */ 
		$$ = $1;
	}
	;


direct_declarator
	: IDENTIFIER {                                                 /* e.g., x */  
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		delete $1;
	}
	| direct_declarator LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] */
		$$ = $1;
		$$->isArray = true;
		$$->arrayDimensions.push_back($3);  // Direct integer literal
	}
	| direct_declarator LBRACKET RBRACKET {                        /* e.g., arr[] */
		$$ = $1;
		$$->isArray = true;
		$$->arrayDimensions.push_back(-1);  // -1 indicates unknown size
	}
	;


fun_declarator
  	: pointer fun_direct_declarator
	| fun_direct_declarator 
	;


fun_direct_declarator // KRISH - heirarchy mei yahan se upar upar walon ka kuch karna hai, maybe ek naya table hii banalu, with functions name along with their return types and params
	: IDENTIFIER LPAREN parameter_list RPAREN          		/* e.g., f(int a, float b) */ 
	| IDENTIFIER LPAREN RPAREN                               /* e.g., f() (function with unspecified params) */
	;


//------------------------ It will be used in compound statements - that means start of compound statement will be definitions list only -----------------------------
declaration_list
	: declaration                                                          
	| declaration_list declaration       
	| /* empty */   // added baad mei                                   
	;




//--------------------------------- Initializers -> RHS of assignment expressions -----------------------------------------------------

initializer
	: assignment_expression { $$ = $1; }  //Basically any expression                                            
	| LBRACE initializer_list RBRACE {  //KRISH - pending alloca
		// For array initializers, create a placeholder type
		$$ = new TypeInfo();
		$$->baseType = "array_init";
		$$->value = "array_initializer";
	}                                       /* e.g., {1,2,3} or {{1,2},{4,6}} - For arrays */
	| LBRACE initializer_list COMMA RBRACE { 
		// For array initializers with trailing comma
		$$ = new TypeInfo();
		$$->baseType = "array_init";
		$$->value = "array_initializer";
	}                                 /* e.g., {1,2,} */
	;

initializer_list
	: initializer                                                         /* e.g., 1 */
	| initializer_list COMMA initializer                                   /* e.g., 1, 2 */
	;


parameter_list
	: parameter_declaration                                              /* e.g., int a */{
        $$ = new vector<TypeInfo>();
        $$->push_back(*$1);
        delete $1;
    }
	| parameter_list COMMA parameter_declaration                          /* e.g., int a, float b */{
        $$ = $1;
        $$->push_back(*$3);
        delete $3;
    }
	;

parameter_declaration
	: return_types parameter_declarator                                             /* e.g., int x */ {
        // Combine base type with declarator-specific type info
        TypeInfo* combinedType = new TypeInfo(*$1);  // Start with base type
        
        // Add declarator-specific type information
        combinedType->isPointer = $2->isPointer;
        combinedType->pointerCount = $2->pointerCount;
        combinedType->isArray = $2->isArray;
        combinedType->arrayDimensions = $2->arrayDimensions;
        
        // Insert parameter into symbol table
        insert_symbol($2->name, *combinedType);
        $$ = combinedType; // KRISH : LETS SEE KUCH DELETE KARNA THA YA NHI DK
        delete $1;
        delete $2;
    }
    ;

parameter_declarator
	: pointer parameter_direct_declarator {                                 /* e.g., *p or int *p */ 
		$$ = $2;
		// Combine pointer info with declarator info
		$$->isPointer = $1->isPointer || $$->isPointer;
		$$->pointerCount += $1->pointerCount;
		delete $1;
	}
	| parameter_direct_declarator {                                         /* e.g., x */ 
		$$ = $1;
	}
	;


parameter_direct_declarator
	: IDENTIFIER {                                                 /* e.g., x */  
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		delete $1;
	}
	;


//------------------------ Simply expressions - used in RHS of initializers -----------------------------------------------------

primary_expression
    : IDENTIFIER { 
        check_variable_declaration(*$1);
        SymbolEntry entry;
        if (lookup_symbol(*$1, entry)) {
            $$ = new TypeInfo(entry.type);  // Copy type from symbol table
            $$->value = *$1;  // Store identifier name as value
            
            // Copy the stored value from the scope's value storage
            if (entry.isInitialized && !scope_stack.empty()) {
                // Find the scope that contains this symbol
                for (auto& scope : scope_stack) {
                    if (scope.scope_level == entry.scope_level) {
                        // Copy the stored value based on type
                        if (entry.type.baseType == "int") {
                            int stored_val = scope.getValue<int>(entry.value_offset);
                            $$->setIntValue(stored_val);
                        } else if (entry.type.baseType == "float") {
                            float stored_val = scope.getValue<float>(entry.value_offset);
                            $$->setFloatValue(stored_val);
                        } else if (entry.type.baseType == "char") {
                            char stored_val = scope.getValue<char>(entry.value_offset);
                            $$->setCharValue(stored_val);
                        } 
                        break;
                    }
                }
            }
            
            //cout<<"MEOW : Found variable:  " << *$1 << " of type " << $$->toString() << " and value offset " << entry.value_offset;
            if ($$->has_native_value) {
                cout << " with stored value: ";
                displayNativeValue(*$$, *$$);
            }
            cout << "\n";
        } else {
            $$ = new TypeInfo();
            $$->baseType = "error";
            $$->value = *$1;
        }
        delete $1;
    }                                        
    | INT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "int";
        $$->setIntValue($1);  // Direct native assignment!
    }
    | FLOAT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "float";
        $$->setFloatValue($1);  // Direct native assignment!
    }
    | CHAR_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "char";
        $$->setCharValue((*$1)[1]);  // Extract char from 'c' format directly
        delete $1;
    }
    | STRING_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "string";
        $$->setStringValue(*$1);  // Direct string assignment!
        delete $1;
    }
	| NULL_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "null";
        $$->setIntValue(0);  // NULL as integer 0
    }
    | LPAREN expression RPAREN { 
        $$ = $2;  // Pass through the expression type
    }
    ;

postfix_expression
	: primary_expression                                      /* e.g., x */
	| postfix_expression LBRACKET expression RBRACKET              /* e.g., arr[i] */{
        // Type checking for array access
        TypeInfo* baseType = $1;
        TypeInfo* indexType = $3;
        if (!baseType->isArray) {
            yyerror("Type error: Attempting to index a non-array type");
            $$ = new TypeInfo();
            $$->baseType = "error";
            return;
        }
        if (indexType->baseType != "int") {
            yyerror("Type error: Array index must be of integer type");
            $$ = new TypeInfo();
            $$->baseType = "error";
            return;
        }
        // Resulting type is the base type of the array, removing one dimension
        $$ = new TypeInfo(*baseType);
        if (!$$->arrayDimensions.empty()) {
            $$->arrayDimensions.erase($$->arrayDimensions.begin());
            if ($$->arrayDimensions.empty()) {
                $$->isArray = false; // No more array dimensions
            }
        } else {
            $$->isArray = false; // Safety check
        }
        // Value is now an indexed expression
        $$->value = baseType->value + "[" + indexType->value + "]";
        delete $1;
        delete $3;
    }

	| postfix_expression LPAREN RPAREN                               /* e.g., func() */
	| postfix_expression LPAREN argument_expression_list RPAREN      /* e.g., func(a,b) */
	| postfix_expression DOT IDENTIFIER                            /* e.g., obj.field */
	| postfix_expression ARROW IDENTIFIER                             /* e.g., ptr->field */
	| postfix_expression INCREMENT                                  /* e.g., x++ */
	| postfix_expression DECREMENT                                 /* e.g., x-- */
	;

argument_expression_list
	: assignment_expression                                         /* e.g., x */
	| argument_expression_list COMMA assignment_expression           /* e.g., x, y */
	;

unary_expression
	: postfix_expression                                             /* e.g., x */
	| INCREMENT unary_expression                                        /* e.g., ++x */
	| DECREMENT unary_expression                                       /* e.g., --x */
	| unary_operator cast_expression                                /* e.g., -y or &z */
	| SIZEOF unary_expression                                       /* e.g., sizeof x */
	| SIZEOF LPAREN type_specifier RPAREN                                 /* e.g., sizeof(int) */
	;

unary_operator
	: BIT_AND                                                    {   $$ = new string("&"); }                                   /* e.g., &x */
	| STAR                                                             {   $$ = new string("*"); }                                   /* e.g., *p */
	| PLUS                                                             {   $$ = new string("+"); }                                   /* e.g., +x */
	| MINUS                                                             {   $$ = new string("-"); }                                   /* e.g., -x */
	| BIT_NOT                                                             {   $$ = new string("~"); }                                   /* e.g., ~x */
	| LOGICAL_NOT                                                            {   $$ = new string("!"); }                                   /* e.g., !x */
	;

cast_expression
	: unary_expression                                              /* e.g., x */
	| LPAREN type_specifier RPAREN cast_expression                         /* e.g., (int) x */
	;

multiplicative_expression
	: cast_expression                                               /* e.g., a */
	| multiplicative_expression STAR cast_expression                     /* e.g., a * b */
	| multiplicative_expression DIVIDE cast_expression                   /* e.g., a / b */
	| multiplicative_expression MOD cast_expression                    /* e.g., a % b */
	;

additive_expression
	: multiplicative_expression                                   /* e.g., a */
	| additive_expression PLUS multiplicative_expression                  /* e.g., a + b */
	| additive_expression MINUS multiplicative_expression                /* e.g., a - b */
	;

shift_expression
	: additive_expression                                             /* e.g., a */
	| shift_expression LEFT_SHIFT additive_expression                     /* e.g., a << b */
	| shift_expression RIGHT_SHIFT additive_expression                     /* e.g., a >> b */
	;

relational_expression
	: shift_expression { /*$$ = $1;*/ }                                                  /* e.g., a */
	| relational_expression LT shift_expression                            /* e.g., a < b */
	| relational_expression GT shift_expression                            /* e.g., a > b */
	| relational_expression LE shift_expression                           /* e.g., a <= b */
	| relational_expression GE shift_expression                           /* e.g., a >= b */
	;

equality_expression
	: relational_expression                                            /* e.g., a */
	| equality_expression EQ relational_expression                  /* e.g., a == b */
	| equality_expression NEQ relational_expression                     /* e.g., a != b */
	;

and_expression
	: equality_expression                                          /* e.g., a */
	| and_expression BIT_AND equality_expression                               /* e.g., a & b */
	;

exclusive_or_expression
	: and_expression                                              /* e.g., a */
	| exclusive_or_expression BIT_XOR and_expression                          /* e.g., a ^ b */
	;

inclusive_or_expression
	: exclusive_or_expression                                      /* e.g., a */
	| inclusive_or_expression BIT_OR exclusive_or_expression                    /* e.g., a | b */
	;

logical_and_expression
	: inclusive_or_expression                                /* e.g., a */
	| logical_and_expression LOGICAL_AND inclusive_or_expression                 /* e.g., a && b */
	;

logical_or_expression
	: logical_and_expression                                      /* e.g., a */
	| logical_or_expression LOGICAL_OR logical_and_expression                   /* e.g., a || b */
	;

conditional_expression
	: logical_or_expression                                            /* e.g., x */ 
	;

assignment_expression
	: conditional_expression { /*$$ = $1;*/ }                                            /* e.g., x */
	| unary_expression assignment_operator assignment_expression { 
		// Type checking for assignment
		// for now consider lhs is only identifier , so get its type from symbol table
		TypeInfo* lhs_type = $1;
		TypeInfo* rhs_type = $3;
		if (!check_initialization_compatibility(*lhs_type, *rhs_type)) {
			yyerror("Type mismatch in assignment");
		}
		$$ = rhs_type;  // Result type is the RHS type
	}                                 /* e.g., x += 5 */
	;

assignment_operator
	: ASSIGN                                                            /* = */
	;

expression
	: assignment_expression { /*$$ = $1;*/ }                                             /* e.g., x = 1 */
	| expression COMMA assignment_expression { /*$$ = $1; delete $3;*/ }                               /* e.g., x = 1, y = 2 */
	;

constant_expression
	: conditional_expression { /*$$ = $1;*/ }                           /* e.g., (1+2) - For now, return 0 */
	;





// -------------------------------------------- Structs and Enums -----------------------------------------------------

struct_specifier
	: struct IDENTIFIER LBRACE struct_declaration_list RBRACE {  // e.g., struct S { int x; float y; };
		$$ = new string(*$1 + " " + *$2);
		delete $1; delete $2;
	}   /* e.g., struct S { int x; };*/  
	| struct IDENTIFIER { 
		$$ = new string(*$1 + " " + *$2);
		delete $1; delete $2;
	}                                           /* e.g., struct S */ 
	;

struct
	: STRUCT { $$ = new string("struct"); }                                                            /* struct */											 						 						
	;

struct_declaration_list
	: struct_declaration                                               /* e.g., int x; */
	| struct_declaration_list struct_declaration                         /* e.g., int x; float y; */
	;

// NO STATIC WAS ALLOWED IN C STRUCTS
struct_declaration
	: type_specifier struct_declarator_list SEMICOLON         /* e.g., int x, *p; */ 
	;

struct_declarator_list
	: struct_declarator                                                 /* e.g., x */ 
	| struct_declarator_list COMMA struct_declarator                      /* e.g., x, y */
	;

struct_declarator
	: declarator { $$ = new string($1->name); delete $1; }                /* e.g., x */ 
	;




//---------------------------------------- Pointers --------------------------------------------------

//KRISH : Still multi dimensional pointers and arrays are not basic feature

pointer
    : STAR {                                   /* e.g., * */
        $$ = new TypeInfo();
        $$->isPointer = true;
        $$->pointerCount = 1;
    }
    | STAR pointer {                          /* e.g., **, ***, etc. */
        $$ = $2;
        $$->pointerCount++;
    }
	
    ;


//---------------------------------------- Statements --------------------------------------------------


statement
	: labeled_statement                                                    /* e.g., label: stmt */
	| compound_statement                                                   /* e.g., { ... } */
	| expression_statement                                                 /* e.g., x = 1; */
	| selection_statement                                                  /* e.g., if(expr) stmt */
	| iteration_statement                                                  /* e.g., while(expr) stmt */
	| jump_statement                                                        /* e.g., return 0; */
	| error SEMICOLON { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
	;


labeled_statement
	: IDENTIFIER COLON statement                                            /* e.g., label: stmt */
	| CASE constant_expression COLON statement                              /* e.g., case 1: stmt */
	| DEFAULT COLON statement                                               /* e.g., default: stmt */
	;

compound_statement
	//: LBRACE { enter_scope(); } RBRACE { exit_scope(); }                                                        /* e.g., {} */
	//| LBRACE { enter_scope(); } statement_list RBRACE { exit_scope(); }                                         /* e.g., { stmt; } */
	//| LBRACE { enter_scope(); } declaration_list RBRACE { exit_scope(); }                                       /* e.g., { int a; } */
	: LBRACE { enter_scope(); } declaration_list statement_list RBRACE { exit_scope(); }                        /* e.g., { int a; stmt; } */
	;

statement_list
	: statement                                                            /* e.g., stmt */
	| statement_list statement                                               /* e.g., stmt; stmt; */
	| /* empty */   // added baad mei                                                /* e.g., (empty) */
	;

expression_statement
	: SEMICOLON                                                             /* e.g., ; (empty statement) */
	| expression SEMICOLON                                                  /* e.g., x = 1; */
	;

selection_statement
	: IF LPAREN expression RPAREN statement                                 /* e.g., if (x) stmt */
	| IF LPAREN expression RPAREN statement ELSE statement                   /* e.g., if (x) stmt else stmt */
	| SWITCH LPAREN expression RPAREN statement                              /* e.g., switch (x) { ... } */
	;

iteration_statement
	: WHILE LPAREN expression RPAREN statement                               /* e.g., while (cond) stmt */
	| UNTIL LPAREN expression RPAREN statement                               /* e.g., while (cond) stmt */
	| DO statement WHILE LPAREN expression RPAREN SEMICOLON                  /* e.g., do { } while(cond); */
	| FOR LPAREN expression_statement expression_statement RPAREN statement   /* e.g., for (init; cond; ) stmt */
	| FOR LPAREN expression_statement expression_statement expression RPAREN statement /* e.g., for (init; cond; incr) stmt */
	;

jump_statement
	: GOTO IDENTIFIER SEMICOLON                                              /* e.g., goto label; */
	| CONTINUE SEMICOLON                                                     /* e.g., continue; */
	| BREAK SEMICOLON                                                        /* e.g., break; */
	| RETURN SEMICOLON                                                       /* e.g., return; */
	| RETURN expression SEMICOLON                                            /* e.g., return x; */
	;

%%

void enter_scope() {
    current_scope_level++;
    scope_stack.emplace_back(current_scope_level);
    cout << "Entering scope level " << current_scope_level << "\n";
}

void displaySymbolTable();

void exit_scope() {
    if (!scope_stack.empty()) {
        auto& current_scope = scope_stack.back();
        cout << "Exiting scope level " << current_scope_level 
             << " (freeing " << current_scope.value_storage.size() 
             << " bytes of value storage)\n";
        
        displaySymbolTable(); // Display current symbol table before destruction
        
        // Display symbols being destroyed
        if (!current_scope.symbols.empty()) {
            cout << "Destroying symbols from scope " << current_scope_level << ":\n";
            for (const auto& entry : current_scope.symbols) {
                cout << "  - " << entry.second.name << " (" << entry.second.type.toString() << ")\n";
            }
        }
        
        scope_stack.pop_back();  // Automatically frees the scope's value storage
        current_scope_level--;
    }
}

void* parseInitialValue(const TypeInfo& type, const TypeInfo& initType) {
    if (!initType.has_native_value) return nullptr;
    
    if (type.baseType == "int") {
        int* val = new int(initType.getIntValue());
        return val;
    } else if (type.baseType == "float") {
        float* val = new float(initType.getFloatValue());
        return val;
    } else if (type.baseType == "char") {
        char* val = new char(initType.getCharValue());
        return val;
    } else if (type.baseType == "string") {
        string str = initType.getStringValue();
        char* val = new char[str.length() + 1];
        strcpy(val, str.c_str());
        return val;
    }
    return nullptr;
}

void displayNativeValue(const TypeInfo& type, const TypeInfo& valueType) {
    if (!valueType.has_native_value) {
        cout << "(no value)";
        return;
    }
    
    if (type.baseType == "int") {
        cout << valueType.getIntValue();
    } else if (type.baseType == "float") {
        cout << valueType.getFloatValue();
    } else if (type.baseType == "char") {
        cout << "'" << valueType.getCharValue() << "'";
    } else if (type.baseType == "string") {
        cout << "\"" << valueType.getStringValue() << "\"";
    }
}

// Write nhi kar raha hai storage mei, bas allocate kar raha hai
void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType) {

	if (initType && initType->has_native_value) { // Vese agar type hai toh value bhi hogi hii
		displayNativeValue(type, *initType);
		cout<<"\n";
	}

    if (scope_stack.empty()) {
        enter_scope();
    }
    
    auto& current_scope = scope_stack.back();
    
    // Check for redeclaration
    if (current_scope.symbols.find(name) != current_scope.symbols.end()) {
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' already declared in current scope\n";
        return;
    }
    
    SymbolEntry entry;
    entry.name = name;
    entry.type = type;
    entry.line = yylineno;
    entry.scope_level = current_scope_level;
    entry.isInitialized = ((initType != nullptr) && (initType->has_native_value));
	
    // ALWAYS allocate storage space
    if (entry.isInitialized) {
		//cout<<"INITIALIZED\n";
        // Parse and store the initial value using native types
        void* parsed_value = parseInitialValue(type, *initType);
        if (parsed_value) {
            entry.value_offset = current_scope.allocateVariable(type, parsed_value);
            // Free temporary storage based on type
            if (type.baseType == "string") {
                delete[] (char*)parsed_value;
            } else {
                delete parsed_value;
            }
        } else {
            // KRISH
            entry.value_offset = current_scope.allocateVariable(type, nullptr);
        }
    } else {
        // Allocate with zeros
        entry.value_offset = current_scope.allocateVariable(type, nullptr);
    }
    
    entry.value_size = current_scope.getTypeSize(type);
    current_scope.symbols[name] = entry;
    
    cout << "Allocated variable: " << name << " (" << type.toString() 
         << ") at offset " << entry.value_offset 
         << ", size " << entry.value_size << " bytes";
    if (entry.isInitialized) {
        cout << " = ";
        displayNativeValue(type, *initType);
    } else {
        cout << " (initialized to zeros)";
    }
    cout << " at line " << yylineno << " in scope " << current_scope_level << "\n";
}

bool lookup_symbol(const string& name, SymbolEntry& entry) {
    // Search from current scope to global scope
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        auto it = scope_stack[i].symbols.find(name);
        if (it != scope_stack[i].symbols.end()) {
            entry = it->second;
            return true;
        }
    }
    return false;
}

bool lookup_symbol_current_scope(const string& name) {
    if (scope_stack.empty()) return false;
    return scope_stack.back().symbols.find(name) != scope_stack.back().symbols.end();
}


void check_variable_declaration(const string& name) {
	//cout<<"MEOW : Searching for variable:  " << name << "\n";
    SymbolEntry entry;
    if (!lookup_symbol(name, entry)) {
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' used but not declared\n";
    } else {
        cout << "Variable '" << name << "' found: declared as " 
             << entry.type.toString() << " at line " << entry.line 
             << " in scope " << entry.scope_level;
        if (entry.isInitialized) {
            cout << " (initialized)";
        } else {
            cout << " (default zeros)";
        }
        cout << " [Offset: " << entry.value_offset 
             << ", Size: " << entry.value_size << " bytes]\n";
    }
}

void displayVariableValue(const SymbolEntry& entry, const ScopeContext& scope) {
    cout << "  - " << entry.name << " (" << entry.type.toString() << ") ";
    
    try {
        if (entry.type.baseType == "int") {
            int val = scope.getValue<int>(entry.value_offset);
            cout << "= " << val;
            if (!entry.isInitialized && val == 0) cout << " (default)";
            cout << " [Dec: " << val << ", Hex: 0x" << hex << val << dec << "]";
            
        } else if (entry.type.baseType == "float") {
            float val = scope.getValue<float>(entry.value_offset);
            cout << "= " << val;
            if (!entry.isInitialized && val == 0.0f) cout << " (default)";
            
        } else if (entry.type.baseType == "char") {
            char val = scope.getValue<char>(entry.value_offset);
            cout << "= ";
            if (val >= 32 && val <= 126) {
                cout << "'" << val << "'";
            } else {
                cout << "'\\x" << hex << (int)(unsigned char)val << dec << "'";
            }
            if (!entry.isInitialized && val == '\0') cout << " (default)";
            cout << " [ASCII: " << (int)(unsigned char)val << "]";
            
        } else {
            cout << "= <unsupported type>";
        }
    } catch (const exception& e) {
        cout << "= <error reading value: " << e.what() << ">";
    }
    
    cout << " [Offset: " << entry.value_offset 
         << ", Size: " << entry.value_size << " bytes]\n";
}

void displaySymbolTable() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                            SYMBOL TABLE WITH VALUE STORAGE                            |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (scope_stack.empty()) {
        cout << "| No active scopes                                                                    |\n";
        cout << "+-----------------------------------------------------------------------------------------+\n";
        return;
    }
    
    for (int i = 0; i < scope_stack.size(); i++) {
        auto& scope = scope_stack[i];
        cout << "\n+- SCOPE LEVEL " << scope.scope_level << " ";
        cout << string(55 - to_string(scope.scope_level).length(), '-') << "+\n";
        cout << "| Storage: " << scope.value_storage.size() << " bytes, Next offset: " << scope.next_offset << string(50, ' ') << "|\n";
        
        if (scope.symbols.empty()) {
            cout << "| (empty scope)                                                                       |\n";
            cout << "+-----------------------------------------------------------------------------------------+\n";
            continue;
        }
        
        cout << "+-----------------------------------------------------------------------------------------+\n";
        
        // Display variables with their values
        for (const auto& entry : scope.symbols) {
            displayVariableValue(entry.second, scope);
        }
        cout << "+-----------------------------------------------------------------------------------------+\n";
    }
}

// Type checking functions
bool types_compatible(const TypeInfo& left_type, const TypeInfo& right_type) {
    // Check base types match (ignoring const/static as requested)
    if (left_type.baseType != right_type.baseType) return false;
    
    // Check pointer compatibility 
    if (left_type.pointerCount != right_type.pointerCount) return false;
    
    // Check array dimensions if both are arrays
    if (left_type.arrayDimensions.size() != right_type.arrayDimensions.size()) return false;
    
    // For arrays, check each dimension (for direct assignment compatibility)
    for (size_t i = 0; i < left_type.arrayDimensions.size(); i++) {
        if (left_type.arrayDimensions[i] != right_type.arrayDimensions[i]) return false;
    }
    
    return true;
}

TypeInfo* get_expression_type(const string& identifier) {
    // Search for the identifier in the symbol table from current scope up
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        auto it = scope_stack[i].symbols.find(identifier);
        if (it != scope_stack[i].symbols.end()) {
            return &(it->second.type);
        }
    }
    return nullptr; // Not found
}

TypeInfo* lookup_typeinfo_by_name(const string& name) {
    // Search from current scope to global scope for a matching identifier name
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        for (auto& entry : scope_stack[i].symbols) {
            if (entry.second.name == name) {
                return &(entry.second.type);
            }
        }
    }
    return nullptr; // Not found
}

bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type) {
    // For primary expressions (as requested), check basic compatibility
    return types_compatible(var_type, init_type);
}

bool check_literal_type(const string& value, const string& expected_base_type) {
    if (expected_base_type == "int") {
        // Check if value is an integer literal
        for (char c : value) {
            if (!isdigit(c) && c != '-' && c != '+') return false;
        }
        return true;
    } else if (expected_base_type == "float") {
        // Check if value is a float literal
        bool has_dot = false;
        for (char c : value) {
            if (c == '.') {
                if (has_dot) return false; // Multiple dots
                has_dot = true;
            } else if (!isdigit(c) && c != '-' && c != '+') {
                return false;
            }
        }
        return true;
    } else if (expected_base_type == "char") {
        // Check if value is a character literal
        return value.length() >= 3 && value[0] == '\'' && value[value.length()-1] == '\'';
    }
    return false;
}



int main(int argc, char** argv) {
    
	if (argc != 2) {
		fprintf(stderr, "Usage: %s <input_file>\n", argv[0]);
		return 1;
	}
	
	FILE* f = fopen(argv[1], "r");
	if (!f) {
		perror("fopen");
		return 1;
	}

	yyin = f;
	cout << "Starting parser...\n";
	
	// Initialize global scope
	enter_scope();
	
	int res = yyparse();
	cout << "yyparse() returned " << res << "\n";
	
	// Display the new scope-based symbol table
	displaySymbolTable();
	
	// Clean up all remaining scopes
	while (!scope_stack.empty()) {
		exit_scope();
	}
	
	fclose(f);
	return res;
}
