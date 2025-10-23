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

void yyerror(const char* s) {
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
    #include "tac.h"
    using namespace std;
    
    // Forward declarations
    struct StructUnionDef;
    struct EnumDef; 
    // Type information for semantic checking and 3-address code generation
    struct TypeInfo {
        bool isStatic;
        string baseType;        // int, char, float, void, struct_name, etc.
        int pointerLevel;       // Number of pointer levels (e.g., 1 for *, 2 for **)
        bool isArray;
        vector<int> arrayDimensions; // Dimensions for multidimensional arrays [3][4][5]
        string identifier;      // For expressions that reference variables
        bool isLiteral;         // True for literals, false for variables/expressions
        bool isLvalue;          // True if the expression is an lvalue, false for temporaries

        // Struct/Union information
        bool isStruct;          // True if this is a struct type
        bool isUnion;           // True if this is a union type
        string structUnionName; // Name of the struct/union (e.g., "Point", "Data")
        StructUnionDef* structDef; // Pointer to the struct/union definition

        // Function pointer information
        bool isFunctionPointer; // True if this is a function pointer type
        TypeInfo* returnType;   // Return type for function pointers (nullptr if not a function pointer)
        vector<TypeInfo>* parameterTypes; // Parameter types for function pointers (nullptr if not a function pointer)
        bool isReference;       // True if this is a reference type (int&, char&, etc.)
        TACOperand* result; // Result of the expression
        unordered_set<TACInstruction*> true_list; // List of true instructions (for conditional jumps)
        unordered_set<TACInstruction*> false_list; // List of false instructions (for conditional jumps)
        unordered_set<TACInstruction*> next_list; // List of next instructions (for jumps) (conditional expressions)
        vector<TACInstruction*> code; // List of instructions for the expression

        unordered_set<TACInstruction*> break_list; // List of break instructions (for loops/switch)
        unordered_set<TACInstruction*> continue_list; // List of continue instructions (for loops)

        
        TypeInfo() : isStatic(false), baseType(""), 
                     pointerLevel(0), isArray(false), 
                     arrayDimensions(), identifier(""), isLiteral(false), isLvalue(false),
                     isStruct(false), isUnion(false), structUnionName(""), structDef(nullptr), 
                     isFunctionPointer(false), returnType(nullptr), parameterTypes(nullptr), isReference(false),
                     result(nullptr), code()  {}
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), pointerLevel(other.pointerLevel), 
                    isArray(other.isArray), arrayDimensions(other.arrayDimensions),
                    identifier(other.identifier), isLiteral(other.isLiteral),
                    isLvalue(other.isLvalue), 
                    isStruct(other.isStruct), isUnion(other.isUnion),
                    structUnionName(other.structUnionName), structDef(other.structDef),
                    isFunctionPointer(other.isFunctionPointer),
                    returnType(other.returnType ? new TypeInfo(*other.returnType) : nullptr),
                    parameterTypes(other.parameterTypes ? new vector<TypeInfo>(*other.parameterTypes) : nullptr),
                    isReference(other.isReference),result(other.result),
                    true_list(other.true_list), false_list(other.false_list),
                    next_list(other.next_list), code(other.code),
                    break_list(other.break_list), continue_list(other.continue_list) {}
                    
        
        // Calculate total array size (product of all dimensions)
        int getTotalArraySize() const {
            if (!isArray || arrayDimensions.empty()) return 0;
            
            int totalSize = 1;
            for (int dim : arrayDimensions) {
                totalSize *= dim;
            }
            return totalSize;
        }

        
        string toString() const {
            string res = "";
            if (isStatic) res += "static ";
            
            // Handle function pointer types
            if (isFunctionPointer && returnType && parameterTypes) {
                res += returnType->toString() + " (*)(";
                for (size_t i = 0; i < parameterTypes->size(); i++) {
                    if (i > 0) res += ", ";
                    res += (*parameterTypes)[i].toString();
                }
                res += ")";
                return res;
            }
            
            // Handle struct/union types
            if (isStruct) {
                res += "struct " + structUnionName;
            } else if (isUnion) {
                res += "union " + structUnionName;
            } else {
                res += baseType;
            }
            
            // Add pointer asterisks
            for (int i = 0; i < pointerLevel; i++) {
                res += "*";
            }

            // Add reference
            if (isReference) {
                res += "&";
            }
            
            // Add array dimensions
            if (isArray) {
                for (int dim : arrayDimensions) {
                    res += "[" + to_string(dim) + "]";
                }
            }
            return res;
        }
    };
    
    // Simplified enum tracking - just track enum names per scope
    struct EnumInfo {
        string name;        // enum name (can be empty for anonymous)
        int scope_level;
        bool isAnonymous;
        
        EnumInfo() : name(""), scope_level(0), isAnonymous(false) {}
    };
    
    // Scope context for semantic checking
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        map<string, TypeInfo> typedefs; // typedef table for this scope
        map<string, string> enum_names; // Track enum names defined in this scope (enum_name -> "")

        int scope_level;
        
        ScopeContext(int level) : scope_level(level) {}
    };

    // Parameter list with variadic support
    struct ParamListInfo {
        vector<TypeInfo> params;
        bool hasEllipsis;
        
        ParamListInfo() : hasEllipsis(false) {}
        ParamListInfo(const vector<TypeInfo>& p, bool ellipsis) : params(p), hasEllipsis(ellipsis) {}
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable/function name
        int pointerLevel;       // Number of pointer levels (*, **, ***, etc.)
        bool isArray;
        bool isReference;
        vector<int> arrayDimensions; // Dimensions for multidimensional arrays [3][4][5]
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        // Function-specific information
        bool isFunction;        // True if this is a function declarator
        vector<TypeInfo>* paramTypes;  // Parameter types for functions
        bool isVariadic;        // True if function is variadic
        
        DeclaratorInfo() : name(""), pointerLevel(0), 
                          isArray(false), arrayDimensions(), initValue(""), initType(nullptr), isReference(false),
                          isFunction(false), paramTypes(nullptr), isVariadic(false) {}
                          
        // Add a new array dimension (for multidimensional arrays)
        void addArrayDimension(int size) {
            isArray = true;
            arrayDimensions.push_back(size);
        }
        
        // Add a pointer level (for multi-level pointers)
        void incrementPointerLevel() {
            pointerLevel++;
        }
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;         // Original variable name
        string mangledName;  // Mangled name for 3AC generation (v_name_funname_signature_scopenum)
        TypeInfo type;
        int line;
        int scope_level;
        bool isConst;        // Track if this is a constant (for enumerators)
        int constValue;      // Value for constant enumerators
        
        SymbolEntry() : line(0), scope_level(0), isConst(false), constValue(0) {}
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
        bool isVariadic;        // True if function is variadic
        
        FunctionEntry() : line(0) {}
    };

    struct SwitchLabel {
        int isInt; // 1 if int, 0 if char
        TACOperand* label; // Label for the case
        TACOperand* value; // Value for the case
    };

    // Struct/Union member information
    struct StructMember {
        string name;
        TypeInfo type;
        int offset;  // Offset from base address in bytes
        
        StructMember() : name(""), offset(0) {}
        StructMember(const string& n, const TypeInfo& t, int off) : name(n), type(t), offset(off) {}
    };

    // Struct/Union definition
    struct StructUnionDef {
        string name;           // struct/union name
        bool isUnion;          // true for union, false for struct
        vector<StructMember> members;
        int totalSize;         // Total size in bytes
        int scope_level;       // Scope where defined
        
        StructUnionDef() : name(""), isUnion(false), totalSize(0), scope_level(0) {}
    };
}

%code {
    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;
    
    // Struct/Union table - maps "struct name" or "union name" to a stack of definitions
    // Inner scopes shadow outer scopes by adding to the end of the vector
    map<string, vector<StructUnionDef>> struct_union_table;
    
    // Function symbol table
    map<string, FunctionEntry> function_table;
    
    // Simplified enum tracking - just track enum names per scope
    map<string, vector<EnumInfo>> enum_table;  // Maps enum name to stack of definitions
    int current_enum_value = 0;  // Track current enum value during parsing
    
    // Current function parameter information (for proper scoping)
    vector<pair<string, TypeInfo>> current_function_parameters;
    
    // Current function context for variable name mangling
    string current_function_name = "";
    string current_function_signature = "";
    TypeInfo* current_function_return_type = nullptr;

    // pending gotos for backpatching
    // In parser.y, near other global variables
    map<string, TACOperand*> label_map;  // Maps label names to their TAC instructions
    map<string, unordered_set<TACInstruction*>> unresolved_jumps;  // List of jumps to resolve

    // switch labels list
    // Global jump table tracking
    map<int, map<int, TACOperand*>> overall_jump_tables;  // jump_table_id -> (case_value -> label)
    int jump_table_counter = 0;  // Counter for jump table IDs
    
    // Stack of switch case maps for handling nested switches
    // Each map: case_value -> label (TACOperand*)
    vector<map<int, TACOperand*>> switch_case_stack;
    
    // Stack of default labels for nested switches
    vector<TACOperand*> switch_default_stack;
    
    // Stack of switch expression results for nested switches
    
    // Stack of jump table IDs for nested switches
    vector<int> switch_table_id_stack;
    
    // Global temporary storage for struct members being parsed
    vector<StructMember>* current_struct_members = nullptr;
    string current_struct_being_defined = "";  // Track the struct/union currently being parsed
    
    // Typedef table - maps typedef name to TypeInfo
    // Supports scoping by storing a vector (inner scopes shadow outer)
    map<string, vector<TypeInfo>> typedef_table;

    int loop_depth = 0;  // Incremented at loop start, decremented at loop end

    // Global variable to store the output TAC filename
    string output_tac_filename = "Final.tac";  // Default fallback
    
    // Struct/Union management functions
    void insert_struct_union(const string& name, bool isUnion, const vector<StructMember>& members, int scope_level);
    StructUnionDef* lookup_struct_union(const string& name);
    StructMember* find_member(StructUnionDef* def, const string& memberName);
    
    // Typedef management functions
    void insert_typedef(const string& name, const TypeInfo& type, int scope_level);
    TypeInfo* lookup_typedef(const string& name);
    bool is_typedef_name(const string& name);

    int anonymous_struct_counter = 0; // naya

    // Function declarations for scope management
    void enter_scope();
    void exit_scope();
    void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType = nullptr);
    bool lookup_symbol(const string& name, SymbolEntry& entry);
    bool lookup_symbol_current_scope(const string& name);
    void check_variable_declaration(const string& name);
    
    // Variable name mangling function
    string mangle_variable_name(const string& varName, int scopeLevel, const string& functionName = "", const string& signature = "");
    
    // Type checking and promotion functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promote_types(const TypeInfo& left, const TypeInfo& right);
    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> change_type_rhs_to_lhs(const TypeInfo& from, const TypeInfo& to);

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
    string type_code_for_mangling(const TypeInfo& type);
    string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes, bool isVariadic);
    string mangle_variable_name(const string& varName, int scopeLevel, const string& currentFuncName, const string& funcSignature);
    TypeInfo array_to_pointer_conversion(const TypeInfo& type);
    void insert_function(const string& name, const TypeInfo& returnType, const vector<TypeInfo>& paramTypes, bool isVariadic);
    FunctionEntry* lookup_function(const string& name, const vector<TypeInfo>& argTypes);
    bool is_function_name(const string& name);
    bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params, bool isVariadic);
    void display_function_table();
    void insert_current_function_parameters();

    string float_to_string_conversion(float value){
        string s = "";
        // Use stringstream for precise control over float to string conversion
        stringstream ss;
        ss << fixed << setprecision(6) << value; // Set precision to 6 decimal places
        return ss.str();
    }

    string char_to_string_conversion(char value){
        // Convert char to string representation
        return string(1, value);
    }

    int getSize(TypeInfo t){
        // Function pointers are just pointers (4 bytes on 32-bit systems)
        if(t.isFunctionPointer){
            return 4;
        }
        if(t.isReference){ // this thing we can remove also. keep it for now.
            return 4;
        }
        
        if(t.pointerLevel > 0){
            return 4; // assuming 32-bit pointers
        }
        int base_size = 0;
        if(t.baseType == "int"){
            base_size = 4;
        }
        else if(t.baseType == "char"){
            base_size = 1;
        }
        else if(t.baseType == "float"){
            base_size = 4;
        }
        else if(t.baseType == "void"){
            base_size = 0; // void has no size
        }
        else if(t.isStruct || t.isUnion){
            // Use the structDef pointer for direct access
            if (t.structDef) {
                base_size = t.structDef->totalSize;
            } else {
                // If structDef is not set, try to look it up
                StructUnionDef* structDef = lookup_struct_union(t.structUnionName);
                if (structDef) {
                    base_size = structDef->totalSize;
                } else {
                    // Incomplete struct/union - this is an error if used directly
                    // Return 0 to indicate incomplete type (error should be reported elsewhere)
                    base_size = 0;
                    type_error("Cannot determine size of incomplete type: " + t.structUnionName);
                }
            }
        }
        else{
            // Unknown type, assume a default size
            base_size = 4; // Default size for unknown types
        }
        // If it's an array, multiply by the total number of elements
        if(t.isArray){
            int total_elements = 1;
            for(int dim : t.arrayDimensions){
                total_elements *= dim;
            }
            return base_size * total_elements;
        }
        return base_size;
    }
    
    // Enum management functions
    void insert_enum(const string& name, int scope_level);
    bool is_enum_defined(const string& name, int scope_level);
    
    // Helper to insert enumerator as const symbol
    void insert_enumerator(const string& name, int value);

    
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
    TACOperand* opinfo; /* TAC operand information */
    ParamListInfo* paramlist; /* parameter list information */
}


%token INT FLOAT CHAR VOID IF ELSE FOR WHILE DO UNTIL BREAK CONTINUE SWITCH CASE DEFAULT SIZEOF STATIC GOTO TYPEDEF 

%token NULL_LITERAL INVALID
%token INCREMENT DECREMENT
%token ARROW LEFT_SHIFT RIGHT_SHIFT ELLIPSIS
%token LOGICAL_AND LOGICAL_OR EQ NEQ LE GE
%token PLUS MINUS STAR DIVIDE MOD ASSIGN LT GT LOGICAL_NOT BIT_AND BIT_OR BIT_XOR BIT_NOT DOT
%token COLON SEMICOLON COMMA LBRACE RBRACE LPAREN RPAREN LBRACKET RBRACKET
%token STRUCT RETURN UNION
%token <sval> IDENTIFIER TYPENAME
%token <ival> INT_LITERAL 
%token <fval> FLOAT_LITERAL
%token <sval> STRING_LITERAL CHAR_LITERAL
%token ENUM
%type <declinfo> direct_declarator
// typedef declarator
%type<declinfo> typedef_declarator
%type<declinfo> typedef_direct_declarator
%type<typeinfo> return_types
%type<typeinfo> declaration_specifiers
%type<typeinfo> type_specifier
%type<decllist> init_declarator_list
%type<decllist> typedef_declarator_list
%type<declinfo> init_declarator
%type<declinfo> declarator
%type<declinfo> fun_declarator
%type<declinfo> fun_direct_declarator

%type<typeinfo> enum_specifier
%type<typeinfo> parameter_declaration
%type<declinfo> parameter_declarator
%type<declinfo> parameter_direct_declarator
//%type<typelist> parameter_list
%type<paramlist> parameter_list
%type<typelist> parameter_type_list
%type<typeinfo> parameter_type_declarator
%type<ival> pointer
%type<opinfo> marker
%type<ival> reference

%type<typeinfo> declaration_list
%type<typeinfo> struct_or_union_specifier
%type<sval> struct_or_union
/* 
%type<typeinfo> struct_declaration_list
%type<typeinfo> struct_declaration */
%type<declinfo> struct_declarator
%type<decllist> struct_declarator_list
%type<typeinfo> constant_expression
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
%type<sval> unary_operator
%type<typelist> argument_expression_list


%type<typeinfo> statement
%type<typeinfo> compound_statement
%type<typeinfo> statement_list
%type<typeinfo> selection_statement
%type<typeinfo> iteration_statement
%type<typeinfo> jump_statement
%type<typeinfo> labeled_statement
%type<typeinfo> expression_statement

%type <typeinfo> if_expression
%type<opinfo> begin_marker

%type <typeinfo> declaration
%type <typeinfo> marker_fun_begin
%type <typeinfo> function_definition
%type <typeinfo> global_declaration
%type <typeinfo> start

%type<typeinfo> short_circuited_logical_and_expression
%type<typeinfo> short_circuited_logical_or_expression
%type<typeinfo> short_circuited_expression
%type<typeinfo> short_circuited_assignment_expression
%type<typeinfo> short_circuited_conditional_expression


%%
start
	: global_declaration                        /* e.g., int x; */ {
        $$ = new TypeInfo();
        $$->code = vector<TACInstruction*>();
        $$->code.insert($$->code.end(), $1->code.begin(), $1->code.end());
       
       // Debug output
       cout << "Start rule: Global declaration has " << $$->code.size() << " TAC instructions\n";
      
        // Open the file for writing
        ofstream tac_file(output_tac_filename);
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : $$->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code written to " << output_tac_filename << "\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }
        
    }
	| start global_declaration                   /* e.g., int x; float y; */{
        // Append $2->code to $1->code
        $$ = new TypeInfo();
        $$->code = vector<TACInstruction*>();
        $$->code.insert($$->code.end(), $1->code.begin(), $1->code.end());
        $$->code.insert($$->code.end(), $2->code.begin(), $2->code.end());

        // append this also to final.tac

       ofstream tac_file(output_tac_filename, ios::app);
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : $2->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code appended to " << output_tac_filename << "\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }

        delete $2;
    }
    ;

//---------------------------------------- Declarations --------------------------------------------------

global_declaration
	: function_definition    {
        $$ = $1;
    }                    
	| declaration     {
        $$ = new TypeInfo();
        // kyunki global declaration ka koi 3AC generate nahi hota
    }                           	
    ;

function_definition
	: return_types fun_declarator marker_fun_begin {
        // Generate function begin instruction
        string mangled_name = mangle_function_name($2->name, $2->paramTypes ? *$2->paramTypes : vector<TypeInfo>(), $2->isVariadic);
        TACOperand* func_label = new_identifier(mangled_name);
        //$3 = new TypeInfo(); //naya
        TACInstruction* func_begin = emit(TACOperator(TAC_OPERATOR_FUNC_BEGIN), 
                                       new_identifier($2->name), 
                                       new_empty_var(), 
                                       new_empty_var(), 0);
        $3->code.push_back(func_begin);

        // -------------------------- RETURN TYPE ------------------------------------------
        TypeInfo returnType = *$1;
        returnType.pointerLevel = $2->pointerLevel;  // Handle multi-level pointers
        current_function_return_type = new TypeInfo(returnType); // Store return type for return statements

        //-------------------------- Register Function ------------------------------------------
        // Register function definition
		//TypeInfo returnType = *$1;
		returnType.pointerLevel = $2->pointerLevel;  // Handle multi-level pointers


		
		if ($2->isFunction && $2->paramTypes) {
			insert_function($2->name, returnType, *$2->paramTypes, $2->isVariadic);
			cout << "Function definition: " << $2->name << " registered\n";
		}

    } compound_statement {               /* e.g., int f() { ... } */
		
        $$ = new TypeInfo();

        $$->code = vector<TACInstruction*>();
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
        
        for (TACInstruction* instr : $5->code) {
            $$->code.push_back(instr);
        }
        
        // Backpatch any remaining next_list jumps to the function end
        if (!$5->next_list.empty()) {
            TACOperand* end_label = new_label(0);
            backpatch($5->next_list, end_label);
        }
        
        // Generate function end instruction
        TACInstruction* func_end = emit(TACOperator(TAC_OPERATOR_FUNC_END), 
                                      new_identifier($2->name), 
                                      new_empty_var(), 
                                      new_empty_var(), 0);
        $$->code.push_back(func_end);
		
		// Reset the current function context after function definition completes
		current_function_name = "";
		current_function_signature = "";
        current_function_return_type = nullptr;

   
        for(auto instr : $5->code){
            string instr_str = get_TAC_instruction_string(instr);
            cout << instr_str << "\n";
        }
		
        delete $1;
        delete $2;
        delete $5;
	}
	
	;

