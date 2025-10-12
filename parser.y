%{
#include <bits/stdc++.h>
#include<iomanip>
using namespace std;

/* Make sure yylex is visible as a C function */
extern "C" int yylex(void);
extern FILE* yyin;
extern int yylineno;

// Error logging file
static ofstream error_log;
static string error_log_filename;

static void yyerror(const char* s) {
    string error_msg = "Parse error at line " + to_string(yylineno) + ": " + string(s);
    cerr << error_msg << "\n";
    
    // Also log to error file
    if (error_log.is_open()) {
        error_log << error_msg << "\n";
        error_log.flush();
    }
}

%}

%code requires {
    #include <bits/stdc++.h>
    using namespace std;
    
    // Type information for semantic checking and 3-address code generation
    struct TypeInfo {
        bool isStatic;
        string baseType;        // int, char, float, void, struct_name, etc.
        bool isPointer;
        bool isArray;
        int arraySize;
        string identifier;      // For expressions that reference variables
        bool isLiteral;         // True for literals, false for variables/expressions
        
        TypeInfo() : isStatic(false), baseType(""), 
                     isPointer(false), isArray(false), 
                     arraySize(0), identifier(""), isLiteral(false) {}
        
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), isPointer(other.isPointer), 
                    isArray(other.isArray), arraySize(other.arraySize),
                    identifier(other.identifier), isLiteral(other.isLiteral) {}
        
        string toString() const {
            string result = "";
            if (isStatic) result += "static ";
            result += baseType;
            if( isPointer ) {
                result+="*";
            }
            if (isArray) {
                result += "[" + to_string(arraySize) + "]";
            }
            return result;
        }
    };

    // Scope context for semantic checking
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        int scope_level;
        
        ScopeContext(int level) : scope_level(level) {}
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable/function name
        bool isPointer;
        bool isArray;
        int arraySize;
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        // Function-specific information
        bool isFunction;        // True if this is a function declarator
        vector<TypeInfo>* paramTypes;  // Parameter types for functions
        
        DeclaratorInfo() : name(""), isPointer(false), 
                          isArray(false), initValue(""), initType(nullptr), arraySize(0),
                          isFunction(false), paramTypes(nullptr) {}
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;
        TypeInfo type;
        int line;
        int scope_level;
        
        SymbolEntry() : line(0), scope_level(0) {}
    };
    
    // Function parameter structure
    struct FunctionParam {
        string name;
        TypeInfo type;
        
        FunctionParam(const string& n, const TypeInfo& t) : name(n), type(t) {}
    };
    
    // Function symbol table entry
    struct FunctionEntry {
        string originalName;      // Original function name (e.g., "foo")
        string mangledName;       // Mangled name (e.g., "foo_i_pc_f")
        TypeInfo returnType;      // Return type
        vector<FunctionParam> parameters;  // Parameter list
        int line;                 // Declaration line
        
        FunctionEntry() : line(0) {}
    };
}

%code {
    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;
    
    // Function symbol table
    map<string, FunctionEntry> function_table;
    
    // Current function parameter information (for proper scoping)
    vector<pair<string, TypeInfo>> current_function_parameters;

    // Function declarations for scope management
    void enter_scope();
    void exit_scope();
    void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType = nullptr);
    bool lookup_symbol(const string& name, SymbolEntry& entry);
    bool lookup_symbol_current_scope(const string& name);
    void check_variable_declaration(const string& name);
    
    // Type checking and promotion functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    TypeInfo* promote_types(const TypeInfo& left, const TypeInfo& right);
    bool is_numeric_type(const string& type);
    bool is_integer_type(const string& type);
    bool is_lvalue(const TypeInfo& expr);
    bool is_implicit_conversion_allowed(const TypeInfo& from, const TypeInfo& to);
    bool is_narrowing_conversion(const TypeInfo& from, const TypeInfo& to);
    TypeInfo* perform_binary_operation(const TypeInfo& left, const TypeInfo& right, const string& op);
    TypeInfo* perform_unary_operation(const TypeInfo& operand, const string& op);
    void type_error(const string& message);
    void type_warning(const string& message);
    
    // Error logging functions
    void init_error_log(const string& filename);
    void close_error_log();
    void log_error(const string& message);
    
    // Function management functions
    string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes);
    TypeInfo array_to_pointer_conversion(const TypeInfo& type);
    void insert_function(const string& name, const TypeInfo& returnType, const vector<TypeInfo>& paramTypes);
    FunctionEntry* lookup_function(const string& name, const vector<TypeInfo>& argTypes);
    bool is_function_name(const string& name);
    bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params);
    void display_function_table();
    void insert_current_function_parameters();
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
%type<typeinfo> cast_type_specifier
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
%type<typeinfo> initializer_list // ignore it for now
%type<sval> unary_operator
%type<typelist> argument_expression_list
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
	: return_types fun_declarator compound_statement {               /* e.g., int f() { ... } */
		// Register function definition
		TypeInfo returnType = *$1;
		if ($2->isPointer) {
			returnType.isPointer = true;
		}
		
		if ($2->isFunction && $2->paramTypes) {
			insert_function($2->name, returnType, *$2->paramTypes);
			cout << "Function definition: " << $2->name << " registered\n";
		}
		
		// Clean up
		if ($2->paramTypes) delete $2->paramTypes;
		delete $1;
		delete $2;
	}
	
	;

