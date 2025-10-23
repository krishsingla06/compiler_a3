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

#line 289 "parser.tab.h"

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
    TYPEDEF = 276,                 /* TYPEDEF  */
    NULL_LITERAL = 277,            /* NULL_LITERAL  */
    INVALID = 278,                 /* INVALID  */
    INCREMENT = 279,               /* INCREMENT  */
    DECREMENT = 280,               /* DECREMENT  */
    ARROW = 281,                   /* ARROW  */
    LEFT_SHIFT = 282,              /* LEFT_SHIFT  */
    RIGHT_SHIFT = 283,             /* RIGHT_SHIFT  */
    ELLIPSIS = 284,                /* ELLIPSIS  */
    LOGICAL_AND = 285,             /* LOGICAL_AND  */
    LOGICAL_OR = 286,              /* LOGICAL_OR  */
    EQ = 287,                      /* EQ  */
    NEQ = 288,                     /* NEQ  */
    LE = 289,                      /* LE  */
    GE = 290,                      /* GE  */
    PLUS = 291,                    /* PLUS  */
    MINUS = 292,                   /* MINUS  */
    STAR = 293,                    /* STAR  */
    DIVIDE = 294,                  /* DIVIDE  */
    MOD = 295,                     /* MOD  */
    ASSIGN = 296,                  /* ASSIGN  */
    LT = 297,                      /* LT  */
    GT = 298,                      /* GT  */
    LOGICAL_NOT = 299,             /* LOGICAL_NOT  */
    BIT_AND = 300,                 /* BIT_AND  */
    BIT_OR = 301,                  /* BIT_OR  */
    BIT_XOR = 302,                 /* BIT_XOR  */
    BIT_NOT = 303,                 /* BIT_NOT  */
    DOT = 304,                     /* DOT  */
    COLON = 305,                   /* COLON  */
    SEMICOLON = 306,               /* SEMICOLON  */
    COMMA = 307,                   /* COMMA  */
    LBRACE = 308,                  /* LBRACE  */
    RBRACE = 309,                  /* RBRACE  */
    LPAREN = 310,                  /* LPAREN  */
    RPAREN = 311,                  /* RPAREN  */
    LBRACKET = 312,                /* LBRACKET  */
    RBRACKET = 313,                /* RBRACKET  */
    STRUCT = 314,                  /* STRUCT  */
    RETURN = 315,                  /* RETURN  */
    UNION = 316,                   /* UNION  */
    IDENTIFIER = 317,              /* IDENTIFIER  */
    TYPENAME = 318,                /* TYPENAME  */
    INT_LITERAL = 319,             /* INT_LITERAL  */
    FLOAT_LITERAL = 320,           /* FLOAT_LITERAL  */
    STRING_LITERAL = 321,          /* STRING_LITERAL  */
    CHAR_LITERAL = 322,            /* CHAR_LITERAL  */
    ENUM = 323                     /* ENUM  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 465 "parser.y"

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

#line 388 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