marker_fun_begin
    : /* empty */ {
        $$ = new TypeInfo();//naya
    }


declaration
	: return_types SEMICOLON { 
        $$ = new TypeInfo();
        delete $1; 
    }                                   /* e.g., extern int; (rare)*/ 
	| return_types init_declarator_list SEMICOLON {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *$2) {
			TypeInfo combinedType = *$1;  // Start with base type
			
			// Check if this is a function pointer declaration
			if (declInfo->isFunction && declInfo->pointerLevel > 0) {
				// This is a function pointer: e.g., int (*fp)(int, float)
				combinedType.isFunctionPointer = true;
				combinedType.pointerLevel = 0; // Function pointers don't use pointerLevel
				combinedType.returnType = new TypeInfo(*$1); // Return type is the base type
				combinedType.returnType->pointerLevel = declInfo->pointerLevel - 1; // Adjust for the one pointer level used by function pointer itself
				combinedType.parameterTypes = new vector<TypeInfo>(*declInfo->paramTypes);
				combinedType.baseType = "function_pointer";
                // initializer here must be function name, we will have to find among functions with exaxct return type and parameter types, if not found then give error

                // Function pointer initialization validation
                if (declInfo->initType != nullptr) {
                    // Check if initializer is a function name
                    if (declInfo->initType->baseType == "function" && !declInfo->initType->identifier.empty()) {
                        string funcName = declInfo->initType->identifier;
                        
                        // Need to match: return type and parameter types
                        TypeInfo expectedReturnType = *combinedType.returnType;
                        vector<TypeInfo> expectedParamTypes;
                        if (combinedType.parameterTypes != nullptr) {
                            expectedParamTypes = *combinedType.parameterTypes;
                        }
                        
                        // Search for matching function in function table
                        FunctionEntry* matchingFunc = nullptr;
                        int matchCount = 0;
                        
                        for (auto& pair : function_table) {
                            FunctionEntry& func = pair.second;
                            
                            // Check if this is the right function name
                            if (func.originalName != funcName) {
                                continue;
                            }
                            
                            // Check return type match
                            if (!types_compatible(func.returnType, expectedReturnType)) {
                                continue;
                            }
                            
                            // Check parameter count
                            if (func.parameters.size() != expectedParamTypes.size()) {
                                continue;
                            }
                            
                            // Check each parameter type
                            bool paramsMatch = true;
                            for (size_t i = 0; i < func.parameters.size(); i++) {
                                if (!types_compatible(func.parameters[i].type, expectedParamTypes[i])) {
                                    paramsMatch = false;
                                    break;
                                }
                            }
                            
                            if (paramsMatch) {
                                matchingFunc = &func;
                                matchCount++;
                            }
                        }
                        
                        if (matchCount == 0) {
                            string error_msg = "No matching function '" + funcName + "' found with return type " + 
                                expectedReturnType.toString() + " and parameters (";
                            for (size_t i = 0; i < expectedParamTypes.size(); i++) {
                                if (i > 0) error_msg += ", ";
                                error_msg += expectedParamTypes[i].toString();
                            }
                            error_msg += ")";
                            yyerror(error_msg.c_str());
                        } else if (matchCount > 1) {
                            string error_msg = "Ambiguous function pointer initialization: multiple functions named '" + 
                                funcName + "' match the required signature";
                            yyerror(error_msg.c_str());
                        } else {
                            // Exactly one match found - success!
                            cout << "Function pointer '" << declInfo->name << "' initialized with function '" << 
                                matchingFunc->mangledName << "'\n";
                            
                            // Update the initializer's result to use the mangled function name
                            declInfo->initType->result = new_identifier(matchingFunc->mangledName);
                        }
                    }
                }
 
				
				cout << "Function pointer declaration: " << declInfo->name << " of type " << combinedType.toString() << "\n";
			} else {
				// Regular variable or array declaration
				combinedType.pointerLevel += declInfo->pointerLevel;
				combinedType.isArray |= declInfo->isArray;
                combinedType.isReference |= declInfo->isReference;
				combinedType.arrayDimensions.insert(combinedType.arrayDimensions.end(), 
                                               declInfo->arrayDimensions.begin(), 
                                               declInfo->arrayDimensions.end());
			}
			

            $$ = new TypeInfo();
            combinedType.result = new_identifier(mangle_variable_name(declInfo->name, current_scope_level, current_function_name, current_function_signature));
            $$->code = vector<TACInstruction*>();

                        
            // Reference-specific validation
            if (combinedType.isReference) {
                // References cannot be arrays
                if (combinedType.isArray) {
                    type_error("Reference '" + declInfo->name + "' cannot be an array");
                }
                
                // References cannot have multiple pointer levels
                if (combinedType.pointerLevel > 0) {
                    type_error("Reference '" + declInfo->name + "' cannot be a pointer");
                }
                
                // References must be initialized
                if (declInfo->initType == nullptr) {
                    type_error("Reference '" + declInfo->name + "' must be initialized");
                }
                
                // References must be initialized with lvalues
                if (declInfo->initType != nullptr && !declInfo->initType->isLvalue) {
                    type_error("Reference '" + declInfo->name + "' must be initialized with an lvalue");
                }
                
                // References require EXACT type match - no implicit conversions
                if (declInfo->initType != nullptr) {
                    TypeInfo expectedType = combinedType;
                    expectedType.isReference = false;  // Compare underlying type
                    
                    TypeInfo actualType = *declInfo->initType;
                    actualType.isReference = false;    // Compare underlying type
                    
                    // Check exact type match (base type, pointer level, array, struct/union)
                    if (expectedType.baseType != actualType.baseType ||
                        expectedType.pointerLevel != actualType.pointerLevel ||
                        expectedType.isArray != actualType.isArray ||
                        expectedType.isStruct != actualType.isStruct ||
                        expectedType.isUnion != actualType.isUnion ||
                        (expectedType.isStruct && expectedType.structUnionName != actualType.structUnionName) ||
                        (expectedType.isUnion && expectedType.structUnionName != actualType.structUnionName)) {
                        type_error("Reference '" + declInfo->name + "' of type '" + combinedType.toString() + 
                                  "' cannot bind to value of type '" + declInfo->initType->toString() + 
                                  "' (exact type match required)");
                    }
                    
                    // Include initializer code
                    $$->code.insert($$->code.end(), declInfo->initType->code.begin(), declInfo->initType->code.end());
                    
                    // Take address of the initializer
                    TACOperand* ref_var = new_identifier(mangle_variable_name(declInfo->name, current_scope_level, current_function_name, current_function_signature));
                    TACInstruction* addr_inst = emit(TAC_OPERATOR_ADDR_OF, ref_var, declInfo->initType->result, new_empty_var(), 0);
                    $$->code.push_back(addr_inst);
                    
                    combinedType.result = ref_var;
                }
            }
			// Type check initialization if present
			else if (declInfo->initType != nullptr) {
				if (!check_initialization_compatibility(combinedType, *declInfo->initType)) {
					// Issue a warning instead of error to allow compilation to continue
					string warning_msg = "Type mismatch in initialization of variable '" + 
						declInfo->name + "': cannot convert from " + 
						declInfo->initType->toString() + " to " + combinedType.toString();
					type_warning(warning_msg);
				}else{
					// First, include the code that generates the initializer value (e.g., function call)
                    $$->code.insert($$->code.end(), declInfo->initType->code.begin(), declInfo->initType->code.end());

					// if implicit conversion allowed, then do it and reflect in 3AC else simply assign
                    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = change_type_rhs_to_lhs(combinedType, *declInfo->initType);
                    // append promo.first to $$->code
                    $$->code.insert($$->code.end(), promo.first.begin(), promo.first.end());
                    // now assign promo.second.second to declInfo->name
                    TACInstruction* assignInstr = emit(TACOperator(), promo.second.first, promo.second.second, new_empty_var(), 0);
                    $$->code.push_back(assignInstr);

                }
			}

            insert_symbol(declInfo->name, combinedType, declInfo->initType);

			// Insert into symbol table with native value storage
			
			// Clean up initType after insertion
			if (declInfo->initType != nullptr) {
				delete declInfo->initType;
			}
			delete declInfo;
		}
		delete $1;
		delete $2;
	}                                 /* e.g., int x, *p = NULL, arr[10] = {0}; */
	| TYPEDEF return_types typedef_declarator_list SEMICOLON {
		// Typedef declaration: typedef int Integer; or typedef int* IntPtr;
		// Note: typedef does NOT allow initialization (e.g., typedef int I = 5; is INVALID)
		for (DeclaratorInfo* declInfo : *$3) {
			TypeInfo combinedType = *$2;  // Start with base type
			
			// Add declarator-specific type information
			combinedType.pointerLevel = declInfo->pointerLevel;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			
			// Register typedef
			insert_typedef(declInfo->name, combinedType, current_scope_level);
			
			cout << "Registered typedef: " << declInfo->name << " as " << combinedType.toString() << "\n";
			
			delete declInfo;
		}
		delete $2;
		delete $3;
		
		$$ = new TypeInfo();  // typedef doesn't generate TAC
	}                                 /* e.g., typedef int Integer; */
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
    | struct_or_union_specifier { 
        $$ = $1;
    }
    | TYPENAME {
        // This identifier is a typedef name (verified by lexer)
        TypeInfo* typedef_type = lookup_typedef(*$1);
        if (typedef_type) {
            // It's a typedef - use the aliased type
            $$ = new TypeInfo(*typedef_type);
            cout << "Using typedef: " << *$1 << " -> " << $$->toString() << "\n";
        } else {
            // Should not happen since lexer verified it, but handle gracefully
            type_error("Unknown type name: " + *$1);
            $$ = new TypeInfo();
            $$->baseType = "error";
        }
        delete $1;
    }
    | enum_specifier {
        $$ = new TypeInfo();
        $$->baseType = "int"; // Enums are treated as int
    }
    ;

enum_specifier
    : ENUM LBRACE {
        // Start of anonymous enum
        current_enum_value = 0;
    } enumerator_list RBRACE {
        // Anonymous enum completed
        insert_enum("", current_scope_level);
        
        $$ = new TypeInfo();
        $$->baseType = "int";  // Enums are int type
        $$->pointerLevel = 0;
        $$->isArray = false;
    }
    | ENUM IDENTIFIER LBRACE {
        // Named enum definition
        // Check if this enum name is already defined in current scope
        if (is_enum_defined(*$2, current_scope_level)) {
            type_error("Redeclaration of enum '" + *$2 + "' in same scope");
        }
        current_enum_value = 0;
    } enumerator_list RBRACE {
        // Register the named enum
        insert_enum(*$2, current_scope_level);
        
        $$ = new TypeInfo();
        $$->baseType = "int";  // Enums are int type
        $$->pointerLevel = 0;
        $$->isArray = false;
        delete $2;
    }
    | ENUM IDENTIFIER {
        // Forward declaration or use of existing enum
        // Just return int type
        $$ = new TypeInfo();
        $$->baseType = "int";
        $$->pointerLevel = 0;
        $$->isArray = false;
        delete $2;
    }
    ;

enumerator_list
    : enumerator_list COMMA enumerator
    | enumerator
    ;

enumerator
    : IDENTIFIER {
        // Simple enumerator - use current_enum_value
        insert_enumerator(*$1, current_enum_value);
        current_enum_value++;
        delete $1;
    }
    | IDENTIFIER ASSIGN constant_expression {
        // Enumerator with explicit value
        int value = 0;
        if ($3->result && $3->result->type == TAC_OPERAND_CONSTANT) {
            value = stoi($3->result->value);
        } else {
            type_error("Enum constant value must be a compile-time integer constant");
        }
        insert_enumerator(*$1, value);
        current_enum_value = value + 1;
        delete $1;
        delete $3;
    }
    ;
cast_type_specifier
    : type_specifier {
        $$ = $1;  // Just a base type like int, float, etc.
    }
    | type_specifier STAR {
        $$ = $1;
        $$->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
    ;

//-------------------------------------------------- Declarators --------------------------------------------------

typedef_declarator_list
	: typedef_declarator {
		$$ = new vector<DeclaratorInfo*>();
		$$->push_back($1);
	}
	| typedef_declarator_list COMMA typedef_declarator {
		$$ = $1;
		$$->push_back($3);
	}
	;

typedef_declarator
    : pointer typedef_direct_declarator {                                 /* e.g., *p or **p or ***p */ 
        $$ = $2;
        // Add pointer levels from $1 to the declarator
        $$->pointerLevel = $1;
    }
    | typedef_direct_declarator {                                         /* e.g., x */ 
        $$ = $1;
    }
    ;

typedef_direct_declarator
    : IDENTIFIER {                                                 /* e.g., x */  
        $$ = new DeclaratorInfo();
        $$->name = *$1;
        delete $1;
    }
    | TYPENAME {                                                 /* e.g., x */  
        $$ = new DeclaratorInfo();
        $$->name = *$1;
        delete $1;
    }
    | typedef_direct_declarator LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] or arr[10][20] */ 
        $$ = $1;
        if($3 <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        $$->isArray = true;
        $$->addArrayDimension($3); // Support multidimensional arrays by adding each dimension
    }
    | IDENTIFIER LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] */ 
        $$ = new DeclaratorInfo();
        if( $3 <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        $$->name = *$1;
        $$->isArray = true;
        $$->addArrayDimension($3);
        delete $1;
    }
    
    ;

init_declarator_list					
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


