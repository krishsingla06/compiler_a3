/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015, 2018-2021 Free Software Foundation,
   Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <https://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.

   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 28 "parser.y"

    #include <bits/stdc++.h>
    //#include "tac.h"
    //---------------------------------


#include <unordered_map>
#include <unordered_set>
#include <string>
#include <vector>
using namespace std;

class Type;

static unsigned int instruction_id = 1;
static unsigned int temp_var_id = 1;
static unsigned int label_id = 1;
const int MAX_CODE_SIZE = 1e6; // Maximum number of TAC instructions

//##############################################################################
//################################## TACOperand ######################################
//##############################################################################

enum TACOperandType {
    TAC_OPERAND_TEMP_VAR,         // Temporary variables (e.g., t1, t2)
    TAC_OPERAND_IDENTIFIER,       // User-defined variables
    TAC_OPERAND_CONSTANT,         // Integer or float or string constants (e.g., 42, 3.14)
    TAC_OPERAND_LABEL,            // Jump targets (e.g., L1, L2)
    TAC_OPERAND_POINTER,          // Pointer (e.g., int*)
    TAC_OPERAND_TYPE,            // Type (e.g., int, float)
    TAC_OPERAND_EMPTY,           // Empty operand (used for NOP or no operation)
    TAC_OPERAND_STRING,          // String literal (e.g., "Hello")
};
class TACOperand {
public:
    TACOperandType type; // Type of the operand (e.g., TEMP_VAR, IDENTIFIER, CONSTANT)
    string value;        // Value of the operand (e.g., variable name, constant value)

    TACOperand() : type(TACOperandType::TAC_OPERAND_EMPTY), value("") {}

    TACOperand(TACOperandType type, string value);
};

extern unordered_map<string, TACOperand* > identifiers; // Map to store identifiers and their corresponding TAC operands

TACOperand* new_temp_var();

TACOperand* new_empty_var();

TACOperand* new_label();

TACOperand* new_label(int offset);

TACOperand* new_constant(string value);

TACOperand* new_identifier(string value);

TACOperand* new_type(string value);

TACOperand* new_string(string value);

//##############################################################################
//################################## TACOperator ######################################
//##############################################################################

enum TACOperatorType {
    // Arithmetic Operators
    TAC_OPERATOR_ADD = 0,        // + #codegen done (add)
    TAC_OPERATOR_SUB,        // - #codegen done (sub)
    TAC_OPERATOR_MUL,        // * #codegen done (mul)
    TAC_OPERATOR_DIV,        // / #codegen done (div)
    TAC_OPERATOR_MOD,        // % #codegen done (mod)
    TAC_OPERATOR_UMINUS,     // Unary minus (-x) #codegen done (neg)

    // Relational Operators
    TAC_OPERATOR_EQ,         // ==
    TAC_OPERATOR_NE,         // !=
    TAC_OPERATOR_GT,         // >
    TAC_OPERATOR_LT,         // <
    TAC_OPERATOR_GE,         // >=
    TAC_OPERATOR_LE,         // <=

    // Logical Operators
    TAC_OPERATOR_AND,        // && 
    TAC_OPERATOR_OR,         // ||
    TAC_OPERATOR_NOT,        // ! 

    // Bitwise Operators
    TAC_OPERATOR_BIT_AND,    // & #codegen done (and)
    TAC_OPERATOR_BIT_OR,     // | #codegen done (or)
    TAC_OPERATOR_BIT_XOR,    // ^ #codegen done (xor)
    TAC_OPERATOR_LEFT_SHIFT, // << // #codegen done (sllv)
    TAC_OPERATOR_RIGHT_SHIFT,// >> // #codegen done (srlv, srav)
    TAC_OPERATOR_BIT_NOT,    // ~ // #codegen done (not)

    // // Assignment Operators
    TAC_OPERATOR_ASSIGN,     // = #codegen done (load)

    // Pointer and Memory Operators
    TAC_OPERATOR_ADDR_OF,    // & (Address-of) #codegen done (la)
    TAC_OPERATOR_DEREF,      // * (Dereference) #codegen done (load)

    // Casting Operators
    TAC_OPERATOR_CAST,       // Type casting (e.g., (int)x) #codegen done (cast)