/*
| return_types fun_declarator SEMICOLON {				
		// Register function declaration
		TypeInfo returnType = *$1;
		if ($2->isPointer) {
			returnType.isPointer = true;
		}
		
		if ($2->isFunction && $2->paramTypes) {
			insert_function($2->name, returnType, *$2->paramTypes);
			cout << "Function declaration: " << $2->name << " registered\n";
		}
		
		// Clean up
		if ($2->paramTypes) delete $2->paramTypes;
		delete $1;
		delete $2;
	}
*/
declaration
	: return_types SEMICOLON { delete $1; }                                   /* e.g., extern int; (rare)*/ 
	| return_types init_declarator_list SEMICOLON {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *$2) {
			TypeInfo combinedType = *$1;  // Start with base type
			
			// Add declarator-specific type information
			combinedType.isPointer = declInfo->isPointer;
			combinedType.isArray = declInfo->isArray;
			combinedType.arraySize = declInfo->arraySize;
			
			// Type check initialization if present
			if (declInfo->initType != nullptr) {
				if (!check_initialization_compatibility(combinedType, *declInfo->initType)) {
					// Issue a warning instead of error to allow compilation to continue
					string warning_msg = "Type mismatch in initialization of variable '" + 
						declInfo->name + "': cannot convert from " + 
						declInfo->initType->toString() + " to " + combinedType.toString();
					type_warning(warning_msg);
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

cast_type_specifier
    : type_specifier {
        $$ = $1;  // Just a base type like int, float, etc.
    }
    | type_specifier STAR {
        $$ = $1;
        $$->isPointer = true;  // Pointer type like int*, float*, etc.
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
		$$->isPointer = 1;
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
	| IDENTIFIER LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] */ //Single dimensional array only
		$$ = new DeclaratorInfo();
        $$->name = *$1;
        $$->isArray = true;
        $$->arraySize = $3;
        delete $1;
    }

fun_declarator
  	: pointer fun_direct_declarator {
  		$$ = $2;
  		$$->isPointer = true;  // Function returns a pointer
  		delete $1;
  	}
	| fun_direct_declarator {
		$$ = $1;
	} 
	;


fun_direct_declarator // Function declarator that captures parameter information
	: IDENTIFIER LPAREN parameter_list RPAREN {          		/* e.g., f(int a, float b) */
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		$$->isFunction = true;
		$$->paramTypes = new vector<TypeInfo>(*$3);  // Copy parameter types
		cout << "Function declarator: " << $$->name << " with " << $$->paramTypes->size() << " parameters\n";
		delete $1;
		delete $3;
	}
	| IDENTIFIER LPAREN RPAREN {                               /* e.g., f() (function with no params) */
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		$$->isFunction = true;
		$$->paramTypes = new vector<TypeInfo>();  // Empty parameter list
		cout << "Function declarator: " << $$->name << " with no parameters\n";
		delete $1;
	}
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
		$$ = $2;
        $$->isArray = true;
	}                                       /* e.g., {1,2,3} or {{1,2},{4,6}} - For arrays */
	| LBRACE initializer_list COMMA RBRACE { 
		// For array initializers with trailing comma
        $$ = $2;
        $$->isArray = true;
	}                                 /* e.g., {1,2,} */
	;

initializer_list
	: assignment_expression                                                         /* e.g., 1 */{
        $$ = new TypeInfo();
        $$->baseType = $1->baseType;
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( $1->isArray || $1->isPointer || $1->baseType=="string" || $1->baseType=="void" ){
            yyerror("Array initializer can only contain primitive types");
        }
        $$->arraySize = 1; // Single element
        delete $1;
    }
	| initializer_list COMMA assignment_expression                                   /* e.g., 1, 2 */{
        $$ = $1;
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( $3->isArray || $3->isPointer || $3->baseType=="string" || $3->baseType=="void" ){
            yyerror("Array initializer can only contain primitive types");
        }
        // Base type is max of both that is if one is int andd one is float ,then overall is float
        if( $$->baseType=="float" || $3->baseType=="float" ){
            $$->baseType="float";
        }
        else if( $$->baseType=="int" || $3->baseType=="int" ){
            $$->baseType="int";
        }
        else if( $$->baseType=="char" || $3->baseType=="char" ){
            $$->baseType="char";
        }
        $$->arraySize += 1; // Increment array size
        delete $3;
    }
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
        combinedType->isArray = $2->isArray;
        combinedType->arraySize = $2->arraySize;
        
        // Store parameter information for later insertion into function scope
        current_function_parameters.push_back(make_pair($2->name, *combinedType));
        
        $$ = combinedType;
        delete $1;
        delete $2;
    }
    ;

parameter_declarator
	: pointer parameter_direct_declarator {                                 /* e.g., *p or int *p */ 
		$$ = $2;
		// Combine pointer info with declarator info
		$$->isPointer = 1;
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
        // First, check if it's a variable
        if (lookup_symbol(*$1, entry)) {
            $$ = new TypeInfo(entry.type);  // Copy type from symbol table
            $$->identifier = *$1;  // Store identifier name
            $$->isLiteral = false;
            cout << "Found variable: " << *$1 << " of type " << $$->toString() << "\n";
        } 
        // If not a variable, check if it might be a function
        else if (is_function_name(*$1)) {
            $$ = new TypeInfo();
            $$->baseType = "function";  // Mark as function type
            $$->identifier = *$1;       // Store function name
            $$->isLiteral = false;
            cout << "Found function name: " << *$1 << "\n";
        }
        // Otherwise, it's undefined
        else {
            $$ = new TypeInfo();
            $$->baseType = "error";
            $$->identifier = *$1;
            type_error("Undefined variable: " + *$1);
        }
        delete $1;
    }                                        
    | INT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "int";
        $$->isLiteral = true;
        cout << "Integer literal: " << $1 << " (type: int)\n";
    }
    | FLOAT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "float";
        $$->isLiteral = true;
        cout << "Float literal: " << $1 << " (type: float)\n";
    }
    | CHAR_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "char";
        $$->isLiteral = true;
        cout << "Char literal: " << *$1 << " (type: char)\n";
        delete $1;
    }
    | STRING_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "string";
        $$->isLiteral = true;
        cout << "String literal: " << *$1 << " (type: string)\n";
        delete $1;
    }
	| NULL_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "void";
        $$->isPointer = true;  // NULL is a void pointer
        $$->isLiteral = true;
        cout << "NULL literal (type: void*)\n";
    }
    | LPAREN expression RPAREN { 
        $$ = $2;  // Pass through the expression type
    }
    
    ;