// Support for multi-level pointers like *, **, ***, etc.
declarator
    : pointer direct_declarator {                                 /* e.g., *p or **p or ***p */ 
        $$ = $2;
        // Add pointer levels from $1 to the declarator
        $$->pointerLevel += $1;
    }
    | reference direct_declarator {                               /* e.g., &ref */
        $$ = $2;
        // Mark as reference
        $$->isReference = true;
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
	| LPAREN declarator RPAREN {                                   /* e.g., (*fp) for function pointers */
		$$ = $2;
	}
	| direct_declarator LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] or arr[10][20] */ 
		$$ = $1;
        if($3 <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        $$->isArray = true;
        $$->addArrayDimension($3); // Support multidimensional arrays by adding each dimension
    }
    | IDENTIFIER LBRACKET INT_LITERAL RBRACKET {     /* e.g., arr[10] */ 
		$$ = new DeclaratorInfo();
        if( $3 <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        $$->name = *$1;
        $$->isArray = true;
        $$->addArrayDimension($3);
        delete $1;
    }| IDENTIFIER LBRACKET CHAR_LITERAL RBRACKET {     /* e.g., arr['a'] */
        // implicit conversion of char to int for array size
        $$ = new DeclaratorInfo();
        // Extract the character value from the string literal
        char charValue = 0;
        if ($3 && $3->length() >= 3) {  // Format is 'c'
            charValue = (*$3)[1];  // Get the character between quotes
        }
        if (charValue <= 0) {
            yyerror("Array size must be a positive integer");
        }
        $$->name = *$1;
        $$->isArray = true;
        $$->addArrayDimension(static_cast<int>(charValue));
        delete $1;
    }| direct_declarator LBRACKET CHAR_LITERAL RBRACKET {     /* e.g., arr[10] or arr[10][20] */
        // implicit conversion of char to int for array size
        $$ = $1;
        // Extract the character value from the string literal
        char charValue = 0;
        if ($3 && $3->length() >= 3) {  // Format is 'c'
            charValue = (*$3)[1];  // Get the character between quotes
        }
        if (charValue <= 0) {
            yyerror("Array size must be a positive integer");
        }
        $$->isArray = true;
        $$->addArrayDimension(static_cast<int>(charValue)); // Support multidimensional arrays by adding each dimension
    }
	| direct_declarator LPAREN parameter_type_list RPAREN {              /* e.g., (*fp)(int, float) for function pointers */
		$$ = $1;
		$$->isFunction = true;
		$$->paramTypes = new vector<TypeInfo>(*$3);
		delete $3;
	}
	| direct_declarator LPAREN RPAREN {                             /* e.g., (*fp)() for function pointers with no params */
		$$ = $1;
		$$->isFunction = true;
		$$->paramTypes = new vector<TypeInfo>();
	}

fun_declarator
  	: pointer fun_direct_declarator {
  		$$ = $2;
  		$$->pointerLevel = $1;  // Function returns a pointer (possibly multi-level)
  	}
	| fun_direct_declarator {
		$$ = $1;
	} 
	;


fun_direct_declarator 
	: IDENTIFIER LPAREN parameter_list RPAREN {          		/* e.g., f(int a, float b) */
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		$$->isFunction = true;
		//$$->paramTypes = new vector<TypeInfo>(*$3);  // Copy parameter types
        $$->paramTypes = new vector<TypeInfo>($3->params);
        $$->isVariadic = $3->hasEllipsis;
		
		// Set current function context for variable name mangling
		current_function_name = $$->name;
		// Generate the function signature for variables in this function
		current_function_signature = "";
		for (size_t i = 0; i < $$->paramTypes->size(); i++) {
			TypeInfo& param = (*($$->paramTypes))[i];
			current_function_signature += type_code_for_mangling(param);
			if (i < $$->paramTypes->size() - 1) {
				current_function_signature += "_";
			}
		}
		
		cout << "Function declarator: " << $$->name << " with " << $$->paramTypes->size() << " parameters\n";
		delete $1;
		delete $3;
	}
	| IDENTIFIER LPAREN RPAREN {                               /* e.g., f() (function with no params) */
		$$ = new DeclaratorInfo();
		$$->name = *$1;
		$$->isFunction = true;
		$$->paramTypes = new vector<TypeInfo>();  // Empty parameter list
		
		// Set current function context for variable name mangling
		current_function_name = $$->name;
		current_function_signature = "";  // No parameters
		
		cout << "Function declarator: " << $$->name << " with no parameters\n";
		delete $1;
	}
;


//------------------------ It will be used in compound statements - that means start of compound statement will be definitions list only -----------------------------
declaration_list
	: declaration    {
        $$ = new TypeInfo();
        $$->code = $1->code; // Carry forward the code from the declaration
        delete $1;
    }                                                      
	| declaration_list declaration    {
        $$ = $1;
        // Append the code from the new declaration
        $$->code.insert($$->code.end(), $2->code.begin(), $2->code.end());
        delete $2;
    }   
	|    {
        $$ = new TypeInfo(); // Empty declaration list
    }                                 
	;


//--------------------------------- Initializers -> RHS of assignment expressions -----------------------------------------------------

initializer
	: assignment_expression { $$ = $1; }  //Basically any expression                                            
	;

parameter_list
    : parameter_declaration {
        $$ = new ParamListInfo();
        $$->params.push_back(*$1);
        $$->hasEllipsis = false;
        delete $1;
    }
    | parameter_list COMMA parameter_declaration {
        $$ = $1;
        $$->params.push_back(*$3);
        delete $3;
    }
    | parameter_list COMMA ELLIPSIS {
        $$ = $1;
        $$->hasEllipsis = true;
    }
    ;


parameter_declaration
    : return_types parameter_declarator {
        TypeInfo* combinedType = new TypeInfo(*$1);
        
        // Check if this is a function pointer parameter
        if ($2->isFunction && $2->paramTypes) {
            // This is a function pointer: e.g., int (*fp)(int, float)
            combinedType->isFunctionPointer = true;
            combinedType->returnType = new TypeInfo(*$1);  // Return type of the function pointer
            combinedType->parameterTypes = new vector<TypeInfo>(*$2->paramTypes);
            combinedType->pointerLevel = $2->pointerLevel - 1;  // Adjust for the function pointer itself
            combinedType->baseType = "function_pointer";
        } else {
            // Regular parameter
            combinedType->pointerLevel += $2->pointerLevel;
            combinedType->isArray |= $2->isArray;
            combinedType->arrayDimensions = $2->arrayDimensions;
            combinedType->isReference |= $2->isReference;
        }
        
        current_function_parameters.push_back(make_pair($2->name, *combinedType));
        
        $$ = combinedType;
        delete $1;
        delete $2;
    }
    ;

// specifically used for function pointer parameter declarations like: (int, float)
parameter_type_list
    : parameter_type_declarator                                              /* e.g., int */{
        $$ = new vector<TypeInfo>();
        $$->push_back(*$1);
        delete $1;
    }
    | parameter_type_list COMMA parameter_type_declarator                          /* e.g., int, float */{
        $$ = $1;
        $$->push_back(*$3);
        delete $3;
    }


parameter_type_declarator
	: return_types                                                                  /* e.g., int (abstract declarator - no name) */ {
        // Abstract declarator - just a type without a name
        // This is used in function pointer declarations like: int (*fp)(int, float)
        TypeInfo* combinedType = new TypeInfo(*$1);
        
        // No name for abstract declarators
       // current_function_parameters.push_back(make_pair("", *combinedType));
        
        $$ = combinedType;
        delete $1;
    }
	| return_types pointer                                                          /* e.g., int* (abstract pointer declarator) */ {
        // Abstract pointer declarator - type with pointer but no name
        // This is used in function pointer declarations like: int (*fp)(int*, char*)
        TypeInfo* combinedType = new TypeInfo(*$1);
        combinedType->pointerLevel = $2;
        
        // DON'T add to current_function_parameters - these are function pointer's params, not function's params
        // current_function_parameters.push_back(make_pair("", *combinedType))
        $$ = combinedType;
        delete $1;
    }
    ;

parameter_declarator
    : pointer parameter_direct_declarator {                                 /* e.g., *p or **p or ***p */ 
        $$ = $2;
        // Add pointer levels to the declarator
        $$->pointerLevel = $1;
    }
    | reference parameter_direct_declarator {                               /* e.g., &ref */
        $$ = $2;
        // Mark as reference
        $$->isReference = true;
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
    | LPAREN parameter_declarator RPAREN {
        // Handles parenthesized declarators like (*fp)
        $$ = $2;
    }
    | parameter_direct_declarator LPAREN parameter_type_list RPAREN {
        // Function pointer with params: (*fp)(int, float)
        $$ = $1;
        $$->isFunction = true;
        $$->paramTypes = new vector<TypeInfo>(*$3);
        delete $3;
    }
    | parameter_direct_declarator LPAREN RPAREN {
        // Function pointer with no params: (*fp)()
        $$ = $1;
        $$->isFunction = true;
        $$->paramTypes = new vector<TypeInfo>();
    }
	;

//------------------------ Simply expressions - used in RHS of initializers -----------------------------------------------------

primary_expression
    : IDENTIFIER { 
        SymbolEntry entry;
        // First, check if it's a variable (including enumerators)
        if (lookup_symbol(*$1, entry)) {
            $$ = new TypeInfo(entry.type);  // Copy type from symbol table
            $$->identifier = *$1;  // Store identifier name
            $$->isLiteral = false;
            
            // Check if it's a const enumerator
            if (entry.isConst) {
                $$->isLvalue = false;  // Const enumerators are not lvalues
                cout << "Found enum constant: " << *$1 << " with value " << entry.constValue << "\n";
                $$->result = new_constant(to_string(entry.constValue));
            } 
            // Check if it's a reference - auto-dereference it
            else if (entry.type.isReference) {
                $$->isLvalue = true;   // Dereferenced references are lvalues
                cout << "Found reference: " << *$1 << " of type " << $$->toString() << " (auto-dereferencing)\n";
                
                // The reference variable stores an address, dereference it
                TACOperand* ref_var = new_identifier(entry.mangledName);
                TACOperand* temp = new_temp_var();
                TACInstruction* deref_inst = emit(TAC_OPERATOR_DEREF, temp, ref_var, new_empty_var(), 0);
                $$->code.push_back(deref_inst);
                $$->result = temp;
                
                // The type info should reflect what the reference refers to, not the reference itself
                $$->isReference = false;  // After dereferencing, it's no longer a reference
            } else {
                $$->isLvalue = true;   // Regular variables are lvalues
                cout << "Found variable: " << *$1 << " of type " << $$->toString() << "\n";
                $$->result = new_identifier(entry.mangledName);
            }
        } 
        // If not a variable, check if it might be a function
        else if (is_function_name(*$1)) {

             $$ = new TypeInfo();
            $$->baseType = "function";  // Mark as function type
            $$->identifier = *$1;       // Store function name
            $$->isLiteral = false;
            $$->isLvalue = false;       // Function names are not lvalues
            cout << "Found function name: " << *$1 << "\n";

            $$->result = new_identifier(*$1); // Function names can be used as pointers to functions
        }
        // Otherwise, it's undefined
        else {
            check_variable_declaration(*$1);
            $$ = new TypeInfo();
            $$->baseType = "error";
            $$->identifier = *$1;
            $$->isLvalue = false;
            type_error("Undefined variable: " + *$1);
        }
        delete $1;
    }                                 
    | INT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "int";
        $$->isLiteral = true;
        $$->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << $1 << " (type: int)\n";

        $$->result = new_constant(to_string($1));


    }
    | FLOAT_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "float";
        $$->isLiteral = true;
        $$->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << $1 << " (type: float)\n";

        string floatStr = float_to_string_conversion($1);
        $$->result = new_constant(floatStr);

    }
    | CHAR_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "char";
        $$->isLiteral = true;
        $$->isLvalue = false;  // Literals are not lvalues
        cout << "Char literal: " << *$1 << " (type: char)\n";

        string charStr = char_to_string_conversion((*$1)[1]); // Extract char from string literal format 'c'
        $$->result = new_constant(charStr);
        delete $1;
    }
    | STRING_LITERAL { 
        $$ = new TypeInfo();
        $$->baseType = "char";
        $$->pointerLevel = 1;  
        $$->isLiteral = true;
        $$->isLvalue = false;  // Literals are not lvalues (even though string literals are somewhat special in C)
        cout << "String literal: " << *$1 << " (type: string)\n";

        $$->result = new_string(*$1);


        delete $1;
    }
	| NULL_LITERAL { 
        //abhi dekhna hai isko 
        //leave it for now
        $$ = new TypeInfo();
        $$->baseType = "void";
        $$->pointerLevel = 1;  // NULL is a void pointer
        $$->isLiteral = true;
        $$->isLvalue = false;  // NULL is not an lvalue
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
		if (!base->isArray && base->pointerLevel == 0) {
			type_error("Subscript operator [] can only be applied to arrays or pointers");
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (!is_integer_type(index->baseType)) {
			type_error("Array index must be an integer type, got " + index->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			// Result is the base type but with one dimension removed
			$$ = new TypeInfo(*base);
			
			if (base->isArray) {
				// Handle multidimensional arrays
                cout<<"Handling array subscript for base type: " << base->toString() << "\n";
				if (base->arrayDimensions.size() > 1) {
					// Remove only the first dimension, keep the rest
					$$->isArray = true;
					$$->arrayDimensions = vector<int>(base->arrayDimensions.begin() + 1, base->arrayDimensions.end());
				} else {
					// Single dimension array becomes base type
					$$->isArray = false;
					$$->arrayDimensions.clear();
				}
                //print base now
                cout<<"Resulting type after subscript: " << $$->toString() << "\n";
			} else {
				// Handle pointers - only allow one level pointers for subscript
                cout<<"Handling pointer subscript for base type: " << base->toString() << "\n";
				if (base->pointerLevel > 1) {
					type_error("Subscript operator [] can only be applied to single-level pointers, not multi-level pointers like " + base->toString());
					$$->baseType = "error";
				} else {
					// For single-level pointers, decrement pointer level
					$$->pointerLevel = base->pointerLevel > 0 ? base->pointerLevel - 1 : 0;
					$$->isArray = false;
					$$->arrayDimensions.clear();
				}
                cout<<"Resulting type after subscript: " << $$->toString() << "\n";
			}

        
			
			$$->isLiteral = false;
			// Array subscript result is an lvalue if the base is an lvalue
			$$->isLvalue = base->isLvalue;

            int size_of_base = getSize(*$$);
            
            TACOperand* offset = new_temp_var();
            TACInstruction* i1 = emit(TAC_OPERATOR_MUL, offset, index->result, new_constant(to_string(size_of_base)),0);

            // base address is &base->result

            TACOperand* base_addr = new_temp_var();
            TACInstruction* i_base = emit(TAC_OPERATOR_ADDR_OF, base_addr, base->result, new_empty_var(),0);

            TACOperand* address = new_temp_var();
            TACInstruction* i2 = emit(TAC_OPERATOR_ADD, address, base_addr, offset,0);
            $$->result = new_temp_var();
            TACInstruction* i3 = emit(TAC_OPERATOR_DEREF, $$->result, address, new_empty_var(),0);
            $$->code.insert($$->code.end(), base->code.begin(), base->code.end());
            $$->code.insert($$->code.end(), index->code.begin(), index->code.end());
            $$->code.push_back(i1);
            $$->code.push_back(i_base);
            $$->code.push_back(i2);
            $$->code.push_back(i3);

		}
		delete $1; delete $3;
	}
	| postfix_expression LPAREN RPAREN {                               /* e.g., func() or (*fp)() */
		// Function call with no arguments (direct call or through function pointer)
		TypeInfo* base = $1;
		
		// Check if base is a function pointer that needs to be called
		if (base->isFunctionPointer && base->returnType && base->parameterTypes) {
			// This is a function pointer call: (*fp)()
			// Check parameter count
			if (base->parameterTypes->size() != 0) {
				type_error("Function pointer call expects " + to_string(base->parameterTypes->size()) + 
				          " arguments but got 0");
				$$ = new TypeInfo();
				$$->baseType = "error";
			} else {
				// Return type is the function pointer's return type
				$$ = new TypeInfo(*base->returnType);
				$$->isLiteral = false;
				$$->isLvalue = false;
				cout << "Function pointer call: " << base->identifier << "() -> " << $$->toString() << "\n";
				
				// Generate 3AC for indirect function call
				$$->code = base->code;
				$$->result = new_temp_var();
				TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
				                            $$->result, 
				                            base->result,  // Use the function pointer variable
				                            new_constant("0"), 0);
				$$->code.push_back(callInstr);
			}
		} else if (!base->identifier.empty()) {
			// Regular function call by name
			vector<TypeInfo> emptyArgs;
			FunctionEntry* func = lookup_function(base->identifier, emptyArgs);
			
			if (func) {
				$$ = new TypeInfo(func->returnType);
				$$->isLiteral = false;
				cout << "Function call: " << base->identifier << "() -> " << $$->toString() << "\n";
                // Generate the call instruction
                $$->result = new_temp_var();
                TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
                                            $$->result, 
                                            new_identifier(func->mangledName), 
                                            new_constant("0"), 0);
                $$->code.push_back(callInstr);
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
	| postfix_expression LPAREN argument_expression_list RPAREN {      /* e.g., func(a,b) or (*fp)(a,b) */
		// Function call with arguments (direct call or through function pointer)
		TypeInfo* base = $1;
		vector<TypeInfo>* argTypes = $3;

		// Check if base is a function pointer that needs to be called
		if (base->isFunctionPointer && base->returnType && base->parameterTypes && argTypes) {
			// This is a function pointer call: (*fp)(args)
			// Check parameter count
            cout<<"Hello from function pointer call with arguments\n";
			if (base->parameterTypes->size() != argTypes->size()) {
				type_error("Function pointer call expects " + to_string(base->parameterTypes->size()) + 
				          " arguments but got " + to_string(argTypes->size()));
				$$ = new TypeInfo();
				$$->baseType = "error";
			} else {
				// Check parameter types
				bool compatible = true;
				for (size_t i = 0; i < argTypes->size(); i++) {
					if (!types_compatible((*base->parameterTypes)[i], (*argTypes)[i])) {
						type_error("Argument " + to_string(i+1) + " type mismatch: expected " + 
						          (*base->parameterTypes)[i].toString() + " but got " + 
						          (*argTypes)[i].toString());
						compatible = false;
					}
				}
				
				if (compatible) {
					// Return type is the function pointer's return type
					$$ = new TypeInfo(*base->returnType);
					$$->isLiteral = false;
					$$->isLvalue = false;
					$$->code = base->code;
					
					cout << "Function pointer call with " << argTypes->size() << " arguments -> " << $$->toString() << "\n";
					
					// Generate 3AC for arguments and call
					int no_of_args = argTypes->size();
					for(int i = 0; i < no_of_args; i++) {
						$$->code.insert($$->code.end(), (*argTypes)[i].code.begin(), (*argTypes)[i].code.end());
					}
					for(int i = 0; i < no_of_args; i++) {
						// Check if parameter is a reference
						if ((*base->parameterTypes)[i].isReference) {
							// For reference parameters, check if argument is lvalue
							if (!(*argTypes)[i].isLvalue) {
								type_error("Cannot bind non-lvalue to reference parameter " + to_string(i+1) + " in function pointer call");
							}
							
							// References require EXACT type match
							TypeInfo expectedType = (*base->parameterTypes)[i];
							expectedType.isReference = false;
							
							TypeInfo actualType = (*argTypes)[i];
							actualType.isReference = false;
							
							if (expectedType.baseType != actualType.baseType ||
								expectedType.pointerLevel != actualType.pointerLevel ||
								expectedType.isArray != actualType.isArray ||
								expectedType.isStruct != actualType.isStruct ||
								expectedType.isUnion != actualType.isUnion ||
								(expectedType.isStruct && expectedType.structUnionName != actualType.structUnionName) ||
								(expectedType.isUnion && expectedType.structUnionName != actualType.structUnionName)) {
								type_error("Argument " + to_string(i+1) + " type mismatch in function pointer call: reference parameter '" + 
										  (*base->parameterTypes)[i].toString() + "' cannot bind to '" + 
										  (*argTypes)[i].toString() + "' (exact type match required)");
							}
							
							// Pass address of the argument
							TACOperand* addr = new_temp_var();
							TACInstruction* addr_inst = emit(TAC_OPERATOR_ADDR_OF, addr, (*argTypes)[i].result, new_empty_var(), 0);
							$$->code.push_back(addr_inst);
							
							TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
														addr, 
														new_empty_var(), 
														new_empty_var(), 0);
							$$->code.push_back(argInstr);
						} else {
							// Type conversion if needed for non-reference parameters
							pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = 
								change_type_rhs_to_lhs((*base->parameterTypes)[i], (*argTypes)[i]);
							$$->code.insert($$->code.end(), promo.first.begin(), promo.first.end());
							
							// Pass the argument
							TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
														promo.second.second, 
														new_empty_var(), 
														new_empty_var(), 0);
							$$->code.push_back(argInstr);
						}
					}
					
					// Generate indirect call instruction
					$$->result = new_temp_var();
					TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
					                            $$->result, 
					                            base->result,  // Use the function pointer variable
					                            new_constant(to_string(no_of_args)), 0);
					$$->code.push_back(callInstr);
				} else {
					$$ = new TypeInfo();
					$$->baseType = "error";
				}
			}
		} else if (!base->identifier.empty() && argTypes) {
			// Regular function call by name
			FunctionEntry* func = lookup_function(base->identifier, *argTypes);
			
			if (func) {
				$$ = new TypeInfo(func->returnType);
				$$->isLiteral = false;
                $$->code = vector<TACInstruction*>();
				//cout << "Function call: " << base->identifier << "(...) -> " << $$->toString() << "\n";
                int no_of_args = argTypes->size();
                for(int i=0;i<no_of_args;i++){
                    $$->code.insert($$->code.end(), (*argTypes)[i].code.begin(), (*argTypes)[i].code.end());
                }

                // Pass arguments with type conversion for fixed parameters
                int no_of_fixed_params = func->parameters.size();
                for(int i=0;i<no_of_args;i++){
                    if (i < no_of_fixed_params) {
                       // Check if parameter is a reference
                        if (func->parameters[i].type.isReference) {
                            // For reference parameters, check if argument is lvalue
                            if (!(*argTypes)[i].isLvalue) {
                                type_error("Cannot bind non-lvalue to reference parameter " + to_string(i+1));
                            }
                            
                            // References require EXACT type match - no implicit conversions
                            TypeInfo expectedType = func->parameters[i].type;
                            expectedType.isReference = false;  // Compare underlying type
                            
                            TypeInfo actualType = (*argTypes)[i];
                            actualType.isReference = false;    // Compare underlying type
                            
                            // Check exact type match
                            if (expectedType.baseType != actualType.baseType ||
                                expectedType.pointerLevel != actualType.pointerLevel ||
                                expectedType.isArray != actualType.isArray ||
                                expectedType.isStruct != actualType.isStruct ||
                                expectedType.isUnion != actualType.isUnion ||
                                (expectedType.isStruct && expectedType.structUnionName != actualType.structUnionName) ||
                                (expectedType.isUnion && expectedType.structUnionName != actualType.structUnionName)) {
                                type_error("Argument " + to_string(i+1) + " type mismatch: reference parameter '" + 
                                          func->parameters[i].type.toString() + "' cannot bind to '" + 
                                          (*argTypes)[i].toString() + "' (exact type match required)");
                            }
                            
                            // Pass address of the argument
                            TACOperand* addr = new_temp_var();
                            TACInstruction* addr_inst = emit(TAC_OPERATOR_ADDR_OF, addr, (*argTypes)[i].result, new_empty_var(), 0);
                            $$->code.push_back(addr_inst);
                            
                            TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                        addr, 
                                                        new_empty_var(), 
                                                        new_empty_var(), 0);
                            $$->code.push_back(argInstr);
                        } else {
                            // For non-reference parameters, do type conversion
                            pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = 
                                change_type_rhs_to_lhs(func->parameters[i].type, (*argTypes)[i]);
                            $$->code.insert($$->code.end(), promo.first.begin(), promo.first.end());
                            TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                        promo.second.second, 
                                                        new_empty_var(), 
                                                        new_empty_var(), 0);
                            $$->code.push_back(argInstr);
                        }
                    } else {
                        // For variadic arguments, pass as-is (no type checking/conversion)
                        TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                    (*argTypes)[i].result, 
                                                    new_empty_var(), 
                                                    new_empty_var(), 0);
                        $$->code.push_back(argInstr);
                    }
                }

                // Now generate the call instruction
                $$->result = new_temp_var();
                TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
                                            $$->result, 
                                            new_identifier(func->mangledName),
                                            new_constant(to_string(no_of_args)), 0);
                $$->code.push_back(callInstr);
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
		// Struct member access - obj.member
		TypeInfo* base = $1;
		string memberName = *$3;
		
		// Check if base is a struct/union type
		if (base->pointerLevel > 0 || base->isArray) {
			type_error("Dot operator requires a struct/union object, not a pointer. Use '->' for pointers.");
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (!base->isStruct && !base->isUnion) {
			type_error("Dot operator requires a struct/union type, got: " + base->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			// Use the structDef from TypeInfo
			StructUnionDef* structDef = base->structDef;
			
			if (!structDef) {
				type_error("Struct/union definition not found for type: " + base->toString());
				$$ = new TypeInfo();
				$$->baseType = "error";
			} else {
				// Find the member
				StructMember* member = find_member(structDef, memberName);
				
				if (!member) {
					type_error("Struct/union '" + base->structUnionName + "' has no member named '" + memberName + "'");
					$$ = new TypeInfo();
					$$->baseType = "error";
				} else {
					// Result is the member type
					$$ = new TypeInfo(member->type);
					$$->isLvalue = true;  // Member access is an lvalue
					$$->isLiteral = false;
					
					// TAC: Calculate member address
					// base_addr = &base
					// result_addr = base_addr + offset
					// result = *result_addr (if we need the value)
					
					$$->code = base->code;
					
					TACOperand* base_addr = new_temp_var();
					TACInstruction* addr_instr = emit(TACOperator(TAC_OPERATOR_ADDR_OF), base_addr, base->result, new_empty_var(), 0);
					$$->code.push_back(addr_instr);
					
					TACOperand* member_addr = new_temp_var();
					TACInstruction* offset_instr = emit(TACOperator(TAC_OPERATOR_ADD), member_addr, base_addr, 
					                                    new_constant(to_string(member->offset)), 0);
					$$->code.push_back(offset_instr);
					
					// The result is the dereferenced member address
					$$->result = new_temp_var();
					TACInstruction* deref_instr = emit(TACOperator(TAC_OPERATOR_DEREF), $$->result, member_addr, new_empty_var(), 0);
					$$->code.push_back(deref_instr);
					
					cout << "Struct member access: " << base->toString() << "." << memberName 
					     << " -> " << $$->toString() << " at offset " << member->offset << "\n";
				}
			}
		}
		
		delete $1; delete $3;
	}
	| postfix_expression ARROW IDENTIFIER {                             /* e.g., ptr->field */
		// Struct pointer member access - ptr->member
		TypeInfo* base = $1;
		string memberName = *$3;
		
		// Check if base is a pointer to struct/union
		if (base->pointerLevel == 0) {
			type_error("Arrow operator requires a pointer to struct/union. Use '.' for objects.");
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else if (!base->isStruct && !base->isUnion) {
			type_error("Arrow operator requires a pointer to struct/union type, got: " + base->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			// Use the structDef from TypeInfo
			StructUnionDef* structDef = base->structDef;
			
			if (!structDef) {
				type_error("Struct/union definition not found for type: " + base->toString());
				$$ = new TypeInfo();
				$$->baseType = "error";
			} else {
				// Find the member
				StructMember* member = find_member(structDef, memberName);
				
				if (!member) {
					type_error("Struct/union '" + base->structUnionName + "' has no member named '" + memberName + "'");
					$$ = new TypeInfo();
					$$->baseType = "error";
				} else {
					// Result is the member type
					$$ = new TypeInfo(member->type);
					$$->isLvalue = true;  // Member access is an lvalue
					$$->isLiteral = false;
				
					
					$$->code = base->code;
					
					TACOperand* member_addr = new_temp_var();
					TACInstruction* offset_instr = emit(TACOperator(TAC_OPERATOR_ADD), member_addr, base->result, 
					                                    new_constant(to_string(member->offset)), 0);
					$$->code.push_back(offset_instr);
					
					// The result is the dereferenced member address
					$$->result = new_temp_var();
					TACInstruction* deref_instr = emit(TACOperator(TAC_OPERATOR_DEREF), $$->result, member_addr, new_empty_var(), 0);
					$$->code.push_back(deref_instr);
					
					cout << "Struct pointer member access: " << base->toString() << "->" << memberName 
					     << " -> " << $$->toString() << " at offset " << member->offset << "\n";
				}
			}
		}
		
		delete $1; delete $3;
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
        TypeInfo argType = *$1;
        $$->push_back(argType);
        delete $1;
	}
	| argument_expression_list COMMA assignment_expression {           /* e.g., x, y */
        TypeInfo argType = *$3;
        $$ = $1;
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
        delete $2;
	}
	| SIZEOF unary_expression { 
		$$ = new TypeInfo();
		$$->baseType = "int";  // sizeof always returns int
		$$->isLiteral = true;

        // 3AC code for sizeof
        int size = getSize(*$2);
        $$->result = new_temp_var();
        TACInstruction* sizeInstr = emit(TACOperator(), $$->result, new_constant(to_string(size)), new_empty_var(), 0);
        $$->code = vector<TACInstruction*>();
        
        for(auto instr : $2->code){
            $$->code.push_back(instr);
        }
        $$->code.push_back(sizeInstr);

		delete $2;
	}
	| SIZEOF LPAREN type_specifier RPAREN { 
		$$ = new TypeInfo();
        $$->baseType = "int";  // sizeof always returns int
        $$->isLiteral = true;

        // 3AC code for sizeof(type)
        int size = getSize(*$3);
        $$->result = new_temp_var();
        TACInstruction* sizeInstr = emit(TACOperator(), $$->result, new_constant(to_string(size)), new_empty_var(), 0);
        $$->code = vector<TACInstruction*>();
        $$->code.push_back(sizeInstr);

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

        // CHECK COMPATIBILITY
        //pending
        // if (!are_types_compatible_for_casting(*target_type, *source_type)) {
        //     type_error("Incompatible types for casting from " + source_type->toString() + " to " + target_type->toString());
        //     $$ = new TypeInfo();
        //     $$->baseType = "error";
        //     delete $2; delete $4;
        //     return;
        // }
        
		
		// Perform type casting 
        pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = change_type_rhs_to_lhs(*target_type, *source_type);
        $$ = new TypeInfo(*target_type);
        $$->isLiteral = false; // Result of cast is not a literal
        $$->result = promo.second.second;
        $$->code = vector<TACInstruction*>();
        // Carry over the code from the source expression
        $$->code.insert($$->code.end(), source_type->code.begin(), source_type->code.end());
        // Append the casting instructions
        $$->code.insert($$->code.end(), promo.first.begin(), promo.first.end());
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
		if (!is_integer_type($1->baseType) || $1->pointerLevel > 0 || $1->isArray ||
		    !is_integer_type($3->baseType) || $3->pointerLevel > 0 || $3->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + $1->toString() + ", Right: " + $3->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			$$ = new TypeInfo(*$1);
			if ($$->baseType == "char") $$->baseType = "int"; // Promote char to int
			cout << "Left shift: " << $1->toString() << " << " << $3->toString() << " -> " << $$->toString() << "\n";
            // now 3AC code
            //if any operand is char, promote to int
            TACOperand* left_op = $1->result;
            TACOperand* right_op = $3->result;
            if($1->baseType == "char"){
                left_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, left_op, $1->result, new_type("int"),0);
                $$->code.push_back(promo);
            }
            if($3->baseType == "char"){
                right_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, right_op, $3->result, new_type("int"),0);
                $$->code.push_back(promo);
            }
            TACOperand* result_op = new_temp_var();
            TACInstruction* shift_instr = emit(TAC_OPERATOR_LEFT_SHIFT, result_op, left_op, right_op,0);
            $$->code.push_back(shift_instr);

		}
		delete $1; delete $3;
	}
	| shift_expression RIGHT_SHIFT additive_expression {                     /* e.g., a >> b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type($1->baseType) || $1->pointerLevel > 0 || $1->isArray ||
		    !is_integer_type($3->baseType) || $3->pointerLevel > 0 || $3->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + $1->toString() + ", Right: " + $3->toString());
			$$ = new TypeInfo();
			$$->baseType = "error";
		} else {
			$$ = new TypeInfo(*$1);
			if ($$->baseType == "char") $$->baseType = "int"; // Promote char to int
			cout << "Right shift: " << $1->toString() << " >> " << $3->toString() << " -> " << $$->toString() << "\n";

            TACOperand* left_op = $1->result;
            TACOperand* right_op = $3->result;
            if($1->baseType == "char"){
                left_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, left_op, $1->result, new_type("int"),0);
                $$->code.push_back(promo);
            }
            if($3->baseType == "char"){
                right_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, right_op, $3->result, new_type("int"),0);
                $$->code.push_back(promo);
            }
            TACOperand* result_op = new_temp_var();
            TACInstruction* shift_instr = emit(TAC_OPERATOR_RIGHT_SHIFT, result_op, left_op, right_op,0);
            $$->code.push_back(shift_instr);
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

logical_and_expression
	: inclusive_or_expression { $$ = $1; }
	| logical_and_expression LOGICAL_AND { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, $1->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        $1->code.push_back(if_true);
        $1->code.push_back(goto_false);
        $1->false_list.insert(goto_false);
    } inclusive_or_expression { 
		// Short-circuit logical AND
        TypeInfo* left = $1;
        TypeInfo* right = $4;
        
        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in logical AND operation");
        }else{
            // okay for all other types
            $$ = new TypeInfo();
            $$->baseType = "int"; // Result of logical operations is int
            $$->isLiteral = false;
            $$->isLvalue = false;
            cout << "Logical AND: " << left->toString() << " && " << right->toString() << " -> int\n";

            
            $$->result = new_temp_var();
            $$->code = left->code;
            $$->code.insert($$->code.end(), right->code.begin(), right->code.end());


            TACOperand* true_label = new_label(2);
            TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, right->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
            TACOperand* false_label = new_label(3);
            TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), false_label, new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
            TACInstruction* assign_true = emit(TACOperator(TAC_OPERATOR_NOP), $$->result, new_constant("1"), new_empty_var(),0); // result = 1
            TACOperand* end_label = new_label(2);
            TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), end_label, new_empty_var(), new_empty_var(), 1); // goto ___
            TACInstruction* assign_false = emit(TACOperator(TAC_OPERATOR_NOP), $$->result, new_constant("0"), new_empty_var(),0); // result = 0
            // backpatching
            if (!left->false_list.empty()) {
                backpatch(left->false_list, false_label);
            }
            if (!right->false_list.empty()) {
                backpatch(right->false_list, false_label);
            }
            $$->code.push_back(if_true);
            $$->code.push_back(goto_false);
            $$->code.push_back(assign_true);
            $$->code.push_back(goto_end);
            $$->code.push_back(assign_false);

            delete left;
            delete right;

        }
    }
    ;

logical_or_expression
	: logical_and_expression { $$ = $1; }
	| logical_or_expression LOGICAL_OR {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), $1->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        $1->code.push_back(go_true);
        $1->true_list.insert(go_true);
    } logical_and_expression { 
		// short circuit
        
        TypeInfo* left = $1;
        TypeInfo* right = $4;


        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in bitwise OR operation");
        }else{
            // okay for all other types
            $$ = new TypeInfo();
            $$->baseType = "int"; // Result of bitwise operations is int
            $$->isLiteral = false;
            $$->isLvalue = false;
            cout << "Bitwise OR: " << left->toString() << " | " << right->toString() << " -> int\n";
            $$->result = new_temp_var();
            $$->code = left->code;
            $$->code.insert($$->code.end(), right->code.begin(), right->code.end());
            TACOperand* true_label = new_label(2);
            TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, right->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
            TACOperand* false_label = new_label(3);
            TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), false_label, new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
            TACInstruction* assign_true = emit(TACOperator(TAC_OPERATOR_NOP), $$->result, new_constant("1"), new_empty_var(),0); // result = 1
            TACOperand* end_label = new_label(2);
            TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), end_label, new_empty_var(), new_empty_var(), 1); // goto ___
            TACInstruction* assign_false = emit(TACOperator(TAC_OPERATOR_NOP), $$->result, new_constant("0"), new_empty_var(),0); // result = 0

            //backpatching
            if (!left->true_list.empty()) {
                backpatch(left->true_list, true_label);
            }
            if (!right->true_list.empty()) {
                backpatch(right->true_list, true_label);
            }

            $$->code.push_back(if_true);
            $$->code.push_back(goto_false);
            $$->code.push_back(assign_true);
            $$->code.push_back(goto_end);
            $$->code.push_back(assign_false);


            delete left;
            delete right;
            
        }
    }
	;

conditional_expression
	: logical_or_expression                                            /* e.g., x */ {
        $$ = $1;  // No conditional, just pass through
    }
	;

assignment_expression
	: conditional_expression { $$ = $1;}
	| unary_expression assignment_operator assignment_expression { 
		// Type checking for assignment
		TypeInfo* lhs_type = $1;
		TypeInfo* rhs_type = $3;
		
		// Check if left-hand side is a valid lvalue
		if (!is_lvalue(*lhs_type)) {
			type_error("Cannot assign to " + lhs_type->toString() + " - not an lvalue");
			$$ = new TypeInfo();
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
			$$->baseType = "error";
		} else if (!is_implicit_conversion_allowed(*rhs_type, *lhs_type)) {
			type_error("Cannot assign " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo();
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
			$$->baseType = "error";
		} else if (is_narrowing_conversion(*rhs_type, *lhs_type)) {
			type_warning("Narrowing conversion from " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            $$->result = cast_result.second.first; // Result after casting
            $$->code = lhs_type->code;
            $$->code.insert($$->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            $$->code.insert($$->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, $$->result, new_empty_var(),0); // lhs = rhs
            $$->code.push_back(assign_inst);
		} else {
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
			$$->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            $$->result = cast_result.second.first; // Result after casting
            $$->code = lhs_type->code;
            $$->code.insert($$->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            $$->code.insert($$->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, $$->result, new_empty_var(),0); // lhs = rhs
            $$->code.push_back(assign_inst);
		}

		
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
		$$ = new TypeInfo(*$3);
        $$->isLvalue = false;  // Result of comma operator is not an
        $$->code = $1->code;
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
		delete $1;
        delete $3;
	}
	;

constant_expression
	: conditional_expression { 
		$$ = $1;
	}
	;

// -------------------------------------------- Structs and Enums -----------------------------------------------------

struct_or_union_specifier
	: struct_or_union IDENTIFIER LBRACE {
		// Initialize the global member list for this struct
		current_struct_members = new vector<StructMember>();
		// Track the struct/union name being defined (for self-referential pointers)
		current_struct_being_defined = (*$1 == "union" ? "union " : "struct ") + *$2;
	} struct_declaration_list RBRACE {  // e.g., struct S { int x; float y; };
		// This defines a new struct/union
		bool isUnion = (*$1 == "union");
		string structName = *$2;
		
		// Use the global member list
		if (current_struct_members) {
            //check if all data members have unique names
            set<string> memberNames;
            int error_flag=0;
            for(auto member : *current_struct_members){
                if(memberNames.find(member.name) != memberNames.end()){
                    type_error("Duplicate member name '" + member.name + "' in struct/union '" + structName + "'");
                    error_flag=1;
                }else{
                    memberNames.insert(member.name);
                }
            }
            if(error_flag==0){
                insert_struct_union(structName, isUnion, *current_struct_members, current_scope_level);
                delete current_struct_members;
                current_struct_members = nullptr;
            }else{
                //cleanup
                delete current_struct_members;
                current_struct_members = nullptr;
                type_error("Failed to define struct/union '" + structName + "' due to duplicate member names.");
            }
		}
		
		// Clear the current struct being defined
		current_struct_being_defined = "";
		
		// Create and return TypeInfo
		$$ = new TypeInfo();
		$$->isStruct = !isUnion;
		$$->isUnion = isUnion;
		$$->structUnionName = structName;
		$$->structDef = lookup_struct_union(structName);
		$$->baseType = *$1 + " " + structName; // For compatibility and toString()
		
		if ($$->structDef == nullptr) {
			type_error("Failed to register struct/union: " + structName);
		}
		
		delete $1; delete $2;
	}   /* e.g., struct S { int x; };*/  
    // anonymous struct/union
    // -------------------------    -----------------------------
    // naya
    |  struct_or_union LBRACE {
        // Initialize the global member list for this struct
        current_struct_members = new vector<StructMember>();
        // Track the struct/union name being defined (for self-referential pointers)
        string structType = (*$1 == "union" ? "union " : "struct ");
        current_struct_being_defined = structType + "<anonymous>" + "_" + to_string(anonymous_struct_counter++);

    } struct_declaration_list RBRACE {  // e.g., struct { int x
        // This defines a new anonymous struct/union
        bool isUnion = (*$1 == "union");
        string structName = string("<anonymous>") + "_" + to_string(anonymous_struct_counter - 1);
        
        // Use the global member list
        if (current_struct_members) {
            insert_struct_union(structName, isUnion, *current_struct_members, current_scope_level);
            delete current_struct_members;
            current_struct_members = nullptr;
        }
        
        // Clear the current struct being defined
        current_struct_being_defined = "";
        
        // Create and return TypeInfo
        $$ = new TypeInfo();
        $$->isStruct = !isUnion;
        $$->isUnion = isUnion;
        $$->structUnionName = structName;
        $$->structDef = lookup_struct_union(structName);
        $$->baseType = *$1 + " " + structName; // For compatibility and toString()
        
        if ($$->structDef == nullptr) {
            type_error("Failed to register anonymous struct/union");
        }
        
        delete $1;
    }
	| struct_or_union IDENTIFIER {  // e.g., struct S; or using existing struct S
		// Reference to existing struct/union or forward declaration
		bool isUnion = (*$1 == "union");
		string structName = *$2;
		
		$$ = new TypeInfo();
		$$->isStruct = !isUnion;
		$$->isUnion = isUnion;
		$$->structUnionName = structName;
		$$->structDef = lookup_struct_union(structName);
		$$->baseType = *$1 + " " + structName; // For compatibility and toString()
		
		if ($$->structDef == nullptr) {
			type_warning("Using undefined struct/union: " + structName + " (forward declaration or error)");
		}
		
		delete $1; delete $2;
	}                                           /* e.g., struct S */ 
	;

struct_or_union
	: STRUCT { $$ = new string("struct"); }                                                            /* struct */	
    | UNION { $$ = new string("union"); }                                                              /* union */										 						 						
	;

struct_declaration_list
	: struct_declaration 
	| struct_declaration_list struct_declaration 
    | /* epsilon */ 
	;

// NO STATIC WAS ALLOWED IN C STRUCTS
struct_declaration
	: type_specifier struct_declarator_list SEMICOLON {
		// For each declarator, create a StructMember and add to current_struct_members
        for (auto declInfo : *$2) {
            StructMember member;
            member.name = declInfo->name; // Use -> since declInfo is a pointer
            member.type = TypeInfo(*$1); // Base type from type_specifier
            member.type.pointerLevel = declInfo->pointerLevel;
            member.type.isArray = declInfo->isArray;
            member.type.arrayDimensions = declInfo->arrayDimensions; // Fixed: was arraySizes
            
            // Validate: if this is a struct/union type and NOT a pointer, it must be complete
            if ((member.type.isStruct || member.type.isUnion) && member.type.pointerLevel == 0 && !member.type.isArray) {
                string memberTypeName = (member.type.isStruct ? "struct " : "union ") + member.type.structUnionName;
                
                // Special case: allow pointers to the struct being currently defined (self-referential)
                // but disallow direct members of the same type
                if (memberTypeName == current_struct_being_defined) {
                    // This is the struct/union being defined - it's incomplete
                    type_error("Incomplete type '" + memberTypeName + 
                              "' used as struct member '" + member.name + "'. Use pointer for self-referential structure.");
                } else {
                    // Check if other struct/union is defined
                    StructUnionDef* structDef = lookup_struct_union(member.type.structUnionName);
                    if (structDef == nullptr) {
                        type_error("Incomplete type '" + memberTypeName + 
                                  "' used as struct member '" + member.name + "'. Use pointer instead.");
                    }
                }
            }
            
            // Calculate offset for this member
            int offset = 0;
            if (!current_struct_members->empty()) {
                // Get the last member
                StructMember& lastMember = current_struct_members->back();
                // Offset = last member's offset + last member's size
                offset = lastMember.offset + getSize(lastMember.type);
            }
            member.offset = offset;
            
            current_struct_members->push_back(member);
            
            cout << "Struct member: " << member.name << " of type " << member.type.toString() 
                 << " at offset " << member.offset << "\n";
        }
        delete $1;
        delete $2;
    }
    ;

struct_declarator_list
	: struct_declarator {
		$$ = new vector<DeclaratorInfo*>();
        $$->push_back($1); // $1 is already a pointer
    }
    | struct_declarator_list COMMA struct_declarator {
        $$ = $1;
        $$->push_back($3); // $3 is already a pointer
    }

struct_declarator
	: declarator {
        $$ = $1;
    }
    ;

//---------------------------------------- Pointers --------------------------------------------------

reference
    : BIT_AND {                                /* e.g., & */
        $$ = 1;  // Flag indicating reference
    }
    ;

pointer
    : STAR {                                   /* e.g., * */
        $$ = 1;  // Return pointer level instead of TypeInfo
    }
    | STAR pointer {                           /* e.g., ** or *** etc. */
        $$ = $2 + 1;  // Increment pointer level for each * encountered
    }
    ;

// short circuited logical and and or expressions 
//----------------------------------------------------------------------------------------------------------


short_circuited_logical_and_expression
	: inclusive_or_expression { $$ = $1; }
	| short_circuited_logical_and_expression LOGICAL_AND { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, $1->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        $1->code.push_back(if_true);
        $1->code.push_back(goto_false);
        $1->false_list.insert(goto_false);
    } inclusive_or_expression { 
		// Short-circuit logical AND
        cout<<"Entered short circuited logical and expression\n";
        TypeInfo* left = $1;
        TypeInfo* right = $4;
        
        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in logical AND operation");
        }else{
            // okay for all other types
            $$ = new TypeInfo();
            $$->baseType = "int"; // Result of logical operations is int
            $$->isLiteral = false;
            $$->isLvalue = false;
            cout << "Short circuted Logical AND: " << left->toString() << " && " << right->toString() << " -> int\n";

            
            $$->result = new_temp_var();
            $$->code = left->code;
            $$->code.insert($$->code.end(), right->code.begin(), right->code.end());


            $$->true_list = right->true_list;
            $$->false_list = left->false_list;
            $$->false_list.insert(right->false_list.begin(), right->false_list.end());

            delete left;
            delete right;

        }
    }
    ;

short_circuited_logical_or_expression
	: short_circuited_logical_and_expression { $$ = $1; }
	| short_circuited_logical_or_expression LOGICAL_OR {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), $1->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        $1->code.push_back(go_true);
        $1->true_list.insert(go_true);
    } short_circuited_logical_and_expression { 
		// short circuit
        
        TypeInfo* left = $1;
        TypeInfo* right = $4;


        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in bitwise OR operation");
        }else{
            // okay for all other types
            $$ = new TypeInfo();
            $$->baseType = "int"; // Result of bitwise operations is int
            $$->isLiteral = false;
            $$->isLvalue = false;
            cout << "Bitwise OR: " << left->toString() << " | " << right->toString() << " -> int\n";
            $$->result = new_temp_var();
            $$->code = left->code;
            $$->code.insert($$->code.end(), right->code.begin(), right->code.end());
            
            $$->true_list = left->true_list;
            $$->true_list.insert(right->true_list.begin(), right->true_list.end());

            delete left;
            delete right;
            
        }
    }
	;

short_circuited_conditional_expression
    : short_circuited_logical_or_expression                                            /* e.g., x */ {
        $$ = $1;  // No conditional, just pass through
    }


short_circuited_assignment_expression
	: short_circuited_conditional_expression { $$ = $1;}
	| unary_expression assignment_operator assignment_expression {  // yeh line dikkat de skti hai in future, because assignment_expression mein short_circuited_assignment_expression hona chahiye
		// Type checking for assignment
		TypeInfo* lhs_type = $1;
		TypeInfo* rhs_type = $3;
		
		// Check if left-hand side is a valid lvalue
		if (!is_lvalue(*lhs_type)) {
			type_error("Cannot assign to " + lhs_type->toString() + " - not an lvalue");
			$$ = new TypeInfo();
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
			$$->baseType = "error";
		} else if (!is_implicit_conversion_allowed(*rhs_type, *lhs_type)) {
			type_error("Cannot assign " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo();
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
			$$->baseType = "error";
		} else if (is_narrowing_conversion(*rhs_type, *lhs_type)) {
			type_warning("Narrowing conversion from " + rhs_type->toString() + " to " + lhs_type->toString());
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
            $$->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            $$->result = cast_result.second.first; // Result after casting
            $$->code = lhs_type->code;
            $$->code.insert($$->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            $$->code.insert($$->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, $$->result, new_empty_var(),0); // lhs = rhs
            $$->code.push_back(assign_inst);
		} else {
			$$ = new TypeInfo(*lhs_type);  // Result type is the LHS type
			$$->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            $$->result = cast_result.second.first; // Result after casting
            $$->code = lhs_type->code;
            $$->code.insert($$->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            $$->code.insert($$->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, $$->result, new_empty_var(),0); // lhs = rhs
            $$->code.push_back(assign_inst);
		}

		delete $1; delete $3;
	}
	;



short_circuited_expression
	: short_circuited_assignment_expression { $$ = $1; }
	| short_circuited_expression COMMA short_circuited_assignment_expression {  // yahan bhi assignment_expression ki jagah short_circuited_assignment_expression likh skte hai, but abhi ke liye nhi likh rhe, although it is correct
		// Comma operator returns the type of the right operand
		$$ = new TypeInfo(*$3);
        $$->isLvalue = false;  // Result of comma operator is not an
        $$->code = $1->code;
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
		delete $1;
        delete $3;
	}
	;

//---------------------------------------- Statements --------------------------------------------------


statement
	: labeled_statement                                                    /* e.g., label: stmt */{
        $$ = $1;
    }
	| compound_statement                                                   /* e.g., { ... } */{
        $$ = $1;
    }
	| expression_statement                                                 /* e.g., x = 1; */{
        $$ = $1;
    }
	| selection_statement                                                  /* e.g., if(expr) stmt */{
        $$ = $1;
    }
	| iteration_statement                                                  /* e.g., while(expr) stmt */{
        $$ = $1;
    }
	| jump_statement                                                        /* e.g., return 0; */{
        $$ = $1;
    }
	| error SEMICOLON { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
	;




labeled_statement
	: IDENTIFIER COLON marker statement                                            /* e.g., label: stmt */{
        $$ = $4;
        if( label_map.find(*$1) != label_map.end() ) {
            type_error("Duplicate label definition: " + *$1);
        }else{
            label_map[*$1] = $3;
            // backpatch any gotos to this label
            backpatch(unresolved_jumps[*$1], $3);
        }
        delete $1;
    }
	| CASE CHAR_LITERAL  { 
        // Check if we're inside a switch statement
        if (switch_case_stack.empty()) {
            type_error("Case label not within a switch statement");
        } else {
            // Convert char to int if needed
            int case_value = 0;

            // CHAR_LITERAL is of type string* , we have to convert it to int   
            case_value = static_cast<int>((*$2)[1]); // Get ASCII value of the character literal (skip the opening quote)
            
            
            // Check for duplicate case values in current switch
            map<int, TACOperand*>& current_switch_map = switch_case_stack.back();
            if (current_switch_map.find(case_value) != current_switch_map.end()) {
                type_error("Duplicate case value: " + to_string(case_value) + " in switch statement");
            } else {
                // Create a label for this case
                TACOperand* case_label = new_label(0);
                current_switch_map[case_value] = case_label;
            }
            }
        }
    COLON marker statement                              /* e.g., case 1: stmt */{
        // Combine code from case expression and statement
        $$ = new TypeInfo();
        $$->code = vector<TACInstruction*>();
        $$->code.insert($$->code.end(), $6->code.begin(), $6->code.end());
        
        // Propagate break statements
        $$->break_list = $6->break_list;
        
        delete $2;
        delete $6;
    }
    | CASE INT_LITERAL  {
        
        // Check if we're inside a switch statement
        if (switch_case_stack.empty()) {
            type_error("Case label not within a switch statement");
        } else {
            // Get integer value
            int case_value = $2;
            
            // Check for duplicate case values in current switch
            map<int, TACOperand*>& current_switch_map = switch_case_stack.back();
            if (current_switch_map.find(case_value) != current_switch_map.end()) {
                type_error("Duplicate case value: " + to_string(case_value) + " in switch statement");
            } else {
                // Create a label for this case
                TACOperand* case_label = new_label(0);
                current_switch_map[case_value] = case_label;
            }
            }
        }
     COLON marker statement                              /* e.g., case 1: stmt */{
        // Combine code from case expression and statement
        $$ = new TypeInfo();
        $$->code = vector<TACInstruction*>();
        $$->code.insert($$->code.end(), $6->code.begin(), $6->code.end());
        
        // Propagate break statements
        $$->break_list = $6->break_list;
        
        delete $6;
    }
	| DEFAULT COLON statement {                                               /* e.g., default: stmt */
        // Check if we're inside a switch statement
        if (switch_default_stack.empty()) {
            type_error("Default label not within a switch statement");
        } else {
            // Check if default already exists for current switch
            if (switch_default_stack.back() != nullptr) {
                type_error("Multiple default labels in switch statement");
            } else {
                // Create and register default label
                TACOperand* default_label = new_label(0);
                switch_default_stack.back() = default_label;
                $$ = new TypeInfo();
                $$->code = vector<TACInstruction*>();
                $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
                // Propagate break statements
                $$->break_list = $3->break_list;                
                delete $3;
            }
        }
    }
	;

compound_statement    
  :LBRACE { enter_scope(); insert_current_function_parameters(); } declaration_list statement_list RBRACE {
        cout << "Compound statement with declarations and statements\n";
        $$ = new TypeInfo();
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
        $$->code.insert($$->code.end(), $4->code.begin(), $4->code.end());
        $$->next_list = $4->next_list;
        $$->break_list = $4->break_list;
        $$->continue_list = $4->continue_list;

        exit_scope(); 
    }                        /* e.g., { int a; stmt; } */
	;


marker
    : /* empty */ {
        $$ = new_label(0); // Create a label for the beginning of loops
    }
    ;

statement_list
	: statement                                                            /* e.g., stmt */{
        $$= $1;
        // Don't backpatch next_list here - let it propagate up
        // It will be backpatched by the caller if needed
    }
	| statement_list marker statement                                               /* e.g., stmt; stmt; */{
        $$ = new TypeInfo();
        $$->code = $1->code;
        $$->break_list = $1->break_list;
        $$->continue_list = $1->continue_list;
        backpatch($1->next_list, $2);
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
        $$->break_list.insert($3->break_list.begin(), $3->break_list.end());
        $$->continue_list.insert($3->continue_list.begin(), $3->continue_list.end());
        $$->next_list = $3->next_list;
        
       delete $1; delete $3;
    }
	|  {
        $$ = new TypeInfo();
        $$->baseType = "void";
    }

	;


expression_statement
    : SEMICOLON {
        $$ = new TypeInfo();
        $$->baseType = "void";
    }
    | expression SEMICOLON {
        $$ = $1;
    }
;
// here will be problem for sure*$
selection_statement
	: if_expression                                 /* e.g., if (x) stmt */{
        $$ = $1;
        if (! $1->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch($1->false_list, curr_inst);
        }
    }
	| if_expression ELSE {        
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $1->code.push_back(goto_inst);
        $1->next_list.insert(goto_inst);
        if (! $1->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch($1->false_list, curr_inst);
        }
    } statement                   /* e.g., if (x) stmt else stmt */
    {
        $$ = $1;
        $$->code.insert($$->code.end(), $4->code.begin(), $4->code.end());
        $$->next_list.insert($4->next_list.begin(), $4->next_list.end());
        $$->break_list.insert($4->break_list.begin(), $4->break_list.end());
        $$->continue_list.insert($4->continue_list.begin(), $4->continue_list.end());
        delete $4;
    }
	| SWITCH LPAREN expression {
        // Validate: expression must be int or char
        if (!is_integer_type($3->baseType) || $3->pointerLevel > 0 || $3->isArray) {
            type_error("Switch expression must be of integer or char type, got: " + $3->toString());
        }
        
        // Convert char to int if needed
        TACOperand* switch_value = $3->result;
        if ($3->baseType == "char") {
            TACOperand* int_temp = new_temp_var();
            TACInstruction* cast_inst = emit(TAC_OPERATOR_CAST, int_temp, $3->result, new_type("int"), 0);
            $3->code.push_back(cast_inst);
            switch_value = int_temp;
        }
        
        // Allocate a new jump table ID
        int current_table_id = jump_table_counter++;
        
        // Push new switch context (empty case map and null default)
        switch_case_stack.push_back(map<int, TACOperand*>());
        switch_default_stack.push_back(nullptr);
        switch_table_id_stack.push_back(current_table_id);
        
        // Emit: goto jump_table_i[expression.result]
        // We use flag=4 to indicate this is a jump table instruction
        // arg1 = jump_table_id (as constant), arg2 = switch_value
        TACOperand* table_id_operand = new_constant(to_string(current_table_id));
        TACInstruction* goto_jump_table = emit(TACOperator(), 
                                               new_empty_var(),      // result (unused)
                                               table_id_operand,     // arg1: table ID
                                               switch_value,         // arg2: expression value
                                               4);                   // flag=4 for jump table
        $3->code.push_back(goto_jump_table);
        
        cout << "Created jump table " << current_table_id << " for switch expression\n";
    }
    RPAREN statement                              /* e.g., switch (x) { ... } */{
        $$ = new TypeInfo();
        
        // Get switch expression code
        $$->code.insert($$->code.end(), $3->code.begin(), $3->code.end());
        
        // Get statement code (contains all case/default labels and their code)
        $$->code.insert($$->code.end(), $6->code.begin(), $6->code.end());
        
        // Create end label for switch
        TACOperand* end_label = new_label(0);

        // Backpatch all break statements to end label
        backpatch($6->break_list, end_label);
        
        // Now finalize the jump table
        int table_id = switch_table_id_stack.back();
        map<int, TACOperand*>& case_map = switch_case_stack.back();
        TACOperand* default_label = switch_default_stack.back();
        
        // Store the jump table in overall_jump_tables
        overall_jump_tables[table_id] = case_map;
        
        // Store default label if exists (use special key like -1)
        if (default_label != nullptr) {
            overall_jump_tables[table_id][-240106] = default_label;
        } else {
            // If no default, jump to end label
            overall_jump_tables[table_id][-240106] = end_label;
        }
        
        cout << "Finalized jump table " << table_id << " with " << case_map.size() 
             << " cases and default: " << (default_label ? "yes" : "end") << "\n";
        
        // Pop switch context
        switch_case_stack.pop_back();
        switch_default_stack.pop_back();
        switch_table_id_stack.pop_back();
        
        delete $3;
        delete $6;
    }
	;

if_expression 
    : IF LPAREN short_circuited_expression RPAREN  { // making change here for short circuited expressions
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, $3->result, new_empty_var(), 2); 
        $3->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $3->code.push_back(goto_inst);
        $3->false_list.insert(goto_inst);

        // backpatching to the true label
        if(! $3->true_list.empty()) {
            backpatch($3->true_list, new_label(0));
        }
    }  statement {
        $$ = new TypeInfo();
        $$->code = $3->code;
        $$->true_list = $3->true_list;
        $$->false_list = $3->false_list;
        $$->code.insert($$->code.end(), $6->code.begin(), $6->code.end());
        $$->break_list = $6->break_list;
        $$->continue_list = $6->continue_list;
        TACOperand* curr_inst = new_label(0);
        //ig iski zroorat nhi hai, double jumps hii ho rhe hai
        // don't delete below commented line yet
        // krish
        //backpatch($6->next_list, curr_inst);
        delete $3;
        delete $6;
    }




iteration_statement
	:  WHILE begin_marker LPAREN short_circuited_expression RPAREN { // here also change for short circuited expressions
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, $4->result, new_empty_var(), 2);
        $4->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $4->code.push_back(goto_inst);
        $4->false_list.insert(goto_inst);

        // backpatching to the beginning of the loop
        // although for now it is useless
        // now it is useful for short circuited expressions
        if(! $4->true_list.empty()) {
            backpatch($4->true_list, new_label(0));
        }
        loop_depth++;
    }statement                              {
        $$ = new TypeInfo();
        $$->code = $4->code;
        $$->code.insert($$->code.end(), $7->code.begin(), $7->code.end());
        
        // seems redundant 
        //but dont delete for now
        // krish
        //backpatch($7->next_list, curr_inst);
        //TACOperand* curr_inst = new_label(0);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), $2, new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_begin);
        $$->next_list = $7->next_list;
        $$->next_list.insert($4->false_list.begin(), $4->false_list.end());
        $$->next_list.insert($7->break_list.begin(), $7->break_list.end());
        if(! $7->continue_list.empty()) {
            backpatch($7->continue_list, $2);
        }else{
            cout<<"continue list empty\n";
        }
        loop_depth--;
        delete $4; delete $7;
    }
	| UNTIL begin_marker LPAREN short_circuited_expression { // here also change for short circuited expressions
        // if E then goto___ -> next list
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), $4->result, new_empty_var(), 1);
        $4->code.push_back(if_inst);
        $4->true_list.insert(if_inst);
        // backpatch expression's false_list to beginning of loop's statement
        if(! $4->false_list.empty()) {
            backpatch($4->false_list, new_label(0));
        }
        loop_depth++;
    } RPAREN statement                              {
        $$ = new TypeInfo();
        $$->code = $4->code;
        $$->code.insert($$->code.end(), $7->code.begin(), $7->code.end());
        // at the end of the loop body, add a goto to the beginning of the loop
        //TACOperand* curr_inst = new_label(0);
        //seems redundant but dont delete for now
        // krish
        //backpatch($7->next_list, curr_inst);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), $2, new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_begin);
        // next_list of the loop statement is the true_list of the condition expression
        $$->next_list = $4->true_list;
        $$->next_list.insert($7->next_list.begin(), $7->next_list.end());
        $$->next_list.insert($7->break_list.begin(), $7->break_list.end());
        if(! $7->continue_list.empty()) {
            backpatch($7->continue_list, $2);
        }
        loop_depth--;
        delete $4; delete $7;
    }
	|  DO begin_marker {
        loop_depth++;
    } statement {
        //TACOperand* curr_inst = new_label(0);
        // seemss redundant but dont delete for now
        // krish
        //backpatch($3->next_list, curr_inst);
    } WHILE LPAREN marker short_circuited_expression RPAREN SEMICOLON{ // here also change for short circuited expressions
        $$ = new TypeInfo();
        $$->code = $4->code;
        $$->code.insert($$->code.end(), $9->code.begin(), $9->code.end());
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), $2, $9->result, new_empty_var(), 2);
        $$->code.push_back(if_inst);
        TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_end);
        $9->false_list.insert(goto_end);
        // next_list of the loop statement is the false_list of the condition expression
        $$->next_list = $9->false_list;
        $$->next_list.insert($4->next_list.begin(), $4->next_list.end());
        $$->next_list.insert($4->break_list.begin(), $4->break_list.end());

        if(! $4->continue_list.empty()) {
            backpatch($4->continue_list, $8);
        }

        // also backpatch true_list to the beginning of the loop
        if(! $9->true_list.empty()) {
            backpatch($9->true_list, $2);
        }
        loop_depth--;

    }                  
	| FOR LPAREN expression_statement begin_marker expression_statement {
        // For loop without increment: for(init; cond; ) body
        // Create labels for conditional jump
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, $5->result, new_empty_var(), 2);
        $5->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $5->code.push_back(goto_inst);
        $5->false_list.insert(goto_inst);

        // Backpatch true_list to continue to body
        if(! $5->true_list.empty()) {
            backpatch($5->true_list, new_label(0));
        }
        loop_depth++;
    } RPAREN statement   /* e.g., for (init; cond; ) stmt */ {
        $$ = new TypeInfo();
        // Add init code
        $$->code = $3->code;
        // Add condition code
        $$->code.insert($$->code.end(), $5->code.begin(), $5->code.end());
        // Add body code
        $$->code.insert($$->code.end(), $8->code.begin(), $8->code.end());
        
        // After body, jump back to begin (condition check)
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), $4, new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_begin);
        
        // next_list contains false_list of condition and next_list of body and break statements
        $$->next_list = $5->false_list;
        $$->next_list.insert($8->next_list.begin(), $8->next_list.end());
        $$->next_list.insert($8->break_list.begin(), $8->break_list.end());
        
        // Continue statements should jump to condition (begin_marker)
        if(! $8->continue_list.empty()) {
            backpatch($8->continue_list, $4);
        }   

        loop_depth--;
        
        delete $3; delete $5; delete $8;
    }
	| FOR LPAREN expression_statement begin_marker expression_statement {
        // For loop with increment: for(init; cond; incr) body
        // Create labels for conditional jump
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), $5->result, new_empty_var(), 2);
        $5->code.push_back(if_inst);
        $5->true_list.insert(if_inst);

        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $5->code.push_back(goto_inst);
        $5->false_list.insert(goto_inst);

    } begin_marker expression RPAREN begin_marker {
        
        // Add init code
        // Add condition code
        $3->code.insert($3->code.end(), $5->code.begin(), $5->code.end());

        // Add increment code and jump back to condition
        $3->code.insert($3->code.end(), $8->code.begin(), $8->code.end());
        TACInstruction* goto_condition = emit(TACOperator(TAC_OPERATOR_NOP), $4, new_empty_var(), new_empty_var(), 1);
        $3->code.push_back(goto_condition);

        // Backpatch true_list to continue to body
        if(! $5->true_list.empty()) {
            backpatch($5->true_list, new_label(0));
        }

        loop_depth++;
        
    } statement /* e.g., for (init; cond; incr) stmt */ {
        // Add body code
        $$ = new TypeInfo();

        $$->code = $3->code;

        $$->code.insert($$->code.end(), $12->code.begin(), $12->code.end());

        // After body, jump back to increment
        TACInstruction* goto_incr = emit(TACOperator(TAC_OPERATOR_NOP), $7, new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_incr);
                
        TACOperand* incr_label = $10;
        
        // next_list contains false_list of condition and next_list of body and break statements
        $$->next_list = $5->false_list;
        $$->next_list.insert($12->next_list.begin(), $12->next_list.end());
        $$->next_list.insert($12->break_list.begin(), $12->break_list.end());
        
        // Continue statements should jump to increment label
        if(! $12->continue_list.empty()) {
            backpatch($12->continue_list, incr_label);
        }
        loop_depth--;
        
        delete $3; delete $5; delete $8; delete $12;
    }
	;