    // Control Flow (Branching & Jumps)
    TAC_OPERATOR_GOTO,       // goto label
    TAC_OPERATOR_IF_GOTO,         // if (condition) goto label
    TAC_OPERATOR_LABEL,      // Label definition

    // Function and Procedure Handling
    TAC_OPERATOR_CALL,       // Function call
    TAC_OPERATOR_RETURN,     // return value
    TAC_OPERATOR_PARAM,      // Function parameter passing
    TAC_OPERATOR_FUNC_BEGIN, // Function prologue
    TAC_OPERATOR_FUNC_END,   // Function epilogue

    // Array and Indexing Operators
    TAC_OPERATOR_INDEX,        // Array access: T = a[i]
    TAC_OPERATOR_INDEX_ASSIGN, // Array assignment: a[i] = T

    // Miscellaneous
    TAC_OPERATOR_NOP         // No operation
};

class TACOperator {
public:
    TACOperatorType type; // Type of the operator (e.g., ADD, SUB, MUL)
    // string value;        // Value of the operator (e.g., "+", "-", "*")
    TACOperator(); // Default constructor
    TACOperator(TACOperatorType type);
};


//##############################################################################
//################################## TACInstruction ######################################
//##############################################################################

//ok - bass label mei mere acc TACOperand* ki jagah sirf int bhi rakh stke the, i am unable to understand for now why its datatype is TACOperand*
class TACInstruction {
public:
    TACOperand* label; // Unique instruction label (instruction number)
    int flag; // if 0, then it is a normal instruction, if 1 then it is a goto instruction, if 2 then it is an if goto instruction
    TACOperator op; // Operator (e.g., ADD, SUB)
    TACOperand* arg1; // First operand (e.g., t1, a, 5)
    TACOperand* arg2; // Second operand (e.g., t2, b, 10)
    TACOperand* result; // Result operand (e.g., t3, c)

    // Default constructor
    TACInstruction() : label(nullptr), flag(0), op(TACOperator()), arg1(nullptr), arg2(nullptr), result(nullptr) {}
    TACInstruction(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag);
};

bool is_assignment(TACInstruction* instruction);

extern vector<TACInstruction*> TAC_CODE; // Array of TAC instructions

TACInstruction* emit(TACOperator op, TACOperand* result, TACOperand* arg1, TACOperand* arg2, int flag); // ok

void backpatch(unordered_set<TACInstruction*> list, TACOperand* label);

unordered_set<TACInstruction*> merge_lists(unordered_set<TACInstruction*>& list1, unordered_set<TACInstruction*>& list2);

void print_TAC_instruction(TACInstruction* instruction);

string get_TAC_instruction_string(TACInstruction* instruction); 

void print_TAC();

int give_current_instruction_number();

// void remove_dead_code();
// const char* getOperatorName(TACOperatorType op);

void fix_labels_temps();

//##############################################################################
//################################## PRINT TACInstruction ######################################
//##############################################################################

string get_operand_string(TACOperand* operand);