postfix_expression
	: primary_expression { $$ = $1; }                                      /* e.g., x */
	| postfix_expression LBRACKET expression RBRACKET {              /* e.g., arr[i] */
		// Array subscripting: arr[i] or ptr[i]
		TypeInfo* base = $1;
		TypeInfo* index = $3;
		
		// Check if base is array or pointer
		if (!base->isArray && !base->isPointer) {
			type_error("Subscript operator [] can only be applied to arrays or pointers");
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (!is_integer_type(index->baseType)) {
			type_error("Array index must be an integer type, got " + index->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			// Result is the base type without array/pointer modifier
			$$ = new TypeInfo(*base);
			$$->isArray = false;
			$$->isPointer = false;
			$$->arraySize = 0;
			$$->isLiteral = false;
			cout << "Array subscript: " << base->toString() << "[" << index->toString() << "] -> " << $$->toString() << "\n";
		}
		delete $1; delete $3;
	}
	| postfix_expression LPAREN RPAREN {                               /* e.g., func() */
		// Function call with no arguments
		TypeInfo* base = $1;
		
		if (!base->identifier.empty()) {
			// Try to resolve function call
			vector<TypeInfo> emptyArgs;
			FunctionEntry* func = lookup_function(base->identifier, emptyArgs);
			
			if (func) {
				$$ = new TypeInfo(func->returnType);
				$$->isLiteral = false;
				cout << "Function call: " << base->identifier << "() -> " << $$->toString() << "\n";
			} else {
				type_error("No matching function found for call to '" + base->identifier + "()'");
				$$ = new TypeInfo();
				$$->baseType = "error";
			}
		} else {
			type_error("Invalid function call expression");
			$$ = new TypeInfo();
			$$->baseType = "error";
		}
		delete $1;
	}
	| postfix_expression LPAREN argument_expression_list RPAREN {      /* e.g., func(a,b) */
		// Function call with arguments
		TypeInfo* base = $1;
		vector<TypeInfo>* argTypes = $3;
		
		if (!base->identifier.empty() && argTypes) {
			// Try to resolve function call
			FunctionEntry* func = lookup_function(base->identifier, *argTypes);
			
			if (func) {
				$$ = new TypeInfo(func->returnType);
				$$->isLiteral = false;
				cout << "Function call: " << base->identifier << "(...) -> " << $$->toString() << "\n";
			} else {
				// Create a descriptive error message
				string argTypesStr = "";
				for (size_t i = 0; i < argTypes->size(); ++i) {
					if (i > 0) argTypesStr += ", ";
					argTypesStr += (*argTypes)[i].toString();
				}
				
				type_error("No matching function found for call to '" + base->identifier + 
					"(" + argTypesStr + ")'");
				$$ = new TypeInfo();
				$$->baseType = "error";
			}
		} else {
			type_error("Invalid function call expression");
			$$ = new TypeInfo();
			$$->baseType = "error";
		}
		
		delete $1;
		delete $3;
	}
	| postfix_expression DOT IDENTIFIER {                            /* e.g., obj.field */
		// Struct member access - skip for now as requested
		$$ = $1;
		delete $3;
	}
	| postfix_expression ARROW IDENTIFIER {                             /* e.g., ptr->field */
		// Struct pointer member access - skip for now as requested
		$$ = $1;
		delete $3;
	}
	| postfix_expression INCREMENT {                                  /* e.g., x++ */
		$$ = perform_unary_operation(*$1, "++");
		delete $1;
	}
	| postfix_expression DECREMENT {                                 /* e.g., x-- */
		$$ = perform_unary_operation(*$1, "--");
		delete $1;
	}
	;

argument_expression_list
	: assignment_expression {                                         /* e.g., x */
		$$ = new vector<TypeInfo>();
		TypeInfo argType = array_to_pointer_conversion(*$1);
		$$->push_back(argType);
		delete $1;
	}
	| argument_expression_list COMMA assignment_expression {           /* e.g., x, y */
		$$ = $1;
		TypeInfo argType = array_to_pointer_conversion(*$3);
		$$->push_back(argType);
		delete $3;
	}
	;

unary_expression
	: postfix_expression { $$ = $1; }
	| INCREMENT unary_expression { 
		$$ = perform_unary_operation(*$2, "++");
		delete $2;
	}
	| DECREMENT unary_expression { 
		$$ = perform_unary_operation(*$2, "--");
		delete $2;
	}
	| unary_operator cast_expression { 
		$$ = perform_unary_operation(*$2, *$1);
		delete $1; delete $2;
	}
	| SIZEOF unary_expression { 
		$$ = new TypeInfo();
		$$->baseType = "int";  // sizeof always returns int
		$$->isLiteral = true;
		cout << "sizeof operation result type: int\n";
		delete $2;
	}
	| SIZEOF LPAREN type_specifier RPAREN { 
		$$ = new TypeInfo();
		$$->baseType = "int";  // sizeof always returns int
		$$->isLiteral = true;
		cout << "sizeof(" << $3->toString() << ") result type: int\n";
		delete $3;
	}
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
	: unary_expression { $$ = $1; }                                              /* e.g., x */
	| LPAREN cast_type_specifier RPAREN cast_expression {                         /* e.g., (int) x, (int*) x */
		TypeInfo* target_type = $2;
		TypeInfo* source_type = $4;
		
		// Type casting validation
		if (source_type->baseType == "error") {
			$$ = source_type;
		} else if (is_numeric_type(target_type->baseType) && is_numeric_type(source_type->baseType) 
		           && !target_type->isPointer && !target_type->isArray 
		           && !source_type->isPointer && !source_type->isArray) {
			// Numeric type casting is allowed (but not between pointers/arrays and numerics)
			$$ = new TypeInfo(*target_type);
			$$->isLiteral = source_type->isLiteral;
			cout << "Cast: (" << target_type->toString() << ")" << source_type->toString() << " -> " << $$->toString() << "\n";
		} else if (target_type->baseType == "void" && target_type->isPointer && !target_type->isArray) {
			// Casting to void* is allowed from any pointer type
			if (source_type->isPointer && !source_type->isArray) {
				$$ = new TypeInfo(*target_type);
				$$->isLiteral = false;
				cout << "Cast to void*: " << source_type->toString() << " -> " << $$->toString() << "\n";
			} else {
				type_error("Cannot cast non-pointer type " + source_type->toString() + " to void*");
				$$ = new TypeInfo();
				$$->baseType = "error";
			}
		} else if (source_type->isPointer && target_type->isPointer 
		           && !source_type->isArray && !target_type->isArray) {
			// Pointer to pointer casting (excluding arrays)
			$$ = new TypeInfo(*target_type);
			$$->isLiteral = false;
			cout << "Pointer cast: " << source_type->toString() << " -> " << $$->toString() << "\n";
		} else if ((source_type->isPointer || source_type->isArray) && is_numeric_type(target_type->baseType) && !target_type->isPointer && !target_type->isArray) {
			// Pointer/array to integer cast (for address arithmetic, but warn)
			type_warning("Casting pointer/array " + source_type->toString() + " to numeric type " + target_type->toString());
			$$ = new TypeInfo(*target_type);
			$$->isLiteral = false;
			cout << "Pointer-to-numeric cast: " << source_type->toString() << " -> " << $$->toString() << "\n";
		} else if (is_numeric_type(source_type->baseType) && !source_type->isPointer && !source_type->isArray && target_type->isPointer && !target_type->isArray) {
			// Integer to pointer cast (dangerous but allowed with warning)
			type_warning("Casting numeric type " + source_type->toString() + " to pointer " + target_type->toString());
			$$ = new TypeInfo(*target_type);
			$$->isLiteral = false;
			cout << "Numeric-to-pointer cast: " << source_type->toString() << " -> " << $$->toString() << "\n";
		} else {
			type_error("Invalid cast from " + source_type->toString() + " to " + target_type->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		}
		delete $2; delete $4;
	}
	;

multiplicative_expression
	: cast_expression { $$ = $1; }
	| multiplicative_expression STAR cast_expression { 
		$$ = perform_binary_operation(*$1, *$3, "*");
		delete $1; delete $3;
	}
	| multiplicative_expression DIVIDE cast_expression { 
		$$ = perform_binary_operation(*$1, *$3, "/");
		delete $1; delete $3;
	}
	| multiplicative_expression MOD cast_expression { 
		$$ = perform_binary_operation(*$1, *$3, "%");
		delete $1; delete $3;
	}
	;

additive_expression
	: multiplicative_expression { $$ = $1; }
	| additive_expression PLUS multiplicative_expression { 
		$$ = perform_binary_operation(*$1, *$3, "+");
		delete $1; delete $3;
	}
	| additive_expression MINUS multiplicative_expression { 
		$$ = perform_binary_operation(*$1, *$3, "-");
		delete $1; delete $3;
	}
	;

shift_expression
	: additive_expression { $$ = $1; }                                             /* e.g., a */
	| shift_expression LEFT_SHIFT additive_expression {                     /* e.g., a << b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type($1->baseType) || $1->isPointer || $1->isArray ||
		    !is_integer_type($3->baseType) || $3->isPointer || $3->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + $1->toString() + ", Right: " + $3->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			$$ = new TypeInfo(*$1);
			if ($$->baseType == "char") $$->baseType = "int"; // Promote char to int
			cout << "Left shift: " << $1->toString() << " << " << $3->toString() << " -> " << $$->toString() << "\n";
		}
		delete $1; delete $3;
	}
	| shift_expression RIGHT_SHIFT additive_expression {                     /* e.g., a >> b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type($1->baseType) || $1->isPointer || $1->isArray ||
		    !is_integer_type($3->baseType) || $3->isPointer || $3->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + $1->toString() + ", Right: " + $3->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			$$ = new TypeInfo(*$1);
			if ($$->baseType == "char") $$->baseType = "int"; // Promote char to int
			cout << "Right shift: " << $1->toString() << " >> " << $3->toString() << " -> " << $$->toString() << "\n";
		}
		delete $1; delete $3;
	}
	;

relational_expression
	: shift_expression { $$ = $1; }
	| relational_expression LT shift_expression { 
		$$ = perform_binary_operation(*$1, *$3, "<");
		delete $1; delete $3;
	}
	| relational_expression GT shift_expression { 
		$$ = perform_binary_operation(*$1, *$3, ">");
		delete $1; delete $3;
	}
	| relational_expression LE shift_expression { 
		$$ = perform_binary_operation(*$1, *$3, "<=");
		delete $1; delete $3;
	}
	| relational_expression GE shift_expression { 
		$$ = perform_binary_operation(*$1, *$3, ">=");
		delete $1; delete $3;
	}
	;

equality_expression
	: relational_expression { $$ = $1; }
	| equality_expression EQ relational_expression { 
		$$ = perform_binary_operation(*$1, *$3, "==");
		delete $1; delete $3;
	}
	| equality_expression NEQ relational_expression { 
		$$ = perform_binary_operation(*$1, *$3, "!=");
		delete $1; delete $3;
	}
	;

and_expression
	: equality_expression { $$ = $1; }
	| and_expression BIT_AND equality_expression { 
		$$ = perform_binary_operation(*$1, *$3, "&");
		delete $1; delete $3;
	}
	;

exclusive_or_expression
	: and_expression { $$ = $1; }
	| exclusive_or_expression BIT_XOR and_expression { 
		$$ = perform_binary_operation(*$1, *$3, "^");
		delete $1; delete $3;
	}
	;

inclusive_or_expression
	: exclusive_or_expression { $$ = $1; }
	| inclusive_or_expression BIT_OR exclusive_or_expression { 
		$$ = perform_binary_operation(*$1, *$3, "|");
		delete $1; delete $3;
	}
	;

logical_and_expression
	: inclusive_or_expression { $$ = $1; }
	| logical_and_expression LOGICAL_AND inclusive_or_expression { 
		$$ = perform_binary_operation(*$1, *$3, "&&");
		delete $1; delete $3;
	}
	;

logical_or_expression
	: logical_and_expression { $$ = $1; }
	| logical_or_expression LOGICAL_OR logical_and_expression { 
		$$ = perform_binary_operation(*$1, *$3, "||");
		delete $1; delete $3;
	}
	;

conditional_expression
	: logical_or_expression                                            /* e.g., x */ 
	;

assignment_expression
	: conditional_expression { $$ = $1; }
	| unary_expression assignment_operator assignment_expression { 
		// Type checking for assignment
		TypeInfo* lhs_type = $1;
		TypeInfo* rhs_type = $3;
		
		// Check if left-hand side is a valid lvalue
		if (!is_lvalue(*lhs_type)) {
			type_error("Cannot assign to " + lhs_type->toString() + " - not an lvalue");
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (!is_implicit_conversion_allowed(*rhs_type, *lhs_type)) {
			type_error("Cannot assign " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (is_narrowing_conversion(*rhs_type, *lhs_type)) {
			type_warning("Narrowing conversion from " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
		} else {
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
		}
		
		cout << "Assignment: " << lhs_type->toString() << " = " << rhs_type->toString() << "\n";
		delete $1; delete $3;
	}
	;

assignment_operator
	: ASSIGN                                                            /* = */
	;

expression
	: assignment_expression { $$ = $1; }
	| expression COMMA assignment_expression { 
		// Comma operator returns the type of the right operand
		$$ = $3;
		delete $1;
	}
	;

constant_expression
	: conditional_expression { 
		// For constant expressions, we need to return an integer value
		// For now, return 0 as a placeholder
		$$ = 0;
		delete $1;
	}
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


pointer
    : STAR {                                   /* e.g., * */
        $$ = new TypeInfo();
        $$->isPointer = true;
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
	: LBRACE { enter_scope(); insert_current_function_parameters(); } declaration_list statement_list RBRACE { exit_scope(); }                        /* e.g., { int a; stmt; } */
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
        cout << "Exiting scope level " << current_scope_level << "\n";
        
        displaySymbolTable(); // Display current symbol table before destruction
        
        // Display symbols being destroyed
        if (!current_scope.symbols.empty()) {
            cout << "Destroying symbols from scope " << current_scope_level << ":\n";
            for (const auto& entry : current_scope.symbols) {
                cout << "  - " << entry.second.name << " (" << entry.second.type.toString() << ")\n";
            }
        }
        
        scope_stack.pop_back();
        current_scope_level--;
    }
}

void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType) {
    if (scope_stack.empty()) {
        enter_scope();
    }
    
    auto& current_scope = scope_stack.back();
    
    // Check for redeclaration
    if (current_scope.symbols.find(name) != current_scope.symbols.end()) {
        string error_msg = "Error at line " + to_string(yylineno) + ": Variable '" + name + "' already declared in current scope";
        cerr << error_msg << "\n";
        log_error(error_msg);
        return;
    }
    
    SymbolEntry entry;
    entry.name = name;
    entry.type = type;
    entry.line = yylineno;
    entry.scope_level = current_scope_level;
    
    // Type check initialization if present
    if (initType != nullptr) {
        if (!check_initialization_compatibility(type, *initType)) {
            cerr << "Error at line " << yylineno << ": Type mismatch in initialization of variable '" << name << "'\n";
        }
    }
    
    current_scope.symbols[name] = entry;
    
    cout << "Declared variable: " << name << " (" << type.toString() << ")";
    if (initType != nullptr) {
        cout << " with initializer of type " << initType->toString();
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
    SymbolEntry entry;
    if (!lookup_symbol(name, entry)) {
        // First check if this is a function name before reporting error
        if (!is_function_name(name)) {
            string error_msg = "Error at line " + to_string(yylineno) + ": Variable '" + name + "' used but not declared";
            cerr << error_msg << "\n";
            log_error(error_msg);
        }
    } else {
        cout << "Variable '" << name << "' found: declared as " 
             << entry.type.toString() << " at line " << entry.line 
             << " in scope " << entry.scope_level << "\n";
    }
}

void displaySymbolTable() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                    SYMBOL TABLE                                        |\n";
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
        
        if (scope.symbols.empty()) {
            cout << "| (empty scope)                                                                       |\n";
            cout << "+-----------------------------------------------------------------------------------------+\n";
            continue;
        }
        
        cout << "+-----------------------------------------------------------------------------------------+\n";
        
        // Display variables with their type information
        for (const auto& entry : scope.symbols) {
            cout << "  - " << entry.second.name << " (" << entry.second.type.toString() 
                 << ") declared at line " << entry.second.line << "\n";
        }
        cout << "+-----------------------------------------------------------------------------------------+\n";
    }
}

// Type checking functions
bool types_compatible(const TypeInfo& left_type, const TypeInfo& right_type) {
    // Check base types match (ignoring static as requested)
    if (left_type.baseType != right_type.baseType) return false;
    
    // Check pointer compatibility 
    if(left_type.isPointer != right_type.isPointer) return false;
    

    if(left_type.isArray != right_type.isArray) return false;

    // Check array dimensions if both are arrays
    if (left_type.arraySize != right_type.arraySize) return false;
    
    
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

bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type) {
    // First check exact type match
    if (types_compatible(var_type, init_type)) {
        return true;
    }
    
    // If not exact match, check if implicit conversion is allowed
    if (is_implicit_conversion_allowed(init_type, var_type)) {
        // Warn about narrowing conversions
        if (is_narrowing_conversion(init_type, var_type)) {
            type_warning("Narrowing conversion from " + init_type.toString() + 
                      " to " + var_type.toString() + " may lose precision");
        }
        return true;
    }
    
    return false;
}

// Type checking and promotion functions implementation
bool is_numeric_type(const string& type) {
    return type == "int" || type == "float" || type == "char";
}

bool is_integer_type(const string& type) {
    return type == "int" || type == "char";
}

bool is_lvalue(const TypeInfo& expr) {
    // An lvalue is an expression that can appear on the left side of an assignment
    
    // Literals are not lvalues
    if (expr.isLiteral) {
        return false;
    }
    
    // Variables (with identifiers) are lvalues
    if (!expr.identifier.empty()) {
        return true;
    }
    
    // Dereferenced pointers are lvalues: *ptr
    // Array subscripts are lvalues: arr[i]
    // Structure/union members are lvalues: obj.member, ptr->member
    // (These would need to be tracked in the grammar with additional flags)
    
    // For now, we consider expressions without identifiers as non-lvalues
    // This covers most basic cases like literals, function calls, etc.
    return false;
}

bool is_implicit_conversion_allowed(const TypeInfo& from, const TypeInfo& to) {
    // Allow exact type matches
    if (types_compatible(from, to)) {
        return true;
    }
    
    // Allow conversions between numeric types but not char<->int
    if (is_numeric_type(from.baseType) && is_numeric_type(to.baseType)) {
        // Disallow char to int conversions
        if ((from.baseType == "char" && to.baseType == "int") || 
            (from.baseType == "int" && to.baseType == "char")) {
            return false;
        }
        return true;
    }
    
    // Allow NULL to any pointer conversion
    if (from.baseType == "void" && from.isPointer && to.isPointer) {
        return true;
    }
    
    // Allow integer literals to floating-point types
    if (from.isLiteral && from.baseType == "int" && to.baseType == "float") {
        return true;
    }
    
    // Allow array to pointer conversion (array decay)
    if (from.isArray && to.isPointer && from.baseType == to.baseType) {
        return true;
    }
    
    // Allow pointer conversions with compatible base types
    if (from.isPointer && to.isPointer) {
        // Void pointer can be assigned to any pointer type
        if (from.baseType == "void" || to.baseType == "void") {
            return true;
        }
    }
    
    return false;
}

bool is_narrowing_conversion(const TypeInfo& from, const TypeInfo& to) {
    // float to int is narrowing (potential loss of fractional part)
    if (from.baseType == "float" && to.baseType == "int") {
        return true;
    }
    
    // float to char is narrowing
    if (from.baseType == "float" && to.baseType == "char") {
        return true;
    }
    
    // Note: int to char conversions are no longer allowed, so we don't need this check
    // But we'll keep it commented for reference
    // if (from.baseType == "int" && to.baseType == "char") {
    //     return true;
    // }
    
    // Any pointer to smaller integer type is narrowing on most platforms
    if (from.isPointer && (to.baseType == "int" || to.baseType == "char")) {
        return true;
    }
    
    // Pointer to different pointer type (other than void*) is potentially unsafe
    if (from.isPointer && to.isPointer && from.baseType != to.baseType && 
        from.baseType != "void" && to.baseType != "void") {
        return true;
    }
    
    return false;
}

TypeInfo* promote_types(const TypeInfo& left, const TypeInfo& right) {
    TypeInfo* result = new TypeInfo();
    
    // If either is float, result is float
    if (left.baseType == "float" || right.baseType == "float") {
        result->baseType = "float";
        return result;
    }
    
    // If either is int, result is int
    if (left.baseType == "int" || right.baseType == "int") {
        result->baseType = "int";
        return result;
    }
    
    // Both char, result is int (C promotion rules)
    if (left.baseType == "char" && right.baseType == "char") {
        result->baseType = "int";
        return result;
    }
    
    // Default to left type
    result->baseType = left.baseType;
    return result;
}

TypeInfo* perform_binary_operation(const TypeInfo& left, const TypeInfo& right, const string& op) {
    // Check for errors
    if (left.baseType == "error" || right.baseType == "error") {
        TypeInfo* result = new TypeInfo();
        result->baseType = "error";
        return result;
    }
    
    cout << "Binary operation: " << left.toString() << " " << op << " " << right.toString();
    
    // Addition and subtraction with pointer arithmetic
    if (op == "+" || op == "-") {
        // Case 1: Both are numeric types (regular arithmetic)
        if (is_numeric_type(left.baseType) && is_numeric_type(right.baseType) && 
            !left.isPointer && !right.isPointer && !left.isArray && !right.isArray) {
            TypeInfo* result = promote_types(left, right);
            cout << " -> " << result->toString() << " (arithmetic)\n";
            return result;
        }
        
        // Case 2: Pointer + integer or Array + integer (only for addition)
        if (op == "+" && ((left.isPointer || left.isArray) && is_integer_type(right.baseType))) {
            TypeInfo* result = new TypeInfo(left);
            result->isArray = false;  // Result is always a pointer, not array
            result->isPointer = true;
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 3: Integer + pointer (commutative for addition)
        if (op == "+" && (is_integer_type(left.baseType) && (right.isPointer || right.isArray))) {
            TypeInfo* result = new TypeInfo(right);
            result->isArray = false;  // Result is always a pointer, not array
            result->isPointer = true;
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 4: Pointer - integer
        if (op == "-" && (left.isPointer || left.isArray) && is_integer_type(right.baseType)) {
            TypeInfo* result = new TypeInfo(left);
            result->isArray = false;  // Result is always a pointer, not array
            result->isPointer = true;
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 5: Pointer - pointer (results in integer representing distance)
        if (op == "-" && (left.isPointer || left.isArray) && (right.isPointer || right.isArray)) {
            if (left.baseType != right.baseType) {
                type_error("Pointer subtraction requires pointers to same type");
                TypeInfo* result = new TypeInfo();
                result->baseType = "error";
                return result;
            }
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";  // ptrdiff_t is typically int
            cout << " -> " << result->toString() << " (pointer difference)\n";
            return result;
        }
        
        // Case 6: Invalid pointer + pointer
        if (op == "+" && (left.isPointer || left.isArray) && (right.isPointer || right.isArray)) {
            type_error("Cannot add two pointers");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        // Invalid arithmetic operation
        type_error("Invalid operands for " + op + " operation");
        TypeInfo* result = new TypeInfo();
        result->baseType = "error";
        return result;
    }
    
    // Multiplication, division, modulo (no pointer arithmetic allowed)
    if (op == "*" || op == "/" || op == "%") {
        if (!is_numeric_type(left.baseType) || !is_numeric_type(right.baseType) ||
            left.isPointer || right.isPointer || left.isArray || right.isArray) {
            type_error("Arithmetic operation " + op + " requires numeric operands only");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        // Modulo only works on integers
        if (op == "%" && (left.baseType == "float" || right.baseType == "float")) {
            type_error("Modulo operation not allowed on floating-point types");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = promote_types(left, right);
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Relational operations
    if (op == "<" || op == ">" || op == "<=" || op == ">=" || op == "==" || op == "!=") {
        // Allow comparison between numeric types
        if (is_numeric_type(left.baseType) && is_numeric_type(right.baseType) &&
            !left.isPointer && !right.isPointer && !left.isArray && !right.isArray) {
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";  // In C, no bool type, so relational ops return int
            cout << " -> " << result->toString() << " (numeric comparison)\n";
            return result;
        }
        
        // Allow pointer comparisons (same type)
        if ((left.isPointer || left.isArray) && (right.isPointer || right.isArray)) {
            if (left.baseType != right.baseType) {
                type_warning("Comparing pointers to different types");
            }
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";
            cout << " -> " << result->toString() << " (pointer comparison)\n";
            return result;
        }
        
        type_error("Relational operation on incompatible types");
        TypeInfo* result = new TypeInfo();
        result->baseType = "error";
        return result;
    }
    
    // Bitwise operations (integers only, no pointers/arrays)
    if (op == "&" || op == "|" || op == "^") {
        if (!is_integer_type(left.baseType) || !is_integer_type(right.baseType) ||
            left.isPointer || right.isPointer || left.isArray || right.isArray) {
            type_error("Bitwise operations require integer operands only");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Logical operations
    if (op == "&&" || op == "||") {
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";  // Logical operations return int in C
        cout << " -> " << result->toString() << " (boolean as int)\n";
        return result;
    }
    
    // Unknown operation
    type_error("Unknown binary operation: " + op);
    TypeInfo* result = new TypeInfo();
    result->baseType = "error";
    return result;
}

TypeInfo* perform_unary_operation(const TypeInfo& operand, const string& op) {
    // Check for errors
    if (operand.baseType == "error") {
        TypeInfo* result = new TypeInfo();
        result->baseType = "error";
        return result;
    }
    
    cout << "Unary operation: " << op << operand.toString();
    
    // Arithmetic unary operations
    if (op == "+" || op == "-") {
        if (!is_numeric_type(operand.baseType)) {
            type_error("Unary arithmetic operation on non-numeric type");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        // Promote char to int for arithmetic
        if (result->baseType == "char") {
            result->baseType = "int";
        }
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Increment/decrement
    if (op == "++" || op == "--") {
        if (!is_numeric_type(operand.baseType)) {
            type_error("Increment/decrement operation on non-numeric type");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Logical NOT
    if (op == "!") {
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";  // Logical NOT returns int in C
        cout << " -> " << result->toString() << " (boolean as int)\n";
        return result;
    }
    
    // Bitwise NOT
    if (op == "~") {
        if (!is_numeric_type(operand.baseType)) {
            type_error("Bitwise NOT on non-numeric type");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Address-of operator
    if (op == "&") {
        if (operand.isLiteral) {
            type_error("Cannot take address of literal");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        result->isPointer = true;
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Dereference operator
    if (op == "*") {
        if (!operand.isPointer) {
            type_error("Cannot dereference non-pointer type");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        result->isPointer = false;
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Unknown operation
    type_error("Unknown unary operation: " + op);
    TypeInfo* result = new TypeInfo();
    result->baseType = "error";
    return result;
}

void type_error(const string& message) {
    string error_msg = "Type Error at line " + to_string(yylineno) + ": " + message;
    cerr << error_msg << "\n";
    log_error(error_msg);
}

void type_warning(const string& message) {
    string warning_msg = "Type Warning at line " + to_string(yylineno) + ": " + message;
    cout << warning_msg << "\n";
    // Also log warnings to error file
    log_error(warning_msg);
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

// Function management implementation
string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes) {
    string mangledName = funcName;
    
    for (const TypeInfo& param : paramTypes) {
        mangledName += "_";
        
        // Add base type encoding
        if (param.baseType == "int") mangledName += "i";
        else if (param.baseType == "char") mangledName += "c";
        else if (param.baseType == "float") mangledName += "f";
        else if (param.baseType == "void") mangledName += "v";
        else mangledName += "u"; // unknown
        
        // Add pointer modifier
        if (param.isPointer) mangledName += "p";
    }
    
    return mangledName;
}

TypeInfo array_to_pointer_conversion(const TypeInfo& type) {
    TypeInfo result = type;
    if (result.isArray) {
        result.isArray = false;
        result.isPointer = true;
        result.arraySize = 0;
        cout << "Array to pointer conversion: " << type.toString() << " -> " << result.toString() << "\n";
    }
    return result;
}

void insert_function(const string& name, const TypeInfo& returnType, const vector<TypeInfo>& paramTypes) {
    // Convert array parameters to pointers
    vector<TypeInfo> convertedParams;
    for (const TypeInfo& param : paramTypes) {
        convertedParams.push_back(array_to_pointer_conversion(param));
    }
    
    string mangledName = mangle_function_name(name, convertedParams);
    
    // Check if function already exists
    if (function_table.find(mangledName) != function_table.end()) {
        type_warning("Function " + name + " with same parameter types already declared");
        return;
    }
    
    FunctionEntry entry;
    entry.originalName = name;
    entry.mangledName = mangledName;
    entry.returnType = returnType;
    entry.line = yylineno;
    
    // Convert parameter types to FunctionParam objects
    for (size_t i = 0; i < convertedParams.size(); i++) {
        string paramName = "param" + to_string(i);
        entry.parameters.emplace_back(paramName, convertedParams[i]);
    }
    
    function_table[mangledName] = entry;
    
    cout << "Registered function: " << name << " as " << mangledName 
         << " returning " << returnType.toString() << "\n";
}

// Check if a name is defined as a function
bool is_function_name(const string& name) {
    for (const auto& entry : function_table) {
        if (entry.second.originalName == name) {
            return true;
        }
    }
    return false;
}

FunctionEntry* lookup_function(const string& name, const vector<TypeInfo>& argTypes) {
    // Convert array arguments to pointers
    vector<TypeInfo> convertedArgs;
    for (const TypeInfo& arg : argTypes) {
        convertedArgs.push_back(array_to_pointer_conversion(arg));
    }
    
    // Try exact match first
    string exactMangledName = mangle_function_name(name, convertedArgs);
    auto it = function_table.find(exactMangledName);
    if (it != function_table.end()) {
        cout << "Found exact function match: " << exactMangledName << "\n";
        return &(it->second);
    }
    
    // If no exact match, collect all compatible functions
    vector<FunctionEntry*> compatibleFunctions;
    
    for (auto& entry : function_table) {
        FunctionEntry& func = entry.second;
        if (func.originalName == name && are_parameters_compatible(convertedArgs, func.parameters)) {
            compatibleFunctions.push_back(&func);
            cout << "Found compatible function: " << func.mangledName << " for " << name << "\n";
        }
    }
    
    // If exactly one compatible function is found, return it
    if (compatibleFunctions.size() == 1) {
        return compatibleFunctions[0];
    }
    // If multiple compatible functions are found, report ambiguity error
    else if (compatibleFunctions.size() > 1) {
        string errorMsg = "Ambiguous function call to '" + name + "', multiple matching overloads:";
        for (auto* func : compatibleFunctions) {
            errorMsg += "\n  " + func->mangledName;
        }
        type_error(errorMsg);
        return nullptr;
    }
    
    // No compatible functions found
    return nullptr;
}

bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params) {
    if (argTypes.size() != params.size()) {
        return false;
    }
    
    for (size_t i = 0; i < argTypes.size(); i++) {
        if (!is_implicit_conversion_allowed(argTypes[i], params[i].type)) {
            return false;
        }
    }
    
    return true;
}

void display_function_table() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                   FUNCTION TABLE                                       |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (function_table.empty()) {
        cout << "| No functions declared                                                              |\n";
        cout << "+-----------------------------------------------------------------------------------------+\n";
        return;
    }
    
    for (const auto& entry : function_table) {
        const FunctionEntry& func = entry.second;
        cout << "Function: " << func.originalName << " (" << func.mangledName << ")\n";
        cout << "  Return type: " << func.returnType.toString() << "\n";
        cout << "  Parameters: ";
        for (const FunctionParam& param : func.parameters) {
            cout << param.type.toString() << " ";
        }
        cout << "\n  Declared at line: " << func.line << "\n";
        cout << "+-----------------------------------------------------------------------------------------+\n";
    }
}

void insert_current_function_parameters() {
    // Insert stored function parameters into the current (function body) scope
    for (const auto& param : current_function_parameters) {
        insert_symbol(param.first, param.second);
        cout << "Inserted function parameter: " << param.first << " (" << param.second.toString() << ")\n";
    }
    // Clear the parameters after insertion
    current_function_parameters.clear();
}

// Error logging functions implementation
void init_error_log(const string& filename) {
    error_log_filename = filename;
    error_log.open(filename);
    if (error_log.is_open()) {
        error_log << "=== Parser Error Log ===\n";
        error_log << "Generated on: " << __DATE__ << " " << __TIME__ << "\n";
        error_log << "Input file: " << filename << "\n";
        error_log << "========================\n\n";
        error_log.flush();
        cout << "Error log initialized: " << filename << "\n";
    } else {
        cerr << "Warning: Could not open error log file: " << filename << "\n";
    }
}

void close_error_log() {
    if (error_log.is_open()) {
        error_log << "\n=== End of Error Log ===\n";
        error_log.close();
        cout << "Error log closed: " << error_log_filename << "\n";
    }
}

void log_error(const string& message) {
    if (error_log.is_open()) {
        error_log << message << "\n";
        error_log.flush();
    }
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

	// Initialize error logging
	string input_filename = string(argv[1]);
	string error_log_name = input_filename + ".errors";
	init_error_log(error_log_name);

	yyin = f;
	cout << "Starting parser...\n";
	
	// Initialize global scope
	enter_scope();
	
	int res = yyparse();
	cout << "yyparse() returned " << res << "\n";
	
	// Display the new scope-based symbol table
	displaySymbolTable();
	
	// Display function table
	display_function_table();
	
	// Clean up all remaining scopes
	while (!scope_stack.empty()) {
		exit_scope();
	}
	
	// Close error log
	close_error_log();
	
	fclose(f);
	return res;
}