begin_marker
    : /* empty */ {
        // Mark the beginning of a loop for backpatching
        $$ = new_label(0);
    }
    ;

jump_statement
	: GOTO IDENTIFIER SEMICOLON                                              /* e.g., goto label; */{
        $$ = new TypeInfo();
        $$->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_inst);
        // In a full implementation, we would need to handle label resolution here
        if( label_map.find(*$2) != label_map.end() ) {
            // Label already defined, backpatch immediately
            backpatch({goto_inst}, label_map[*$2]);
        } else {
            // Label not yet defined, add to unresolved jumps
            unresolved_jumps[*$2].insert(goto_inst);
        }
        delete $2;
    }
	| CONTINUE SEMICOLON                                                     /* e.g., continue; */{
        if (loop_depth == 0) {
            type_error("Continue statement not within loop");
        }
        $$ = new TypeInfo();
        $$->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_inst);
        $$->continue_list.insert(goto_inst);
    }
	| BREAK SEMICOLON                                                        /* e.g., break; */{
        if (loop_depth == 0 && switch_case_stack.empty()) {
            type_error("Break statement not within loop or switch");
        }
        $$ = new TypeInfo();
        $$->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        $$->code.push_back(goto_inst);
        $$->break_list.insert(goto_inst);
    }
	| RETURN SEMICOLON                                                       /* e.g., return; */{
        $$ = new TypeInfo();
        $$->baseType = "void";
        TACInstruction* ret_inst = emit(TACOperator(TAC_OPERATOR_RETURN), new_empty_var(), new_empty_var(), new_empty_var(),0);
        // if current function is void, okay else type error
        if(current_function_return_type->pointerLevel == 0 && current_function_return_type->baseType == "void"){
            // okay
            $$->code.push_back(ret_inst);
        }else{
            type_error("Return type mismatch: function expects " + current_function_return_type->toString());
        }
        
    }
	| RETURN expression SEMICOLON                                            /* e.g., return x; */{
        $$ = new TypeInfo();
        $$->baseType = "void";
        $$->code = $2->code;
        if(!is_implicit_conversion_allowed(*$2, *current_function_return_type)){
            type_error("Return type mismatch: function expects " + current_function_return_type->toString() + ", but returning " + $2->toString());
        }else{
            const TypeInfo lhs = *current_function_return_type;
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = change_type_rhs_to_lhs(lhs,*$2);
            $$->code.insert($$->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* ret_inst = emit(TACOperator(TAC_OPERATOR_RETURN), cast_result.second.second, new_empty_var(), new_empty_var(),0);
            $$->code.push_back(ret_inst);
        }
        delete $2;
    }
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
        
        // Pop struct/union definitions from current scope
        for (auto& pair : struct_union_table) {
            vector<StructUnionDef>& defs = pair.second;
            while (!defs.empty() && defs.back().scope_level == current_scope_level) {
                cout << "  - Destroying " << (defs.back().isUnion ? "union " : "struct ") 
                     << defs.back().name << " from scope " << current_scope_level << "\n";
                defs.pop_back();
            }
        }
        
        // Remove enum definitions from current scope
        for (auto& pair : enum_table) {
            vector<EnumInfo>& defs = pair.second;
            while (!defs.empty() && defs.back().scope_level == current_scope_level) {
                cout << "  - Destroying enum " << defs.back().name << " from scope " << current_scope_level << "\n";
                defs.pop_back();
            }
        }
        // Pop typedef definitions from current scope
        // For each typedef in the current scope's typedef table,
        // pop it from the global typedef_table
        if (!current_scope.typedefs.empty()) {
            cout << "Destroying typedefs from scope " << current_scope_level << ":\n";
            for (const auto& typedef_entry : current_scope.typedefs) {
                const string& typedef_name = typedef_entry.first;
                cout << "  - Destroying typedef " << typedef_name << "\n";
                
                // Pop from global map
                auto it = typedef_table.find(typedef_name);
                if (it != typedef_table.end() && !it->second.empty()) {
                    it->second.pop_back();
                    
                    // Clean up empty vectors
                    if (it->second.empty()) {
                        typedef_table.erase(it);
                    }
                }
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
    entry.isConst = false;  // Regular variables are not const
    entry.constValue = 0;
    
    // Generate mangled name using the format v_name_funname_signature_scopenum
    // Use the current function context if available
    entry.mangledName = mangle_variable_name(name, current_scope_level, 
                                            current_function_name, current_function_signature);
                                            
    cout << "Variable " << name << " mangled as " << entry.mangledName << "\n";
    
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
        
        // Display variables with their type information and mangled names
        for (const auto& entry : scope.symbols) {
            cout << "  - " << entry.second.name << " (" << entry.second.type.toString() 
                 << ") declared at line " << entry.second.line
                 << " [mangled: " << entry.second.mangledName << "]" << "\n";
        }
        cout << "+-----------------------------------------------------------------------------------------+\n";
    }
}

// Basically exact type match kar rha hai
bool types_compatible(const TypeInfo& left_type, const TypeInfo& right_type) {
    // Check function pointer compatibility
    // print types of both
    cout << "Checking function pointer compatibility between " 
         << left_type.toString() << " and " << right_type.toString() << "\n";
    if (left_type.isFunctionPointer || right_type.isFunctionPointer) {
        // Both must be function pointers
        if (left_type.isFunctionPointer != right_type.isFunctionPointer) {
            // One is function pointer, other is not
            // if right is function and left is function pointer then find the exact match
            //hihi
            // One is function pointer, other is not
            // if right is function and left is function pointer then find the exact match
            if (left_type.isFunctionPointer && right_type.baseType == "function" && !right_type.identifier.empty()) {
                // Right side is a function name, left side is function pointer
                cout<<"Right side is a function name, left side is function pointer\n";
                string funcName = right_type.identifier;
                
                // Need to match: return type and parameter types
                TypeInfo expectedReturnType = *left_type.returnType;
                vector<TypeInfo> expectedParamTypes;
                if (left_type.parameterTypes != nullptr) {
                    expectedParamTypes = *left_type.parameterTypes;
                }
                
                // Search for matching function in function table
                FunctionEntry* matchingFunc = nullptr;
                int matchCount = 0;
                
                for (auto& pair : function_table) {
                    FunctionEntry& func = pair.second;
                    
                    // Check if this is the right function name
                    if (func.originalName != funcName) {
                        continue;
                    }
                    
                    // Check return type match
                    if (!types_compatible(func.returnType, expectedReturnType)) {
                        continue;
                    }
                    
                    // Check parameter count
                    if (func.parameters.size() != expectedParamTypes.size()) {
                        continue;
                    }
                    
                    // Check each parameter type
                    bool paramsMatch = true;
                    for (size_t i = 0; i < func.parameters.size(); i++) {
                        if (!types_compatible(func.parameters[i].type, expectedParamTypes[i])) {
                            paramsMatch = false;
                            break;
                        }
                    }
                    
                    if (paramsMatch) {
                        matchingFunc = &func;
                        matchCount++;
                    }
                }
                
                // If exactly one match found, it's compatible
                if (matchCount == 1) {
                    cout << "Function '" << funcName << "' matches function pointer type\n";
                    return true;
                }
                
                // No match or ambiguous - not compatible
                return false;
            }

            // Otherwise not compatible
            return false;
        }
        
        // Check return types match
        if (!left_type.returnType || !right_type.returnType) {
            return false;
        }
        if (!types_compatible(*left_type.returnType, *right_type.returnType)) {
            return false;
        }
        
        // Check parameter count
        if (!left_type.parameterTypes || !right_type.parameterTypes) {
            return false;
        }
        if (left_type.parameterTypes->size() != right_type.parameterTypes->size()) {
            return false;
        }
        
        // Check each parameter type
        for (size_t i = 0; i < left_type.parameterTypes->size(); i++) {
            if (!types_compatible((*left_type.parameterTypes)[i], (*right_type.parameterTypes)[i])) {
                return false;
            }
        }
        
        return true;
    }
    
    // Check struct/union compatibility first
    if (left_type.isStruct != right_type.isStruct || left_type.isUnion != right_type.isUnion) {
        return false;
    }
    
    // If both are struct/union, check if they refer to the same definition
    if (left_type.isStruct || left_type.isUnion) {
        // Check if names match
        if (left_type.structUnionName != right_type.structUnionName) {
            return false;
        }
        // Optionally, we could check if structDef pointers are the same
        // But name matching is sufficient for scope-aware struct/union lookup
    }
    
    // Check base types match (ignoring static as requested)
    if (left_type.baseType != right_type.baseType) return false;
    
    // Check pointer compatibility 
    if(left_type.pointerLevel != right_type.pointerLevel) return false;
    
    // Check array compatibility
    if(left_type.isArray != right_type.isArray) return false;

    // Check array dimensions if both are arrays
    if (left_type.isArray) {
        // Must have same number of dimensions
        if (left_type.arrayDimensions.size() != right_type.arrayDimensions.size()) return false;
        
        // Each dimension must match in size
        for (size_t i = 0; i < left_type.arrayDimensions.size(); i++) {
            // Allow matching if one dimension is unspecified (0)
            if (left_type.arrayDimensions[i] != 0 && right_type.arrayDimensions[i] != 0 && 
                left_type.arrayDimensions[i] != right_type.arrayDimensions[i]) {
                return false;
            }
        }
    }
    
    return true;
}


bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type) {
    // First check exact type match
    // if lhs is function pointer return true


    /* if(var_type.isFunctionPointer){
        return 1;
    }
    if(init_type.isFunctionPointer){
        return 0;
    } */

    if (types_compatible(init_type,var_type)) { // krish : yahan most recent commit - function pointer ke liye change kiye hai, 
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
    
    // Use the explicit isLvalue field that we track throughout parsing
    return expr.isLvalue;
}

bool is_implicit_conversion_allowed(const TypeInfo& from, const TypeInfo& to) {
    // Allow exact type matches
    if (types_compatible(to,from)) { // krish : yahan most recent commit - function pointer ke liye change kiye hai, 
        return true;
    }

    // if from is function, and to is function pointer, then find exact function with same signature and return type

    

    // Allow function pointer assignments
    // Both must be function pointers and have compatible signatures
    /* if (from.isFunctionPointer && to.isFunctionPointer) {
        return types_compatible(from, to);
    } */
    
    
    // Allow conversions between numeric types including char<->int<->float
    if (is_numeric_type(from.baseType) && is_numeric_type(to.baseType) && 
        from.pointerLevel == 0 && to.pointerLevel == 0 && 
        !from.isArray && !to.isArray) {
        
        // Allow char to int conversions (removed restriction)
        return true;
    }
    
    // Allow NULL (void*) to any pointer conversion
    if (from.baseType == "void" && from.pointerLevel > 0 && to.pointerLevel > 0 && !to.isArray && !from.isArray &&( from.pointerLevel == to.pointerLevel)) {
        return true;
    }
    
    
    // Allow array to pointer conversion (array decay)
    if (from.isArray && to.pointerLevel > 0 && from.baseType == to.baseType) {
        // For multidimensional arrays, we need to check that the remaining dimensions match
        if (from.arrayDimensions.size() > 1) {
            // Create the decayed array type for comparison
            TypeInfo decayedType = array_to_pointer_conversion(from);
            return types_compatible(decayedType, to);
        }
        // For single-dimension arrays, check if pointer level matches (array[n] -> T*)
        return to.pointerLevel == 1;
    }
    
    // Allow pointer conversions with compatible base types
    if (from.pointerLevel > 0 && to.pointerLevel > 0) {
        // Void pointer can be assigned to any pointer type with same level
        if ((from.baseType == "void" || to.baseType == "void") && from.pointerLevel == to.pointerLevel) {
            return true;
        }
    }

    
    
    return false;
}

bool is_narrowing_conversion(const TypeInfo& from, const TypeInfo& to) {
    //yahan mei assume kar rha hu, sirf tabhi jaa payenge if possible
    // float to int is narrowing (potential loss of fractional part)
    if (from.baseType == "float" && to.baseType == "int") {
        return true;
    }
    
    // float to char is narrowing
    if (from.baseType == "float" && to.baseType == "char") {
        return true;
    }
    
    // Note: int to char conversion is now allowed but it's a narrowing conversion
    // that may lose data, so we should warn about it
    if (from.baseType == "int" && to.baseType == "char") {
        return true;
    }
    
    // Any pointer to smaller integer type is narrowing on most platforms
    //yeh allow hii nhi kiya
    /* if (from.pointerLevel > 0 && (to.baseType == "int" || to.baseType == "char")) {
        return true;
    } */

    
    // Pointer to different pointer type (other than void*) is potentially unsafe
    /* if (from.pointerLevel > 0 && to.pointerLevel > 0 && from.baseType != to.baseType && 
        from.baseType != "void" && to.baseType != "void") {
        return true;
    } */
    
    return false;
}


pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> change_type_rhs_to_lhs(const TypeInfo& left, const TypeInfo& right) {
    
    //YAHAN PEHLE CHECK LAGANA HAI
    //VOID* BHI INCLUDE KARNA HAI
    //AND ALSO ARRAY TO POINTER DECAY
    TypeInfo* res = new TypeInfo();
                
    // If either is float, res is float
    if (left.baseType == "float" ) {
        
        // If right is not float, cast it to float
        if (right.baseType != "float" && right.baseType != "error") {
            TACOperand* right_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("float"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left.result, right_temp}};
        }
    }
    
    // If either is int, res is int
    else if (left.baseType == "int" ) {
        res->baseType = "int";
        
        // If right is char, cast it to int
        if (right.baseType != "int" && right.baseType != "error") {
            TACOperand* right_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("int"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left.result, right_temp}};
        }
    }
    
    // Both char, res is int (C promotion rules)
    else if (left.baseType == "char") { 
        res->baseType = "char";

        if( right.baseType != "char" && right.baseType != "error") {
            TACOperand* right_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("char"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left.result, right_temp}};
        }
    }
    // Default to left type
    else {
        res->baseType = left.baseType;
    }
    
    
    return {res->code, {left.result, right.result}};
}

pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promote_types(const TypeInfo& left, const TypeInfo& right) {
    
    
    TypeInfo* res = new TypeInfo();
                
    // If either is float, res is float
    if (left.baseType == "float" || right.baseType == "float") {
        
        // If left is not float, cast it to float
        if (left.baseType != "float" && left.baseType != "error") {
            TACOperand* left_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), left_temp, left.result, new_type("float"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left_temp, right.result}}; 
            // abhi sirf code mei hii push karte hai, jump code ki zroorat nhi, bcoz sirf type promotion hii hai
        }
        
        // If right is not float, cast it to float
        if (right.baseType != "float" && right.baseType != "error") {
            TACOperand* right_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("float"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left.result, right_temp}};
        }
    }
    
    // If either is int, res is int
    else if (left.baseType == "int" || right.baseType == "int") {
        res->baseType = "int";
        
        // If left is char, cast it to int
        if (left.baseType == "char") {
            TACOperand* left_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), left_temp, left.result, new_type("int"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left_temp, right.result}};
        }

        
        // If right is char, cast it to int
        if (right.baseType == "char") {
            TACOperand* right_temp = new_temp_var();
            TACInstruction* castInstr = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("int"), 0);
            res->code.push_back(castInstr);
            return {res->code, {left.result, right_temp}};
        }
    }
    
    // Both char, res is int (C promotion rules)
    else if (left.baseType == "char" && right.baseType == "char") {
        res->baseType = "int";
        TACOperand* left_temp = new_temp_var();
        TACOperand* right_temp = new_temp_var();
        
        TACInstruction* castInstr1 = emit(TACOperator(TAC_OPERATOR_CAST), left_temp, left.result, new_type("int"), 0);
        TACInstruction* castInstr2 = emit(TACOperator(TAC_OPERATOR_CAST), right_temp, right.result, new_type("int"), 0);
        res->code.push_back(castInstr1);
        res->code.push_back(castInstr2);
        return {res->code, {left_temp, right_temp}};
    }
    // Default to left type
    else {
        res->baseType = left.baseType;
    }
    
    
    return {res->code, {left.result, right.result}};
}