//------------------------------------
    using namespace std;
    
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

        TACOperand* result; // Result of the expression
        unordered_set<TACInstruction*> true_list; // List of true instructions (for conditional jumps)
        unordered_set<TACInstruction*> false_list; // List of false instructions (for conditional jumps)
        unordered_set<TACInstruction*> next_list; // List of next instructions (for jumps) (conditional expressions)
        vector<TACInstruction*> code; // List of instructions for the expression

        unordered_set<TACInstruction*> break_list; // List of break instructions (for loops/switch)
        unordered_set<TACInstruction*> continue_list; // List of continue instructions (for loops)
        //vector<TACInstruction*> return_list; // List of return instructions (for functions)
        // we will use it in future

        
        TypeInfo() : isStatic(false), baseType(""), 
                     pointerLevel(0), isArray(false), 
                     arrayDimensions(), identifier(""), isLiteral(false), isLvalue(false) {}
        
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), pointerLevel(other.pointerLevel), 
                    isArray(other.isArray), arrayDimensions(other.arrayDimensions),
                    identifier(other.identifier), isLiteral(other.isLiteral),
                    isLvalue(other.isLvalue) {}
        
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
            res += baseType;
            
            // Add pointer asterisks
            for (int i = 0; i < pointerLevel; i++) {
                res += "*";
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

    // Scope context for semantic checking
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        int scope_level;
        
        ScopeContext(int level) : scope_level(level) {}
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable/function name
        int pointerLevel;       // Number of pointer levels (*, **, ***, etc.)
        bool isArray;
        vector<int> arrayDimensions; // Dimensions for multidimensional arrays [3][4][5]
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        // Function-specific information
        bool isFunction;        // True if this is a function declarator
        vector<TypeInfo>* paramTypes;  // Parameter types for functions
        
        DeclaratorInfo() : name(""), pointerLevel(0), 
                          isArray(false), arrayDimensions(), initValue(""), initType(nullptr),
                          isFunction(false), paramTypes(nullptr) {}
                          
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

#line 369 "parser.tab.h"

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INT = 258,                     /* INT  */
    FLOAT = 259,                   /* FLOAT  */
    CHAR = 260,                    /* CHAR  */
    VOID = 261,                    /* VOID  */
    IF = 262,                      /* IF  */
    ELSE = 263,                    /* ELSE  */
    FOR = 264,                     /* FOR  */
    WHILE = 265,                   /* WHILE  */
    DO = 266,                      /* DO  */
    UNTIL = 267,                   /* UNTIL  */
    BREAK = 268,                   /* BREAK  */
    CONTINUE = 269,                /* CONTINUE  */
    SWITCH = 270,                  /* SWITCH  */
    CASE = 271,                    /* CASE  */
    DEFAULT = 272,                 /* DEFAULT  */
    SIZEOF = 273,                  /* SIZEOF  */
    STATIC = 274,                  /* STATIC  */
    GOTO = 275,                    /* GOTO  */
    NULL_LITERAL = 276,            /* NULL_LITERAL  */
    INVALID = 277,                 /* INVALID  */
    INCREMENT = 278,               /* INCREMENT  */
    DECREMENT = 279,               /* DECREMENT  */
    ARROW = 280,                   /* ARROW  */
    LEFT_SHIFT = 281,              /* LEFT_SHIFT  */
    RIGHT_SHIFT = 282,             /* RIGHT_SHIFT  */
    LOGICAL_AND = 283,             /* LOGICAL_AND  */
    LOGICAL_OR = 284,              /* LOGICAL_OR  */
    EQ = 285,                      /* EQ  */
    NEQ = 286,                     /* NEQ  */
    LE = 287,                      /* LE  */
    GE = 288,                      /* GE  */
    PLUS = 289,                    /* PLUS  */
    MINUS = 290,                   /* MINUS  */
    STAR = 291,                    /* STAR  */
    DIVIDE = 292,                  /* DIVIDE  */
    MOD = 293,                     /* MOD  */
    ASSIGN = 294,                  /* ASSIGN  */
    LT = 295,                      /* LT  */
    GT = 296,                      /* GT  */
    LOGICAL_NOT = 297,             /* LOGICAL_NOT  */
    BIT_AND = 298,                 /* BIT_AND  */
    BIT_OR = 299,                  /* BIT_OR  */
    BIT_XOR = 300,                 /* BIT_XOR  */
    BIT_NOT = 301,                 /* BIT_NOT  */
    DOT = 302,                     /* DOT  */
    COLON = 303,                   /* COLON  */
    SEMICOLON = 304,               /* SEMICOLON  */
    COMMA = 305,                   /* COMMA  */
    LBRACE = 306,                  /* LBRACE  */
    RBRACE = 307,                  /* RBRACE  */
    LPAREN = 308,                  /* LPAREN  */
    RPAREN = 309,                  /* RPAREN  */
    LBRACKET = 310,                /* LBRACKET  */
    RBRACKET = 311,                /* RBRACKET  */
    STRUCT = 312,                  /* STRUCT  */
    RETURN = 313,                  /* RETURN  */
    IDENTIFIER = 314,              /* IDENTIFIER  */
    INT_LITERAL = 315,             /* INT_LITERAL  */
    FLOAT_LITERAL = 316,           /* FLOAT_LITERAL  */
    STRING_LITERAL = 317,          /* STRING_LITERAL  */
    CHAR_LITERAL = 318             /* CHAR_LITERAL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 462 "parser.y"

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

#line 462 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