TypeInfo* perform_binary_operation(const TypeInfo& left, const TypeInfo& right, const string& op) {
    // Check for errors
    if (left.baseType == "error" || right.baseType == "error") {
        TypeInfo* res = new TypeInfo();
        res->baseType = "error";
        return res;
    }
    
    cout << "Binary operation: " << left.toString() << " " << op << " " << right.toString();
    
    // Note: All binary operation ress are rvalues (not lvalues)
    // Binary operations generate temporary values that cannot be assigned to
    
    // Addition and subtraction with pointer arithmetic
    if (op == "+" || op == "-") {
        // Case 1: Both are numeric types (regular arithmetic)
        if (is_numeric_type(left.baseType) && is_numeric_type(right.baseType) && 
            left.pointerLevel == 0 && right.pointerLevel == 0 && !left.isArray && !right.isArray) {
            if(left.baseType == "float" && right.baseType == "float"){
                TypeInfo* res = new TypeInfo();
                res->baseType = "float";
                res->isLvalue = false; // res is not an lvalue
                cout << " -> " << res->toString() << " (arithmetic)\n";
                res->code.insert(res->code.end(), left.code.begin(), left.code.end());
                res->code.insert(res->code.end(), right.code.begin(), right.code.end());
                TACOperand* resultOp = new_temp_var();
                res->result = resultOp;
                TACInstruction* instr = emit(op == "+" ? TACOperator(TAC_OPERATOR_ADD) : TACOperator(TAC_OPERATOR_SUB), resultOp, left.result, right.result, 0);
                res->code.push_back(instr);
                return res;
            }else if(left.baseType == "int" && right.baseType == "int"){
                TypeInfo* res = new TypeInfo();
                res->baseType = "int";
                res->isLvalue = false; // res is not an lvalue
                cout << " -> " << res->toString() << " (arithmetic)\n";
                res->code.insert(res->code.end(), left.code.begin(), left.code.end());
                res->code.insert(res->code.end(), right.code.begin(), right.code.end());
                TACOperand* resultOp = new_temp_var();
                res->result = resultOp;
                TACInstruction* instr = emit(op == "+" ? TACOperator(TAC_OPERATOR_ADD) : TACOperator(TAC_OPERATOR_SUB), resultOp, left.result, right.result, 0);
                res->code.push_back(instr);
                return res;
            }else if(left.baseType == "float" && right.baseType == "int"){
                TypeInfo* res = new TypeInfo();
                res->baseType = "float";
                res->isLvalue = false; // res is not an lvalue
                cout << " -> " << res->toString() << " (arithmetic)\n";
                res->code.insert(res->code.end(), left.code.begin(), left.code.end());
                res->code.insert(res->code.end(), right.code.begin(), right.code.end());
                
                // Cast right int to float
                TACOperand* castRightOp = new_temp_var();
                TACInstruction* castRightInstr = emit(TACOperator(TAC_OPERATOR_CAST), castRightOp, right.result, new_identifier("float"), 0);
                res->code.push_back(castRightInstr);
                TACOperand* resultOp = new_temp_var();
                res->result = resultOp;
                TACInstruction* instr = emit(op == "+" ? TACOperator(TAC_OPERATOR_ADD) : TACOperator(TAC_OPERATOR_SUB), resultOp, left.result, castRightOp, 0);
                res->code.push_back(instr);
                return res;
            }else if(left.baseType == "int" && right.baseType == "float"){
                TypeInfo* res = new TypeInfo();
                res->baseType = "float";
                res->isLvalue = false; // res is not an lvalue
                cout << " -> " << res->toString() << " (arithmetic)\n";
                res->code.insert(res->code.end(), left.code.begin(), left.code.end());
                res->code.insert(res->code.end(), right.code.begin(), right.code.end());
                // Cast left int to float
                TACOperand* castLeftOp = new_temp_var();
                TACInstruction* castLeftInstr = emit(TACOperator(TAC_OPERATOR_CAST), castLeftOp, left.result, new_identifier("float"), 0);
                res->code.push_back(castLeftInstr);
                TACOperand* resultOp = new_temp_var();
                res->result = resultOp;
                TACInstruction* instr = emit(op == "+" ? TACOperator(TAC_OPERATOR_ADD) : TACOperator(TAC_OPERATOR_SUB), resultOp, castLeftOp, right.result, 0);
                res->code.push_back(instr);
                return res;
            }
            
        }
        
        // Case 2: Pointer + integer or Array + integer (only for addition)
        if (op == "+" && ((left.pointerLevel > 0 || left.isArray) && is_integer_type(right.baseType) && 
                        right.pointerLevel == 0 && !right.isArray)) { // Ensure right is a plain integer
            TypeInfo* res = new TypeInfo(left);
            res->isArray = false;  // res is always a pointer, not array
            res->pointerLevel = left.pointerLevel > 0 ? left.pointerLevel : 1;
            res->isLvalue = false; // res is not an lvalue
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            TypeInfo res2 = *res;
            // make res2 one level down
            if(res2.isArray && res2.arrayDimensions.size() > 0){
                res2.arrayDimensions.erase(res2.arrayDimensions.begin());
                if(res2.arrayDimensions.size() == 0){
                    res2.isArray = false;
                }
            }else if(res2.pointerLevel > 0){
                res2.pointerLevel -= 1;
            }else{}
            int _size = getSize(res2);

            TACOperand* scaledOffset = new_temp_var();
            TACInstruction* scaleInstr = emit(TACOperator(TAC_OPERATOR_MUL), scaledOffset, right.result, new_identifier(to_string(_size)), 0);

            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACInstruction* instr = emit(TACOperator(TAC_OPERATOR_ADD), resultOp, left.result, scaledOffset, 0);
            res->code.push_back(scaleInstr);
            res->code.push_back(instr);
            cout << " -> " << res->toString() << " (pointer arithmetic)\n";
            return res;
        }
        
        // Case 3: Integer + pointer (commutative for addition)
        if (op == "+" && (is_integer_type(left.baseType) && left.pointerLevel == 0 && !left.isArray && 
                        (right.pointerLevel > 0 || right.isArray))) { // Ensure left is a plain integer
            TypeInfo* res = new TypeInfo(right);
            res->isArray = false;  // res is always a pointer, not array
            res->pointerLevel = right.pointerLevel > 0 ? right.pointerLevel : 1;
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (pointer arithmetic)\n";

            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            TypeInfo res2 = *res;
            // make res2 one level down
            if(res2.isArray && res2.arrayDimensions.size() > 0){
                res2.arrayDimensions.erase(res2.arrayDimensions.begin());
                if(res2.arrayDimensions.size() == 0){
                    res2.isArray = false;
                }
            }else if(res2.pointerLevel > 0){
                res2.pointerLevel -= 1;
            }else{}
            int _size = getSize(res2);
            TACOperand* scaledOffset = new_temp_var();
            TACInstruction* scaleInstr = emit(TACOperator(TAC_OPERATOR_MUL), scaledOffset, left.result, new_identifier(to_string(_size)), 0);
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;

            TACInstruction* instr = emit(TACOperator(TAC_OPERATOR_ADD), resultOp, right.result, scaledOffset, 0);
            res->code.push_back(scaleInstr);
            res->code.push_back(instr);
            return res;
        }
        
        // Case 4: Pointer - integer
        if (op == "-" && (left.pointerLevel > 0 || left.isArray) && is_integer_type(right.baseType)) {
            TypeInfo* res = new TypeInfo(left);
            res->isArray = false;  // res is always a pointer, not array
            res->pointerLevel = left.pointerLevel > 0 ? left.pointerLevel : 1;
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (pointer arithmetic)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());

            TypeInfo res2 = *res;
            // make res2 one level down
            if(res2.isArray && res2.arrayDimensions.size() > 0){
                res2.arrayDimensions.erase(res2.arrayDimensions.begin());
                if(res2.arrayDimensions.size() == 0){
                    res2.isArray = false;
                }
            }else if(res2.pointerLevel > 0){
                res2.pointerLevel -= 1;
            }else{}
            int _size = getSize(res2);
            TACOperand* scaledOffset = new_temp_var();
            TACInstruction* scaleInstr = emit(TACOperator(TAC_OPERATOR_MUL), scaledOffset, right.result, new_identifier(to_string(_size)), 0);
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACInstruction* instr = emit(TACOperator(TAC_OPERATOR_SUB), resultOp, left.result, scaledOffset, 0);
            res->code.push_back(scaleInstr);
            res->code.push_back(instr);
            return res;
        }
        
        // Case 5: Pointer - pointer (ress in integer representing distance)
        if (op == "-" && (left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            if (left.baseType != right.baseType) {
                type_error("Pointer subtraction requires pointers to same type");
                TypeInfo* res = new TypeInfo();
                res->baseType = "error";
                return res;
            }
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";  // ptrdiff_t is typically int
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (pointer difference)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACInstruction* instr = emit(TACOperator(TAC_OPERATOR_SUB), resultOp, left.result, right.result, 0);
            res->code.push_back(instr);
            return res;
        }
        
        // Case 6: Invalid pointer + pointer
        if (op == "+" && (left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            type_error("Cannot add two pointers");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            res->isLvalue = false;
            return res;
        }
        
        // Invalid arithmetic operation
        type_error("Invalid operands for " + op + " operation");
        TypeInfo* res = new TypeInfo();
        res->baseType = "error";
        return res;
    }
    
    // Multiplication, division, modulo (no pointer arithmetic allowed)
    if (op == "*" || op == "/" || op == "%") {
        if (!is_numeric_type(left.baseType) || !is_numeric_type(right.baseType) ||
            left.pointerLevel > 0 || right.pointerLevel > 0 || left.isArray || right.isArray) {
            type_error("Arithmetic operation " + op + " requires numeric operands only");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        // Modulo only works on integers
        if (op == "%" && (left.baseType == "float" || right.baseType == "float")) {
            type_error("Modulo operation not allowed on floating-point types");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        
        if(left.baseType == "float" && right.baseType == "float"){
            TypeInfo* res = new TypeInfo();
            res->baseType = "float";
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (arithmetic)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACOperator t_op = op == "*" ? TACOperator(TAC_OPERATOR_MUL) : (op == "/" ? TACOperator(TAC_OPERATOR_DIV) : TACOperator(TAC_OPERATOR_MOD));
            TACInstruction* instr = emit(t_op, resultOp, left.result, right.result, 0);
            res->code.push_back(instr);
            return res;
        }else if(left.baseType == "int" && right.baseType == "int"){
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (arithmetic)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACOperator t_op = op == "*" ? TACOperator(TAC_OPERATOR_MUL) : (op == "/" ? TACOperator(TAC_OPERATOR_DIV) : TACOperator(TAC_OPERATOR_MOD));

            TACInstruction* instr = emit(t_op, resultOp, left.result, right.result, 0);
            res->code.push_back(instr);
            return res;
        }else if(left.baseType == "float" && right.baseType == "int"){
            TypeInfo* res = new TypeInfo();
            res->baseType = "float";
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (arithmetic)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            
            // Cast right int to float
            TACOperand* castRightOp = new_temp_var();
            TACInstruction* castRightInstr = emit(TACOperator(TAC_OPERATOR_CAST), castRightOp, right.result, new_identifier("float"), 0);
            res->code.push_back(castRightInstr);

            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACOperator t_op = op == "*" ? TACOperator(TAC_OPERATOR_MUL) : (op == "/" ? TACOperator(TAC_OPERATOR_DIV) : TACOperator(TAC_OPERATOR_MOD));

            TACInstruction* instr = emit(t_op, resultOp, left.result, castRightOp, 0);
            res->code.push_back(instr);
            return res;
        }else if(left.baseType == "int" && right.baseType == "float"){
            TypeInfo* res = new TypeInfo();
            res->baseType = "float";
            res->isLvalue = false; // res is not an lvalue
            cout << " -> " << res->toString() << " (arithmetic)\n";
            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            
            // Cast left int to float
            TACOperand* castLeftOp = new_temp_var();
            TACInstruction* castLeftInstr = emit(TACOperator(TAC_OPERATOR_CAST), castLeftOp, left.result, new_identifier("float"), 0);
            res->code.push_back(castLeftInstr);

            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACOperator t_op = op == "*" ? TACOperator(TAC_OPERATOR_MUL) : (op == "/" ? TACOperator(TAC_OPERATOR_DIV) : TACOperator(TAC_OPERATOR_MOD));

            TACInstruction* instr = emit(t_op, resultOp, castLeftOp, right.result, 0);
            res->code.push_back(instr);
            return res;
        }
        //res.isLvalue = false; // res is not an lvalue
        //return res;
    }
    
    // Relational operations
    if (op == "<" || op == ">" || op == "<=" || op == ">=" || op == "==" || op == "!=") {
        // Allow comparison between numeric types
        if (is_numeric_type(left.baseType) && is_numeric_type(right.baseType) &&
            left.pointerLevel == 0 && right.pointerLevel == 0 && !left.isArray && !right.isArray) {
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";  // In C, no bool type, so relational ops return int
            res->isLvalue = false;  // res is not an lvalue
            cout << " -> " << res->toString() << " (numeric comparison)\n";

            res->code.insert(res->code.end(), left.code.begin(), left.code.end());
            res->code.insert(res->code.end(), right.code.begin(), right.code.end());
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> temp = promote_types(left, right);
            res->code.insert(res->code.end(), temp.first.begin(), temp.first.end());
            TACOperand* resultOp = new_temp_var();
            res->result = resultOp;
            TACOperator t_op;
            if(op == "<") t_op = TACOperator(TAC_OPERATOR_LT);
            else if(op == "<=") t_op = TACOperator(TAC_OPERATOR_LE);
            else if(op == ">") t_op = TACOperator(TAC_OPERATOR_GT);
            else if(op == ">=") t_op = TACOperator(TAC_OPERATOR_GE);
            else if(op == "==") t_op = TACOperator(TAC_OPERATOR_EQ);
            else if(op == "!=") t_op = TACOperator(TAC_OPERATOR_NE);
            // if left relop right then 1 else 0
            TACOperand* labelTrue = new_label(2);
            TACOperand* labelFalse = new_label(4);
            TACOperand* labelEnd = new_label(5);

            TACInstruction* ifgoto = emit(t_op, labelTrue, temp.second.first, temp.second.second, 2);
            TACInstruction* gotoo = emit(t_op, labelFalse, new_empty_var(), new_empty_var(), 1);
            TACInstruction* assignTrue = emit(TACOperator(), resultOp, new_identifier("1"), new_empty_var(), 0);
            TACInstruction* gotoEnd = emit(TACOperator(), labelEnd, new_empty_var(), new_empty_var(), 1);
            TACInstruction* assignFalse = emit(TACOperator(), resultOp, new_identifier("0"), new_empty_var(), 0);
            res->code.push_back(ifgoto);
            res->code.push_back(gotoo);
            res->code.push_back(assignTrue);
            res->code.push_back(gotoEnd);
            res->code.push_back(assignFalse);
            return res;
        }
        
        // Allow pointer comparisons
        if ((left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            // For == and !=, allow comparing pointers of different types with warning
            if (left.baseType != right.baseType) {
                type_error("Relational comparison (<, >, <=, >=) between pointers to different types is not allowed");
                    TypeInfo* res = new TypeInfo();
                    res->baseType = "error";
                    return res;
            }
            
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";
            res->isLvalue = false;  // res is not an lvalue
            cout << " -> " << res->toString() << " (pointer comparison)\n";
            return res;
        }
        
        // Allow comparison of pointer with NULL (void*)
        if ((left.pointerLevel > 0 || left.isArray) && 
            right.baseType == "void" && right.pointerLevel > 0) {
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";
            res->isLvalue = false;
            cout << " -> " << res->toString() << " (pointer to NULL comparison)\n";
            return res;
        }
        
        // Also allow NULL to pointer comparison (reverse order)
        if (left.baseType == "void" && left.pointerLevel > 0 && 
            (right.pointerLevel > 0 || right.isArray)) {
            TypeInfo* res = new TypeInfo();
            res->baseType = "int";
            res->isLvalue = false;
            cout << " -> " << res->toString() << " (NULL to pointer comparison)\n";
            return res;
        }
        
        type_error("Relational operation on incompatible types");
        TypeInfo* res = new TypeInfo();
        res->baseType = "error";
        return res;
    }
    
    // Bitwise operations (integers only, no pointers/arrays)
    if (op == "&" || op == "|" || op == "^") {
        if (!is_integer_type(left.baseType) || !is_integer_type(right.baseType) ||
            left.pointerLevel > 0 || right.pointerLevel > 0 || left.isArray || right.isArray) {
            type_error("Bitwise operations require integer operands only");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        TypeInfo* res = new TypeInfo();
        res->baseType = "int";
        res->isLvalue = false;  // res is not an lvalue
        cout << " -> " << res->toString() << "\n";
        res->code.insert(res->code.end(), left.code.begin(), left.code.end());
        res->code.insert(res->code.end(), right.code.begin(), right.code.end());    
        pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> temp = promote_types(left, right);
        res->code.insert(res->code.end(), temp.first.begin(), temp.first.end());
        TACOperand* resultOp = new_temp_var();
        res->result = resultOp;
        TACOperator t_op = op == "&" ? TACOperator(TAC_OPERATOR_BIT_AND) : (op == "|" ? TACOperator(TAC_OPERATOR_BIT_OR) : TACOperator(TAC_OPERATOR_BIT_XOR));
        TACInstruction* instr = emit(t_op, resultOp, temp.second.first, temp.second.second, 0);
        res->code.push_back(instr);
        return res;
    }
    
    // Unknown operation
    type_error("Unknown binary operation: " + op);
    TypeInfo* res = new TypeInfo();
    res->baseType = "error";
    return res;
}

TypeInfo* perform_unary_operation(const TypeInfo& operand, const string& op) {
    // Check for errors
    if (operand.baseType == "error") {
        TypeInfo* res = new TypeInfo();
        res->baseType = "error";
        return res;
    }
    
    cout << "Unary operation: " << op << operand.toString();
    
    // Arithmetic unary operations
    if (op == "+" || op == "-") {
        if (!is_numeric_type(operand.baseType)) {
            type_error("Unary arithmetic operation on non-numeric type");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        TypeInfo* res = new TypeInfo(operand);
        res->code = operand.code; // Copy TAC code from operand
        TACOperator tacop;

        
        if(op == "-") tacop.type = TAC_OPERATOR_UMINUS;


        if (res->baseType == "char") {
            res->baseType = "int";
            TACOperand* temp = new_temp_var();
            TACInstruction* i1 = emit(TACOperator(TAC_OPERATOR_CAST), temp, operand.result, new_type("int"),0);
            TACOperand* temp2 = new_temp_var();
            res->result = temp2;    
            TACInstruction* i2 = emit(tacop, res->result, temp, new_empty_var(),0);

            res->code.push_back(i1);
            res->code.push_back(i2);
        }else{
            TACOperand* temp = new_temp_var();
            res->result = temp;    
            TACInstruction* i1 = emit(tacop, res->result, operand.result, new_empty_var(),0);
            res->code.push_back(i1);
        }

        // res of unary +/- is not an lvalue
        res->isLvalue = false;
        cout << " -> " << res->toString() << "\n";
        return res;
    }
    
    // Increment/decrement
    if (op == "++" || op == "--") {
        if (!is_numeric_type(operand.baseType)) {
            type_error("Increment/decrement operation on non-numeric type");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        // Check if operand is an lvalue
        if (!operand.isLvalue) {
            type_error("Increment/decrement requires an lvalue operand");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        TypeInfo* res = new TypeInfo(operand);
        res->code = operand.code; // Copy TAC code from operand
        // res is not an lvalue for postfix operations, but we handle both cases here
        res->isLvalue = false;
        cout << " -> " << res->toString() << "\n";

        TACOperator tacop;
        if(op == "++") tacop.type = TAC_OPERATOR_ADD;
        else tacop.type = TAC_OPERATOR_SUB;
        TACOperand* temp = new_temp_var();
        res->result = temp;    
        TACInstruction* i1 = emit(tacop, res->result, operand.result, new_constant("1"),0);
        TACInstruction* i2 = emit(TACOperator(), operand.result, res->result, new_empty_var(),0); // Store back to the original variable
        res->code.push_back(i1);
        res->code.push_back(i2);
        return res;
    }
    
    // Logical NOT
    if (op == "!") {

        // Check for void type which cannot be used in logical operations
        if (operand.baseType == "void") {
            type_error("Void type cannot be used in logical NOT operation");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }

        // if it is

        TypeInfo* res = new TypeInfo();
        res->baseType = "int";  // Logical NOT returns int in C
        res->isLvalue = false;  // res is not an lvalue
        cout << " -> " << res->toString() << " (boolean as int)\n";

        TACOperand* temp = new_temp_var();
        res->result = temp;    
        TACOperand* firstgoto = new_label(2); 
        TACOperand* secondgoto = new_label(4);
        TACOperand* thirdgoto = new_label(5);
        TACInstruction* i1 = emit(TACOperator(), firstgoto, operand.result, new_empty_var(), 2); // TAC -> if P->result goto curr+3
        TACInstruction* i2 = emit(TACOperator(), secondgoto, new_empty_var(), new_empty_var(), 1); // TAC -> goto curr+2
        TACInstruction* i3 = emit(TACOperator(), res->result, new_constant("1"), new_empty_var(),0); // TAC -> res = 1
        TACInstruction* i4 = emit(TACOperator(), thirdgoto, new_empty_var(), new_empty_var(), 1); // TAC -> goto ____
        TACInstruction* i5 = emit(TACOperator(), res->result, new_constant("0"), new_empty_var(),0); // TAC -> res = 0

        res->code = operand.code;
        res->code.push_back(i1);
        res->code.push_back(i2);
        res->code.push_back(i3);
        res->code.push_back(i4);
        res->code.push_back(i5);

        return res;
    }
    
    // Bitwise NOT
    if (op == "~") {

        // if array or pointer then give error

        if (operand.pointerLevel > 0 || operand.isArray) {
            type_error("Bitwise NOT on pointer/array type is not allowed");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }

        if (!is_numeric_type(operand.baseType)) {
            type_error("Bitwise NOT on non-numeric type");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }

        // if float then also give error
        if (operand.baseType == "float") {
            type_error("Bitwise NOT on floating-point type is not allowed");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        TypeInfo* res = new TypeInfo(operand);
        res->isLvalue = false;  // res is not an lvalue
        cout << " -> " << res->toString() << "\n";
        TACOperator tacop;
        tacop.type = TAC_OPERATOR_BIT_NOT;
        TACOperand* temp = new_temp_var();
        res->result = temp;
        TACInstruction* i1 = emit(tacop, res->result, operand.result, new_empty_var(),0);
        res->code = operand.code;
        res->code.push_back(i1);
        
        return res;
    }
    
    // Address-of operator
    if (op == "&") {
        if (operand.isLiteral) {
            type_error("Cannot take address of literal");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        // Check if operand is an lvalue
        if (!operand.isLvalue) {
            type_error("Cannot take address of a temporary");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
        TypeInfo* res = new TypeInfo(operand);
        res->pointerLevel++;
        res->isLvalue = false; // res of & operator is not an lvalue
        cout << " -> " << res->toString() << "\n";

        res->code = operand.code;
        TACOperand* temp = new_temp_var();
        res->result = temp;
        TACInstruction* i1 = emit(TACOperator(TAC_OPERATOR_ADDR_OF), res->result, operand.result, new_empty_var(),0);
        res->code.push_back(i1);

        return res;
    }
    
    // Dereference operator
    if (op == "*") {
        // Allow dereference for regular pointers (pointerLevel>0) and for function pointers
        if (operand.pointerLevel == 0 && !operand.isFunctionPointer) {
            type_error("Cannot dereference non-pointer type");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }

        // If this is a function pointer, do not emit a memory dereference.
        // Dereferencing a function pointer yields a callable designator; keep the
        // function-pointer metadata and preserve the operand.result (the function
        // address/label) so indirect call generation can use it.
        if (operand.isFunctionPointer) {
            TypeInfo* res = new TypeInfo(operand);
            // Treat the dereferenced function-pointer as a callable value (not an lvalue)
            res->isLvalue = false;
            // Keep the same result (the function pointer variable / label)
            res->result = operand.result;
            // No additional TAC emitted for unary * on function pointers
            cout << " -> " << res->toString() << "\n";
            return res;
        }

        // Regular pointer dereference
        TypeInfo* res = new TypeInfo(operand);
        res->pointerLevel--;
        // res of dereference is an lvalue (you can assign to *p)
        res->isLvalue = true;
        cout << " -> " << res->toString() << "\n";
        res->code = operand.code;
        TACOperand* temp = new_temp_var();
        res->result = temp;
        TACInstruction* i1 = emit(TACOperator(TAC_OPERATOR_DEREF), res->result, operand.result, new_empty_var(),0);
        res->code.push_back(i1);
        return res;
    }
    
    // Unknown operation
    type_error("Unknown unary operation: " + op);
    TypeInfo* res = new TypeInfo();
    res->baseType = "error";
    return res;
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

// Utility function to convert a type to a mangling code
string type_code_for_mangling(const TypeInfo& type) {
    string code = "";
    
    // Add base type encoding
    if (type.baseType == "int") code += "i";
    else if (type.baseType == "char") code += "c";
    else if (type.baseType == "float") code += "f";
    else if (type.baseType == "void") code += "v";
    else code += "u"; // unknown
    
    // Add pointer modifier
    if (type.pointerLevel > 0) code += "p" + to_string(type.pointerLevel);
    
    return code;
}



string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes, bool isVariadic) {
    string mangled = funcName;
    
    for (const TypeInfo& param : paramTypes) {
        mangled += "_";
        
        // Handle function pointers specially
        if (param.isFunctionPointer) {
            mangled += "fp";  // "fp" for function pointer
            
            // Add return type encoding (without separator)
            if (param.returnType) {
                mangled += "_r" + type_code_for_mangling(*param.returnType);
            }
            
            // Add parameter types encoding (without separator)
            if (param.parameterTypes) {
                mangled += "_p";
                for (const TypeInfo& fpParam : *param.parameterTypes) {
                    mangled += type_code_for_mangling(fpParam);
                }
            }
        } else {
            // Regular parameter encoding (your existing code)
            mangled += type_code_for_mangling(param);
        }
    }
    
    if (isVariadic) {
        mangled += "_variadic";
    }
    
    return mangled;
}

// Generate a mangled name for a variable using format: v_name_funname_signature_scopenum
string mangle_variable_name(const string& varName, int scopeLevel, const string& currentFuncName, const string& funcSignature) {
    string mangledName = "v_" + varName;
    
    // Add function name if available (non-global variable)
    if (!currentFuncName.empty()) {
        mangledName += "_" + currentFuncName;
        
        // Add function signature if available
        if (!funcSignature.empty()) {
            mangledName += "_" + funcSignature;
        }
    }
    
    // Add scope level
    mangledName += "_s" + to_string(scopeLevel);
    
    cout << "DEBUG: Variable " << varName << " mangled as " << mangledName 
         << " (function: " << (currentFuncName.empty() ? "global" : currentFuncName) 
         << ", signature: " << funcSignature << ", scope: " << scopeLevel << ")\n";
    
    return mangledName;
}

TypeInfo array_to_pointer_conversion(const TypeInfo& type) {
    TypeInfo res = type;
    if (res.isArray) {
        // For multidimensional arrays, we only decay the first dimension
        // int[3][4][5] -> int(*)[4][5]
        if (res.arrayDimensions.size() > 1) {
            // Create a pointer to the remaining array dimensions
            vector<int> remainingDimensions(res.arrayDimensions.begin() + 1, res.arrayDimensions.end());
            res.arrayDimensions = remainingDimensions;
            res.pointerLevel += 1;
        } else {
            // Simple case: array decays to pointer
            res.isArray = false;
            res.pointerLevel += 1;
            res.arrayDimensions.clear();
        }
        cout << "Array to pointer conversion: " << type.toString() << " -> " << res.toString() << "\n";
    }
    return res;
}

void insert_function(const string& name, const TypeInfo& returnType, const vector<TypeInfo>& paramTypes,bool isVariadic=false) {
    // Convert array parameters to pointers
    vector<TypeInfo> convertedParams;
    for (const TypeInfo& param : paramTypes) {
        convertedParams.push_back(array_to_pointer_conversion(param));
    }
    
    string mangledName = mangle_function_name(name, convertedParams, isVariadic);
    
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
    entry.isVariadic = isVariadic;
    
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
    
    // Priority 1: Try exact match first (non-variadic with exact types)
    string exactMangledName = mangle_function_name(name, convertedArgs, false);
    auto it = function_table.find(exactMangledName);
    if (it != function_table.end()) {
        cout << "Found exact function match: " << exactMangledName << "\n";
        return &(it->second);
    }
    
    // Priority 2: Collect non-variadic functions with type conversions
    vector<FunctionEntry*> compatibleNonVariadic;
    
    for (auto& entry : function_table) {
        FunctionEntry& func = entry.second;
        if (func.originalName == name && !func.isVariadic && 
            are_parameters_compatible(convertedArgs, func.parameters, false)) {
            compatibleNonVariadic.push_back(&func);
            cout << "Found compatible non-variadic function: " << func.mangledName << "\n";
        }
    }
    
    if (compatibleNonVariadic.size() == 1) {
        return compatibleNonVariadic[0];
    } else if (compatibleNonVariadic.size() > 1) {
        string errorMsg = "Ambiguous function call to '" + name + "', multiple matching non-variadic overloads:";
        for (auto* func : compatibleNonVariadic) {
            errorMsg += "\n  " + func->mangledName;
        }
        type_error(errorMsg);
        return nullptr;
    }
    
    // Priority 3: Check variadic functions
    vector<FunctionEntry*> compatibleVariadic;
    
    for (auto& entry : function_table) {
        FunctionEntry& func = entry.second;
        if (func.originalName == name && func.isVariadic) {
            // For variadic functions, we only check fixed parameters
            // Extra arguments are allowed and don't need type checking
            if (are_parameters_compatible(convertedArgs, func.parameters, true)) {
                compatibleVariadic.push_back(&func);
                cout << "Found compatible variadic function: " << func.mangledName << "\n";
            }
        }
    }
    
    if (compatibleVariadic.size() == 1) {
        return compatibleVariadic[0];
    } else if (compatibleVariadic.size() > 1) {
        string errorMsg = "Ambiguous function call to '" + name + "', multiple matching variadic overloads:";
        for (auto* func : compatibleVariadic) {
            errorMsg += "\n  " + func->mangledName;
        }
        type_error(errorMsg);
        return nullptr;
    }
    
    // No compatible functions found
    return nullptr;
}

bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params,bool isVariadic) {
     if (isVariadic) {
        // For variadic functions, allow more arguments than fixed parameters
        if (argTypes.size() < params.size()) {
            return false;  // Too few arguments
        }
        // Check only the fixed parameters
        for (size_t i = 0; i < params.size(); i++) {
            if (!is_implicit_conversion_allowed(argTypes[i], params[i].type)) {
                return false;
            }
        }
        return true;
    } else {
        // For non-variadic functions, exact count required
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

// Struct/Union management functions implementation

void insert_struct_union(const string& name, bool isUnion, const vector<StructMember>& members, int scope_level) {
    string key = (isUnion ? "union " : "struct ") + name;
/*     
    // Check if already defined in current scope
    if (struct_union_table.find(key) != struct_union_table.end() && !struct_union_table[key].empty()) {
        if (struct_union_table[key].back().scope_level == scope_level) {
            type_warning("Redefinition of " + key + " in the same scope");
        }
    } */
    //naya
    if (name.find("<anonymous>") == string::npos) {
        if (struct_union_table.find(key) != struct_union_table.end() && !struct_union_table[key].empty()) {
            if (struct_union_table[key].back().scope_level == scope_level) {
                type_warning("Redefinition of " + key + " in the same scope");
            }
        }
    }
    
    StructUnionDef def;
    def.name = name;
    def.isUnion = isUnion;
    def.members = members;
    def.scope_level = scope_level;
    
    // Calculate offsets and total size
    int currentOffset = 0;
    int maxSize = 0;
    
    for (size_t i = 0; i < def.members.size(); i++) {
        if (isUnion) {
            // Union: all members start at offset 0
            def.members[i].offset = 0;
            int memberSize = getSize(def.members[i].type);
            if (memberSize > maxSize) {
                maxSize = memberSize;
            }
        } else {
            // Struct: members are laid out sequentially
            def.members[i].offset = currentOffset;
            int memberSize = getSize(def.members[i].type);
            currentOffset += memberSize;
        }
    }
    
    def.totalSize = isUnion ? maxSize : currentOffset;
    
    // Just push back to vector
    struct_union_table[key].push_back(def);
    
    cout << "Registered " << key << " in scope " << scope_level 
         << " with " << members.size() << " members, total size: " << def.totalSize << " bytes\n";
    
    // Print member details
    for (const auto& member : def.members) {
        cout << "  - " << member.name << ": " << member.type.toString() 
             << " at offset " << member.offset << "\n";
    }
}

StructUnionDef* lookup_struct_union(const string& name) {
    // First try exact match (for "struct S" or "union U")
    if (struct_union_table.find(name) != struct_union_table.end() && !struct_union_table[name].empty()) {
        return &struct_union_table[name].back();
    }
    
    // Try with "struct" prefix if not already there
    if (name.find("struct ") != 0 && name.find("union ") != 0) {
        string structKey = "struct " + name;
        if (struct_union_table.find(structKey) != struct_union_table.end() && !struct_union_table[structKey].empty()) {
            return &struct_union_table[structKey].back();
        }
        
        string unionKey = "union " + name;
        if (struct_union_table.find(unionKey) != struct_union_table.end() && !struct_union_table[unionKey].empty()) {
            return &struct_union_table[unionKey].back();
        }
    }
    
    return nullptr;
}

StructMember* find_member(StructUnionDef* def, const string& memberName) {
    if (!def) return nullptr;
    
    for (size_t i = 0; i < def->members.size(); i++) {
        if (def->members[i].name == memberName) {
            return &def->members[i];
        }
    }
    
    return nullptr;
}
//##############################################################################
//########################## Enum Management Functions #######################
//##############################################################################

void insert_enum(const string& name, int scope_level) {
    string key = name.empty() ? ("anonymous_enum_" + to_string(scope_level)) : name;
    
    EnumInfo info;
    info.name = name;
    info.scope_level = scope_level;
    info.isAnonymous = name.empty();
    
    enum_table[key].push_back(info);
    
    cout << "Registered enum '" << key << "' in scope " << scope_level << "\n";
}

bool is_enum_defined(const string& name, int scope_level) {
    if (enum_table.find(name) != enum_table.end()) {
        for (const auto& info : enum_table[name]) {
            if (info.scope_level == scope_level) {
                return true;
            }
        }
    }
    return false;
}

void insert_enumerator(const string& name, int value) {
    if (scope_stack.empty()) {
        type_error("Cannot define enumerator outside of any scope");
        return;
    }
    
    auto& current_scope = scope_stack.back();
    
    // Check if this name already exists in current scope
    if (current_scope.symbols.find(name) != current_scope.symbols.end()) {
        type_error("Redeclaration of identifier '" + name + "' as enumerator");
        return;
    }
    
    // Create a const int symbol for the enumerator
    SymbolEntry entry;
    entry.name = name;
    entry.type.baseType = "int";
    entry.type.pointerLevel = 0;
    entry.type.isArray = false;
    entry.line = yylineno;
    entry.scope_level = current_scope_level;
    entry.isConst = true;
    entry.constValue = value;
    entry.mangledName = "enum_" + name;  // Simple mangling for enumerators
    
    current_scope.symbols[name] = entry;
    
    cout << "Registered enumerator: " << name << " = " << value << " at line " << yylineno 
         << " in scope " << current_scope_level << "\n";
}

// Display all enums (for debugging)
void display_enum_table() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                    ENUM TABLE                                          |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (enum_table.empty()) {
        cout << "No enums defined.\n";
        return;
    }
    
    for (const auto& entry : enum_table) {
        const string& enum_name = entry.first;
        const vector<EnumInfo>& enum_stack = entry.second;
        
        cout << "Enum: " << enum_name << "\n";
        for (size_t i = 0; i < enum_stack.size(); i++) {
            const EnumInfo& enumInfo = enum_stack[i];
            cout << "  [" << i << "] Scope " << enumInfo.scope_level 
                 << (enumInfo.isAnonymous ? " (anonymous)" : "") << "\n";
        }
    }
    
    cout << "\n";
}
//##############################################################################
//########################## Typedef Management Functions #######################
//##############################################################################

void insert_typedef(const string& name, const TypeInfo& type, int scope_level) {
    // Check if typedef already exists in current scope
    if (!scope_stack.empty() && scope_stack.back().typedefs.find(name) != scope_stack.back().typedefs.end()) {
        type_error("Redefinition of typedef '" + name + "' in the same scope");
        return;
    }
    
    // Add to current scope's typedef table
    if (!scope_stack.empty()) {
        scope_stack.back().typedefs[name] = type;
    }
    
    // Add to global map for fast lookup (push to vector for scoping/shadowing)
    typedef_table[name].push_back(type);
    
    cout << "Registered typedef: " << name << " = " << type.toString() 
         << " at scope " << scope_level << "\n";
}

TypeInfo* lookup_typedef(const string& name) {
    // Search in global map from innermost to outermost scope
    auto it = typedef_table.find(name);
    if (it != typedef_table.end() && !it->second.empty()) {
        // Return the most recent typedef (innermost scope)
        return &(it->second.back());
    }
    
    return nullptr;
}

bool is_typedef_name(const string& name) {
    return lookup_typedef(name) != nullptr;
}

// Display all typedefs (for debugging)
void display_typedef_table() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                    TYPEDEF TABLE                                       |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (typedef_table.empty()) {
        cout << "No typedefs defined.\n";
        return;
    }
    
    for (const auto& entry : typedef_table) {
        const string& typedef_name = entry.first;
        const vector<TypeInfo>& type_stack = entry.second;
        
        cout << "Typedef: " << typedef_name << "\n";
        for (size_t i = 0; i < type_stack.size(); i++) {
            cout << "  [" << i << "] -> " << type_stack[i].toString() << "\n";
        }
    }
    
    cout << "\n";
}

// Display all jump tables (for debugging)
void display_jump_tables() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                    JUMP TABLES                                         |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (overall_jump_tables.empty()) {
        cout << "No jump tables generated.\n";
        return;
    }
    
    for (const auto& table_entry : overall_jump_tables) {
        int table_id = table_entry.first;
        const map<int, TACOperand*>& jump_table = table_entry.second;
        
        cout << "\nJump Table " << table_id << ":\n";
        
        for (const auto& case_entry : jump_table) {
            int case_value = case_entry.first;
            TACOperand* label = case_entry.second;
            
            if (case_value == -1) {
                cout << "  default -> " << (label ? label->value : "NULL") << "\n";
            } else {
                cout << "  case " << case_value << " -> " << (label ? label->value : "NULL") << "\n";
            }
        }
    }
    
    cout << "\n";
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

    string base_name = input_filename;
    size_t last_dot = base_name.find_last_of('.');
    if (last_dot != string::npos) {
        base_name = base_name.substr(0, last_dot);
    }
    output_tac_filename = base_name + ".tac";

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
	
	// Display jump tables
	display_jump_tables();
	
	// Display typedef table
	display_typedef_table();
	// Display enum table
	display_enum_table();
	// Clean up all remaining scopes
	while (!scope_stack.empty()) {
		exit_scope();
	}
	
	// Close error log
	close_error_log();
	
	fclose(f);
	return res;
}



