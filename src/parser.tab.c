/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison implementation for Yacc-like parsers in C

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

/* C LALR(1) parser skeleton written by Richard Stallman, by
   simplifying the original so-called "semantic" parser.  */

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

/* All symbols defined below should begin with yy or YY, to avoid
   infringing on user name space.  This should be done even for local
   variables, as they might otherwise be expanded by user macros.
   There are some unavoidable exceptions within include files to
   define necessary library symbols; they are noted "INFRINGES ON
   USER NAME SPACE" below.  */

/* Identify Bison output, and Bison version.  */
#define YYBISON 30802

/* Bison version string.  */
#define YYBISON_VERSION "3.8.2"

/* Skeleton name.  */
#define YYSKELETON_NAME "yacc.c"

/* Pure parsers.  */
#define YYPURE 0

/* Push parsers.  */
#define YYPUSH 0

/* Pull parsers.  */
#define YYPULL 1




/* First part of user prologue.  */
#line 1 "parser.y"

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


#line 98 "parser.tab.c"

# ifndef YY_CAST
#  ifdef __cplusplus
#   define YY_CAST(Type, Val) static_cast<Type> (Val)
#   define YY_REINTERPRET_CAST(Type, Val) reinterpret_cast<Type> (Val)
#  else
#   define YY_CAST(Type, Val) ((Type) (Val))
#   define YY_REINTERPRET_CAST(Type, Val) ((Type) (Val))
#  endif
# endif
# ifndef YY_NULLPTR
#  if defined __cplusplus
#   if 201103L <= __cplusplus
#    define YY_NULLPTR nullptr
#   else
#    define YY_NULLPTR 0
#   endif
#  else
#   define YY_NULLPTR ((void*)0)
#  endif
# endif

#include "parser.tab.h"
/* Symbol kind.  */
enum yysymbol_kind_t
{
  YYSYMBOL_YYEMPTY = -2,
  YYSYMBOL_YYEOF = 0,                      /* "end of file"  */
  YYSYMBOL_YYerror = 1,                    /* error  */
  YYSYMBOL_YYUNDEF = 2,                    /* "invalid token"  */
  YYSYMBOL_INT = 3,                        /* INT  */
  YYSYMBOL_FLOAT = 4,                      /* FLOAT  */
  YYSYMBOL_CHAR = 5,                       /* CHAR  */
  YYSYMBOL_VOID = 6,                       /* VOID  */
  YYSYMBOL_IF = 7,                         /* IF  */
  YYSYMBOL_ELSE = 8,                       /* ELSE  */
  YYSYMBOL_FOR = 9,                        /* FOR  */
  YYSYMBOL_WHILE = 10,                     /* WHILE  */
  YYSYMBOL_DO = 11,                        /* DO  */
  YYSYMBOL_UNTIL = 12,                     /* UNTIL  */
  YYSYMBOL_BREAK = 13,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 14,                  /* CONTINUE  */
  YYSYMBOL_SWITCH = 15,                    /* SWITCH  */
  YYSYMBOL_CASE = 16,                      /* CASE  */
  YYSYMBOL_DEFAULT = 17,                   /* DEFAULT  */
  YYSYMBOL_SIZEOF = 18,                    /* SIZEOF  */
  YYSYMBOL_STATIC = 19,                    /* STATIC  */
  YYSYMBOL_GOTO = 20,                      /* GOTO  */
  YYSYMBOL_TYPEDEF = 21,                   /* TYPEDEF  */
  YYSYMBOL_NULL_LITERAL = 22,              /* NULL_LITERAL  */
  YYSYMBOL_INVALID = 23,                   /* INVALID  */
  YYSYMBOL_INCREMENT = 24,                 /* INCREMENT  */
  YYSYMBOL_DECREMENT = 25,                 /* DECREMENT  */
  YYSYMBOL_ARROW = 26,                     /* ARROW  */
  YYSYMBOL_LEFT_SHIFT = 27,                /* LEFT_SHIFT  */
  YYSYMBOL_RIGHT_SHIFT = 28,               /* RIGHT_SHIFT  */
  YYSYMBOL_LOGICAL_AND = 29,               /* LOGICAL_AND  */
  YYSYMBOL_LOGICAL_OR = 30,                /* LOGICAL_OR  */
  YYSYMBOL_EQ = 31,                        /* EQ  */
  YYSYMBOL_NEQ = 32,                       /* NEQ  */
  YYSYMBOL_LE = 33,                        /* LE  */
  YYSYMBOL_GE = 34,                        /* GE  */
  YYSYMBOL_PLUS = 35,                      /* PLUS  */
  YYSYMBOL_MINUS = 36,                     /* MINUS  */
  YYSYMBOL_STAR = 37,                      /* STAR  */
  YYSYMBOL_DIVIDE = 38,                    /* DIVIDE  */
  YYSYMBOL_MOD = 39,                       /* MOD  */
  YYSYMBOL_ASSIGN = 40,                    /* ASSIGN  */
  YYSYMBOL_LT = 41,                        /* LT  */
  YYSYMBOL_GT = 42,                        /* GT  */
  YYSYMBOL_LOGICAL_NOT = 43,               /* LOGICAL_NOT  */
  YYSYMBOL_BIT_AND = 44,                   /* BIT_AND  */
  YYSYMBOL_BIT_OR = 45,                    /* BIT_OR  */
  YYSYMBOL_BIT_XOR = 46,                   /* BIT_XOR  */
  YYSYMBOL_BIT_NOT = 47,                   /* BIT_NOT  */
  YYSYMBOL_DOT = 48,                       /* DOT  */
  YYSYMBOL_COLON = 49,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 50,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 51,                     /* COMMA  */
  YYSYMBOL_LBRACE = 52,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 53,                    /* RBRACE  */
  YYSYMBOL_LPAREN = 54,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 55,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 56,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 57,                  /* RBRACKET  */
  YYSYMBOL_STRUCT = 58,                    /* STRUCT  */
  YYSYMBOL_RETURN = 59,                    /* RETURN  */
  YYSYMBOL_UNION = 60,                     /* UNION  */
  YYSYMBOL_IDENTIFIER = 61,                /* IDENTIFIER  */
  YYSYMBOL_INT_LITERAL = 62,               /* INT_LITERAL  */
  YYSYMBOL_FLOAT_LITERAL = 63,             /* FLOAT_LITERAL  */
  YYSYMBOL_STRING_LITERAL = 64,            /* STRING_LITERAL  */
  YYSYMBOL_CHAR_LITERAL = 65,              /* CHAR_LITERAL  */
  YYSYMBOL_ENUM = 66,                      /* ENUM  */
  YYSYMBOL_YYACCEPT = 67,                  /* $accept  */
  YYSYMBOL_start = 68,                     /* start  */
  YYSYMBOL_global_declaration = 69,        /* global_declaration  */
  YYSYMBOL_function_definition = 70,       /* function_definition  */
  YYSYMBOL_71_1 = 71,                      /* $@1  */
  YYSYMBOL_marker_fun_begin = 72,          /* marker_fun_begin  */
  YYSYMBOL_declaration = 73,               /* declaration  */
  YYSYMBOL_return_types = 74,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 75,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 76,            /* type_specifier  */
  YYSYMBOL_enum_specifier = 77,            /* enum_specifier  */
  YYSYMBOL_enumerator = 78,                /* enumerator  */
  YYSYMBOL_enumerator_list = 79,           /* enumerator_list  */
  YYSYMBOL_cast_type_specifier = 80,       /* cast_type_specifier  */
  YYSYMBOL_typedef_declarator_list = 81,   /* typedef_declarator_list  */
  YYSYMBOL_init_declarator_list = 82,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 83,           /* init_declarator  */
  YYSYMBOL_declarator = 84,                /* declarator  */
  YYSYMBOL_direct_declarator = 85,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 86,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 87,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 88,          /* declaration_list  */
  YYSYMBOL_initializer = 89,               /* initializer  */
  YYSYMBOL_parameter_list = 90,            /* parameter_list  */
  YYSYMBOL_parameter_declaration = 91,     /* parameter_declaration  */
  YYSYMBOL_parameter_declarator = 92,      /* parameter_declarator  */
  YYSYMBOL_parameter_direct_declarator = 93, /* parameter_direct_declarator  */
  YYSYMBOL_primary_expression = 94,        /* primary_expression  */
  YYSYMBOL_postfix_expression = 95,        /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 96,  /* argument_expression_list  */
  YYSYMBOL_unary_expression = 97,          /* unary_expression  */
  YYSYMBOL_unary_operator = 98,            /* unary_operator  */
  YYSYMBOL_cast_expression = 99,           /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 100, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 101,      /* additive_expression  */
  YYSYMBOL_shift_expression = 102,         /* shift_expression  */
  YYSYMBOL_relational_expression = 103,    /* relational_expression  */
  YYSYMBOL_equality_expression = 104,      /* equality_expression  */
  YYSYMBOL_and_expression = 105,           /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 106,  /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 107,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 108,   /* logical_and_expression  */
  YYSYMBOL_109_2 = 109,                    /* $@2  */
  YYSYMBOL_logical_or_expression = 110,    /* logical_or_expression  */
  YYSYMBOL_111_3 = 111,                    /* $@3  */
  YYSYMBOL_conditional_expression = 112,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 113,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 114,      /* assignment_operator  */
  YYSYMBOL_expression = 115,               /* expression  */
  YYSYMBOL_constant_expression = 116,      /* constant_expression  */
  YYSYMBOL_struct_or_union_specifier = 117, /* struct_or_union_specifier  */
  YYSYMBOL_118_4 = 118,                    /* $@4  */
  YYSYMBOL_119_5 = 119,                    /* $@5  */
  YYSYMBOL_struct_or_union = 120,          /* struct_or_union  */
  YYSYMBOL_struct_declaration_list = 121,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 122,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 123,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 124,        /* struct_declarator  */
  YYSYMBOL_pointer = 125,                  /* pointer  */
  YYSYMBOL_statement = 126,                /* statement  */
  YYSYMBOL_labeled_statement = 127,        /* labeled_statement  */
  YYSYMBOL_128_6 = 128,                    /* $@6  */
  YYSYMBOL_compound_statement = 129,       /* compound_statement  */
  YYSYMBOL_130_7 = 130,                    /* $@7  */
  YYSYMBOL_marker = 131,                   /* marker  */
  YYSYMBOL_statement_list = 132,           /* statement_list  */
  YYSYMBOL_expression_statement = 133,     /* expression_statement  */
  YYSYMBOL_selection_statement = 134,      /* selection_statement  */
  YYSYMBOL_135_8 = 135,                    /* $@8  */
  YYSYMBOL_136_9 = 136,                    /* $@9  */
  YYSYMBOL_if_expression = 137,            /* if_expression  */
  YYSYMBOL_138_10 = 138,                   /* $@10  */
  YYSYMBOL_iteration_statement = 139,      /* iteration_statement  */
  YYSYMBOL_140_11 = 140,                   /* $@11  */
  YYSYMBOL_141_12 = 141,                   /* $@12  */
  YYSYMBOL_142_13 = 142,                   /* $@13  */
  YYSYMBOL_begin_marker = 143,             /* begin_marker  */
  YYSYMBOL_jump_statement = 144            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 427 "parser.y"

    // Add this struct in %code requires section, around line 200
// struct EnumeratorInfo {
//     string name;
//     bool hasExplicitValue;
//     int explicitValue;
    
//     EnumeratorInfo() : name(""), hasExplicitValue(false), explicitValue(0) {}
// };
    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;
    
    // Struct/Union table - maps "struct name" or "union name" to a stack of definitions
    // Inner scopes shadow outer scopes by adding to the end of the vector
    map<string, vector<StructUnionDef>> struct_union_table;
    
    // Function symbol table
    map<string, FunctionEntry> function_table;
    // In %code section
map<string, vector<EnumDef>> enum_table;  // Similar to struct_union_table
map<string, EnumConstant> enum_constants; // Global enum constant lookup
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
    string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes);
    string mangle_variable_name(const string& varName, int scopeLevel, const string& currentFuncName, const string& funcSignature);
    TypeInfo array_to_pointer_conversion(const TypeInfo& type);
    void insert_function(const string& name, const TypeInfo& returnType, const vector<TypeInfo>& paramTypes);
    FunctionEntry* lookup_function(const string& name, const vector<TypeInfo>& argTypes);
    bool is_function_name(const string& name);
    bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params);
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
            base_size = 8;
        }
        else if(t.baseType == "void"){
            base_size = 0; // void has no size
        }
else if(t.isEnum) {
    base_size = 4; // Enums are typically int-sized
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
void insert_enum(const string& name, const vector<EnumConstant>& constants, int scope_level);
EnumDef* lookup_enum(const string& name);
bool lookup_enum_constant(const string& name, EnumConstant& constant);
void insert_enum_constant(const string& name, int value, int line);

    

#line 465 "parser.tab.c"

#ifdef short
# undef short
#endif

/* On compilers that do not define __PTRDIFF_MAX__ etc., make sure
   <limits.h> and (if available) <stdint.h> are included
   so that the code can choose integer types of a good width.  */

#ifndef __PTRDIFF_MAX__
# include <limits.h> /* INFRINGES ON USER NAME SPACE */
# if defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stdint.h> /* INFRINGES ON USER NAME SPACE */
#  define YY_STDINT_H
# endif
#endif

/* Narrow types that promote to a signed type and that can represent a
   signed or unsigned integer of at least N bits.  In tables they can
   save space and decrease cache pressure.  Promoting to a signed type
   helps avoid bugs in integer arithmetic.  */

#ifdef __INT_LEAST8_MAX__
typedef __INT_LEAST8_TYPE__ yytype_int8;
#elif defined YY_STDINT_H
typedef int_least8_t yytype_int8;
#else
typedef signed char yytype_int8;
#endif

#ifdef __INT_LEAST16_MAX__
typedef __INT_LEAST16_TYPE__ yytype_int16;
#elif defined YY_STDINT_H
typedef int_least16_t yytype_int16;
#else
typedef short yytype_int16;
#endif

/* Work around bug in HP-UX 11.23, which defines these macros
   incorrectly for preprocessor constants.  This workaround can likely
   be removed in 2023, as HPE has promised support for HP-UX 11.23
   (aka HP-UX 11i v2) only through the end of 2022; see Table 2 of
   <https://h20195.www2.hpe.com/V2/getpdf.aspx/4AA4-7673ENW.pdf>.  */
#ifdef __hpux
# undef UINT_LEAST8_MAX
# undef UINT_LEAST16_MAX
# define UINT_LEAST8_MAX 255
# define UINT_LEAST16_MAX 65535
#endif

#if defined __UINT_LEAST8_MAX__ && __UINT_LEAST8_MAX__ <= __INT_MAX__
typedef __UINT_LEAST8_TYPE__ yytype_uint8;
#elif (!defined __UINT_LEAST8_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST8_MAX <= INT_MAX)
typedef uint_least8_t yytype_uint8;
#elif !defined __UINT_LEAST8_MAX__ && UCHAR_MAX <= INT_MAX
typedef unsigned char yytype_uint8;
#else
typedef short yytype_uint8;
#endif

#if defined __UINT_LEAST16_MAX__ && __UINT_LEAST16_MAX__ <= __INT_MAX__
typedef __UINT_LEAST16_TYPE__ yytype_uint16;
#elif (!defined __UINT_LEAST16_MAX__ && defined YY_STDINT_H \
       && UINT_LEAST16_MAX <= INT_MAX)
typedef uint_least16_t yytype_uint16;
#elif !defined __UINT_LEAST16_MAX__ && USHRT_MAX <= INT_MAX
typedef unsigned short yytype_uint16;
#else
typedef int yytype_uint16;
#endif

#ifndef YYPTRDIFF_T
# if defined __PTRDIFF_TYPE__ && defined __PTRDIFF_MAX__
#  define YYPTRDIFF_T __PTRDIFF_TYPE__
#  define YYPTRDIFF_MAXIMUM __PTRDIFF_MAX__
# elif defined PTRDIFF_MAX
#  ifndef ptrdiff_t
#   include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  endif
#  define YYPTRDIFF_T ptrdiff_t
#  define YYPTRDIFF_MAXIMUM PTRDIFF_MAX
# else
#  define YYPTRDIFF_T long
#  define YYPTRDIFF_MAXIMUM LONG_MAX
# endif
#endif

#ifndef YYSIZE_T
# ifdef __SIZE_TYPE__
#  define YYSIZE_T __SIZE_TYPE__
# elif defined size_t
#  define YYSIZE_T size_t
# elif defined __STDC_VERSION__ && 199901 <= __STDC_VERSION__
#  include <stddef.h> /* INFRINGES ON USER NAME SPACE */
#  define YYSIZE_T size_t
# else
#  define YYSIZE_T unsigned
# endif
#endif

#define YYSIZE_MAXIMUM                                  \
  YY_CAST (YYPTRDIFF_T,                                 \
           (YYPTRDIFF_MAXIMUM < YY_CAST (YYSIZE_T, -1)  \
            ? YYPTRDIFF_MAXIMUM                         \
            : YY_CAST (YYSIZE_T, -1)))

#define YYSIZEOF(X) YY_CAST (YYPTRDIFF_T, sizeof (X))


/* Stored state numbers (used for stacks). */
typedef yytype_int16 yy_state_t;

/* State numbers in computations.  */
typedef int yy_state_fast_t;

#ifndef YY_
# if defined YYENABLE_NLS && YYENABLE_NLS
#  if ENABLE_NLS
#   include <libintl.h> /* INFRINGES ON USER NAME SPACE */
#   define YY_(Msgid) dgettext ("bison-runtime", Msgid)
#  endif
# endif
# ifndef YY_
#  define YY_(Msgid) Msgid
# endif
#endif


#ifndef YY_ATTRIBUTE_PURE
# if defined __GNUC__ && 2 < __GNUC__ + (96 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_PURE __attribute__ ((__pure__))
# else
#  define YY_ATTRIBUTE_PURE
# endif
#endif

#ifndef YY_ATTRIBUTE_UNUSED
# if defined __GNUC__ && 2 < __GNUC__ + (7 <= __GNUC_MINOR__)
#  define YY_ATTRIBUTE_UNUSED __attribute__ ((__unused__))
# else
#  define YY_ATTRIBUTE_UNUSED
# endif
#endif

/* Suppress unused-variable warnings by "using" E.  */
#if ! defined lint || defined __GNUC__
# define YY_USE(E) ((void) (E))
#else
# define YY_USE(E) /* empty */
#endif

/* Suppress an incorrect diagnostic about yylval being uninitialized.  */
#if defined __GNUC__ && ! defined __ICC && 406 <= __GNUC__ * 100 + __GNUC_MINOR__
# if __GNUC__ * 100 + __GNUC_MINOR__ < 407
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")
# else
#  define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN                           \
    _Pragma ("GCC diagnostic push")                                     \
    _Pragma ("GCC diagnostic ignored \"-Wuninitialized\"")              \
    _Pragma ("GCC diagnostic ignored \"-Wmaybe-uninitialized\"")
# endif
# define YY_IGNORE_MAYBE_UNINITIALIZED_END      \
    _Pragma ("GCC diagnostic pop")
#else
# define YY_INITIAL_VALUE(Value) Value
#endif
#ifndef YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
# define YY_IGNORE_MAYBE_UNINITIALIZED_END
#endif
#ifndef YY_INITIAL_VALUE
# define YY_INITIAL_VALUE(Value) /* Nothing. */
#endif

#if defined __cplusplus && defined __GNUC__ && ! defined __ICC && 6 <= __GNUC__
# define YY_IGNORE_USELESS_CAST_BEGIN                          \
    _Pragma ("GCC diagnostic push")                            \
    _Pragma ("GCC diagnostic ignored \"-Wuseless-cast\"")
# define YY_IGNORE_USELESS_CAST_END            \
    _Pragma ("GCC diagnostic pop")
#endif
#ifndef YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_BEGIN
# define YY_IGNORE_USELESS_CAST_END
#endif


#define YY_ASSERT(E) ((void) (0 && (E)))

#if !defined yyoverflow

/* The parser invokes alloca or malloc; define the necessary symbols.  */

# ifdef YYSTACK_USE_ALLOCA
#  if YYSTACK_USE_ALLOCA
#   ifdef __GNUC__
#    define YYSTACK_ALLOC __builtin_alloca
#   elif defined __BUILTIN_VA_ARG_INCR
#    include <alloca.h> /* INFRINGES ON USER NAME SPACE */
#   elif defined _AIX
#    define YYSTACK_ALLOC __alloca
#   elif defined _MSC_VER
#    include <malloc.h> /* INFRINGES ON USER NAME SPACE */
#    define alloca _alloca
#   else
#    define YYSTACK_ALLOC alloca
#    if ! defined _ALLOCA_H && ! defined EXIT_SUCCESS
#     include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
      /* Use EXIT_SUCCESS as a witness for stdlib.h.  */
#     ifndef EXIT_SUCCESS
#      define EXIT_SUCCESS 0
#     endif
#    endif
#   endif
#  endif
# endif

# ifdef YYSTACK_ALLOC
   /* Pacify GCC's 'empty if-body' warning.  */
#  define YYSTACK_FREE(Ptr) do { /* empty */; } while (0)
#  ifndef YYSTACK_ALLOC_MAXIMUM
    /* The OS might guarantee only one guard page at the bottom of the stack,
       and a page size can be as small as 4096 bytes.  So we cannot safely
       invoke alloca (N) if N exceeds 4096.  Use a slightly smaller number
       to allow for a few compiler-allocated temporary stack slots.  */
#   define YYSTACK_ALLOC_MAXIMUM 4032 /* reasonable circa 2006 */
#  endif
# else
#  define YYSTACK_ALLOC YYMALLOC
#  define YYSTACK_FREE YYFREE
#  ifndef YYSTACK_ALLOC_MAXIMUM
#   define YYSTACK_ALLOC_MAXIMUM YYSIZE_MAXIMUM
#  endif
#  if (defined __cplusplus && ! defined EXIT_SUCCESS \
       && ! ((defined YYMALLOC || defined malloc) \
             && (defined YYFREE || defined free)))
#   include <stdlib.h> /* INFRINGES ON USER NAME SPACE */
#   ifndef EXIT_SUCCESS
#    define EXIT_SUCCESS 0
#   endif
#  endif
#  ifndef YYMALLOC
#   define YYMALLOC malloc
#   if ! defined malloc && ! defined EXIT_SUCCESS
void *malloc (YYSIZE_T); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
#  ifndef YYFREE
#   define YYFREE free
#   if ! defined free && ! defined EXIT_SUCCESS
void free (void *); /* INFRINGES ON USER NAME SPACE */
#   endif
#  endif
# endif
#endif /* !defined yyoverflow */

#if (! defined yyoverflow \
     && (! defined __cplusplus \
         || (defined YYSTYPE_IS_TRIVIAL && YYSTYPE_IS_TRIVIAL)))

/* A type that is properly aligned for any stack member.  */
union yyalloc
{
  yy_state_t yyss_alloc;
  YYSTYPE yyvs_alloc;
};

/* The size of the maximum gap between one aligned stack and the next.  */
# define YYSTACK_GAP_MAXIMUM (YYSIZEOF (union yyalloc) - 1)

/* The size of an array large to enough to hold all stacks, each with
   N elements.  */
# define YYSTACK_BYTES(N) \
     ((N) * (YYSIZEOF (yy_state_t) + YYSIZEOF (YYSTYPE)) \
      + YYSTACK_GAP_MAXIMUM)

# define YYCOPY_NEEDED 1

/* Relocate STACK from its old location to the new one.  The
   local variables YYSIZE and YYSTACKSIZE give the old and new number of
   elements in the stack, and YYPTR gives the new location of the
   stack.  Advance YYPTR to a properly aligned location for the next
   stack.  */
# define YYSTACK_RELOCATE(Stack_alloc, Stack)                           \
    do                                                                  \
      {                                                                 \
        YYPTRDIFF_T yynewbytes;                                         \
        YYCOPY (&yyptr->Stack_alloc, Stack, yysize);                    \
        Stack = &yyptr->Stack_alloc;                                    \
        yynewbytes = yystacksize * YYSIZEOF (*Stack) + YYSTACK_GAP_MAXIMUM; \
        yyptr += yynewbytes / YYSIZEOF (*yyptr);                        \
      }                                                                 \
    while (0)

#endif

#if defined YYCOPY_NEEDED && YYCOPY_NEEDED
/* Copy COUNT objects from SRC to DST.  The source and destination do
   not overlap.  */
# ifndef YYCOPY
#  if defined __GNUC__ && 1 < __GNUC__
#   define YYCOPY(Dst, Src, Count) \
      __builtin_memcpy (Dst, Src, YY_CAST (YYSIZE_T, (Count)) * sizeof (*(Src)))
#  else
#   define YYCOPY(Dst, Src, Count)              \
      do                                        \
        {                                       \
          YYPTRDIFF_T yyi;                      \
          for (yyi = 0; yyi < (Count); yyi++)   \
            (Dst)[yyi] = (Src)[yyi];            \
        }                                       \
      while (0)
#  endif
# endif
#endif /* !YYCOPY_NEEDED */

/* YYFINAL -- State number of the termination state.  */
#define YYFINAL  25
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   663

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  67
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  78
/* YYNRULES -- Number of rules.  */
#define YYNRULES  181
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  315

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   321


/* YYTRANSLATE(TOKEN-NUM) -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex, with out-of-bounds checking.  */
#define YYTRANSLATE(YYX)                                \
  (0 <= (YYX) && (YYX) <= YYMAXUTOK                     \
   ? YY_CAST (yysymbol_kind_t, yytranslate[YYX])        \
   : YYSYMBOL_YYUNDEF)

/* YYTRANSLATE[TOKEN-NUM] -- Symbol number corresponding to TOKEN-NUM
   as returned by yylex.  */
static const yytype_int8 yytranslate[] =
{
       0,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     2,     2,     2,     2,
       2,     2,     2,     2,     2,     2,     1,     2,     3,     4,
       5,     6,     7,     8,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    19,    20,    21,    22,    23,    24,
      25,    26,    27,    28,    29,    30,    31,    32,    33,    34,
      35,    36,    37,    38,    39,    40,    41,    42,    43,    44,
      45,    46,    47,    48,    49,    50,    51,    52,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,    63,    64,
      65,    66
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   729,   729,   751,   779,   782,   789,   789,   855,   861,
     865,   914,   942,   946,   947,   954,   958,   962,   966,   970,
     973,   988,   994,  1041,  1086,  1095,  1102,  1119,  1123,  1129,
    1132,  1141,  1145,  1152,  1156,  1164,  1165,  1174,  1179,  1186,
    1191,  1199,  1208,  1223,  1239,  1243,  1250,  1272,  1290,  1295,
    1301,  1312,  1316,  1321,  1330,  1349,  1354,  1361,  1371,  1419,
    1430,  1441,  1452,  1465,  1475,  1482,  1483,  1560,  1592,  1653,
    1718,  1778,  1782,  1789,  1795,  1804,  1805,  1809,  1813,  1817,
    1835,  1852,  1853,  1854,  1855,  1856,  1857,  1861,  1862,  1892,
    1893,  1897,  1901,  1908,  1909,  1913,  1927,  1928,  1960,  1993,
    1994,  1998,  2002,  2006,  2013,  2014,  2018,  2025,  2026,  2033,
    2034,  2041,  2042,  2049,  2050,  2050,  2108,  2109,  2109,  2165,
    2171,  2172,  2221,  2225,  2226,  2238,  2246,  2246,  2301,  2301,
    2337,  2358,  2359,  2363,  2364,  2365,  2370,  2421,  2425,  2431,
    2448,  2451,  2460,  2463,  2466,  2469,  2472,  2475,  2478,  2486,
    2497,  2497,  2555,  2588,  2588,  2602,  2608,  2613,  2626,  2635,
    2639,  2645,  2652,  2652,  2669,  2669,  2752,  2752,  2780,  2780,
    2815,  2815,  2840,  2840,  2864,  2865,  2869,  2876,  2891,  2898,
    2905,  2918
};
#endif

/** Accessing symbol of state STATE.  */
#define YY_ACCESSING_SYMBOL(State) YY_CAST (yysymbol_kind_t, yystos[State])

#if YYDEBUG || 0
/* The user-facing name of the symbol whose (internal) number is
   YYSYMBOL.  No bounds checking.  */
static const char *yysymbol_name (yysymbol_kind_t yysymbol) YY_ATTRIBUTE_UNUSED;

/* YYTNAME[SYMBOL-NUM] -- String name of the symbol SYMBOL-NUM.
   First, the terminals, then, starting at YYNTOKENS, nonterminals.  */
static const char *const yytname[] =
{
  "\"end of file\"", "error", "\"invalid token\"", "INT", "FLOAT", "CHAR",
  "VOID", "IF", "ELSE", "FOR", "WHILE", "DO", "UNTIL", "BREAK", "CONTINUE",
  "SWITCH", "CASE", "DEFAULT", "SIZEOF", "STATIC", "GOTO", "TYPEDEF",
  "NULL_LITERAL", "INVALID", "INCREMENT", "DECREMENT", "ARROW",
  "LEFT_SHIFT", "RIGHT_SHIFT", "LOGICAL_AND", "LOGICAL_OR", "EQ", "NEQ",
  "LE", "GE", "PLUS", "MINUS", "STAR", "DIVIDE", "MOD", "ASSIGN", "LT",
  "GT", "LOGICAL_NOT", "BIT_AND", "BIT_OR", "BIT_XOR", "BIT_NOT", "DOT",
  "COLON", "SEMICOLON", "COMMA", "LBRACE", "RBRACE", "LPAREN", "RPAREN",
  "LBRACKET", "RBRACKET", "STRUCT", "RETURN", "UNION", "IDENTIFIER",
  "INT_LITERAL", "FLOAT_LITERAL", "STRING_LITERAL", "CHAR_LITERAL", "ENUM",
  "$accept", "start", "global_declaration", "function_definition", "$@1",
  "marker_fun_begin", "declaration", "return_types",
  "declaration_specifiers", "type_specifier", "enum_specifier",
  "enumerator", "enumerator_list", "cast_type_specifier",
  "typedef_declarator_list", "init_declarator_list", "init_declarator",
  "declarator", "direct_declarator", "fun_declarator",
  "fun_direct_declarator", "declaration_list", "initializer",
  "parameter_list", "parameter_declaration", "parameter_declarator",
  "parameter_direct_declarator", "primary_expression",
  "postfix_expression", "argument_expression_list", "unary_expression",
  "unary_operator", "cast_expression", "multiplicative_expression",
  "additive_expression", "shift_expression", "relational_expression",
  "equality_expression", "and_expression", "exclusive_or_expression",
  "inclusive_or_expression", "logical_and_expression", "$@2",
  "logical_or_expression", "$@3", "conditional_expression",
  "assignment_expression", "assignment_operator", "expression",
  "constant_expression", "struct_or_union_specifier", "$@4", "$@5",
  "struct_or_union", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "pointer", "statement",
  "labeled_statement", "$@6", "compound_statement", "$@7", "marker",
  "statement_list", "expression_statement", "selection_statement", "$@8",
  "$@9", "if_expression", "$@10", "iteration_statement", "$@11", "$@12",
  "$@13", "begin_marker", "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-245)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-159)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
       9,  -245,  -245,  -245,  -245,   348,   136,  -245,  -245,  -245,
     -25,     5,  -245,  -245,  -245,   -12,  -245,  -245,  -245,  -245,
      -6,  -245,    -3,   -17,    12,  -245,  -245,    20,  -245,   113,
      83,  -245,    21,    59,  -245,  -245,   102,  -245,   151,   122,
      96,  -245,   134,   169,  -245,    34,   -17,  -245,   132,    52,
    -245,    -3,   536,    65,  -245,    59,  -245,   348,  -245,  -245,
      -3,   536,   -17,  -245,   123,  -245,    -2,    33,  -245,   155,
     161,  -245,   567,  -245,   598,   598,  -245,  -245,  -245,  -245,
    -245,  -245,   337,  -245,  -245,  -245,  -245,  -245,  -245,  -245,
      26,   181,   536,  -245,   147,   117,   143,    79,   168,   198,
     199,   203,   224,   227,  -245,  -245,   201,   202,   208,    -3,
     153,  -245,   348,  -245,  -245,  -245,  -245,  -245,  -245,  -245,
    -245,  -245,   200,   136,  -245,  -245,  -245,   337,  -245,   536,
    -245,  -245,    31,   228,   209,  -245,    73,  -245,  -245,   206,
     207,   406,   536,  -245,   536,  -245,   536,   536,   536,   536,
     536,   536,   536,   536,   536,   536,   536,   536,   536,   536,
     536,   536,  -245,  -245,  -245,  -245,  -245,  -245,  -245,   154,
    -245,  -245,  -245,   310,  -245,  -245,   215,  -245,   536,   536,
    -245,  -245,  -245,  -245,    74,  -245,    32,  -245,  -245,  -245,
    -245,   147,   147,   117,   117,   143,   143,   143,   143,    79,
      79,   168,   198,   199,   536,   536,     9,  -245,    -3,  -245,
    -245,  -245,  -245,   536,  -245,  -245,   203,   224,  -245,    -8,
     219,  -245,  -245,   225,   220,   222,  -245,  -245,  -245,   237,
     238,   235,   536,   241,   230,  -245,   440,    82,  -245,   157,
    -245,  -245,  -245,   240,  -245,  -245,   296,  -245,  -245,  -245,
     536,   471,   252,   285,   254,  -245,  -245,   536,  -245,   285,
     261,  -245,   166,  -245,  -245,  -245,   285,  -245,    93,  -245,
     536,   263,  -245,   536,   266,   269,  -245,  -245,  -245,   285,
    -245,   285,  -245,   471,   109,   309,   266,   268,  -245,  -245,
    -245,   285,   502,  -245,   270,   271,   285,   285,  -245,   285,
     110,   285,  -245,   285,  -245,  -245,  -245,   285,  -245,   536,
    -245,  -245,   111,   275,  -245
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    17,    18,    16,    15,     0,     0,   131,   132,    20,
       0,     0,     2,     4,     5,     0,    12,    13,    21,    19,
       0,    14,     0,     0,    24,     1,     3,   140,     9,    39,
       0,    33,    35,    38,     8,    45,     0,   128,   130,    39,
       0,    31,     0,    25,    27,     0,     0,   141,     0,     0,
      10,     0,     0,     0,     6,    37,    44,   135,   126,    11,
       0,     0,     0,    22,     0,    47,     0,     0,    52,     0,
       0,    34,     0,    63,     0,     0,    83,    84,    82,    86,
      81,    85,     0,    58,    59,    60,    62,    61,    36,    65,
      75,    87,     0,    89,    93,    96,    99,   104,   107,   109,
     111,   113,   116,   119,   120,    51,     0,     0,     0,     0,
       0,   133,   135,    32,    87,   125,    26,    28,    23,    57,
      54,    56,     0,     0,    46,    41,    42,     0,    79,     0,
      76,    77,    58,    29,     0,   123,     0,    71,    72,     0,
       0,     0,     0,   122,     0,    78,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,   114,   117,    40,    43,   153,     7,   139,     0,
     137,   129,   134,     0,    55,    53,     0,    30,     0,     0,
      64,    70,    69,    67,     0,    73,     0,   121,    90,    91,
      92,    94,    95,    97,    98,   102,   103,   100,   101,   105,
     106,   108,   110,   112,     0,     0,    50,   136,     0,   127,
      80,    88,   124,     0,    68,    66,   115,   118,    48,     0,
       0,   138,    74,     0,     0,     0,   176,   176,   176,     0,
       0,     0,     0,     0,     0,   159,     0,    58,    49,     0,
     156,   142,   143,   155,   144,   145,   161,   146,   147,   148,
       0,     0,     0,     0,     0,   179,   178,     0,   150,     0,
       0,   180,     0,   155,   160,   154,     0,   162,     0,   176,
       0,    58,   172,     0,   164,     0,   152,   177,   181,     0,
     157,     0,   166,     0,     0,     0,   170,     0,   155,   149,
     163,     0,     0,   168,     0,     0,     0,     0,   167,     0,
       0,     0,   155,     0,   165,   151,   174,     0,   169,     0,
     171,   175,     0,     0,   173
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -245,  -245,   316,  -245,  -245,  -245,  -166,    -5,  -245,    -1,
    -245,   272,   284,  -245,  -245,  -245,   280,   -19,    80,  -245,
     297,  -245,  -245,  -245,   213,  -245,   216,  -245,  -245,  -245,
     -55,  -245,   -70,    97,    98,    27,    94,   186,   196,   197,
     156,   152,  -245,  -245,  -245,   -59,   -34,  -245,   -82,   133,
    -245,  -245,  -245,  -245,   255,   -94,  -245,   158,     6,   126,
    -245,  -245,   256,  -245,  -240,  -245,  -244,  -245,  -245,  -245,
    -245,  -245,  -245,  -245,  -245,  -245,  -196,  -245
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,    11,    12,    13,   108,    54,    14,    15,    16,    17,
      18,    44,    45,   134,    40,    30,    31,    32,    33,    34,
      35,   220,    88,    67,    68,   120,   121,    89,    90,   184,
      91,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   102,   204,   103,   205,   104,   135,   144,   239,   116,
      19,   112,    57,    20,   110,   111,   169,   170,    42,   240,
     241,   275,   242,   206,   266,   243,   244,   245,   281,   287,
     246,   291,   247,   301,   295,   285,   252,   248
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     136,    22,   115,    41,    21,    25,   114,   269,     1,     2,
       3,     4,     1,     2,     3,     4,   172,   128,   105,   130,
     131,    36,   145,   279,     5,    27,     6,    23,     5,    27,
       6,   253,   254,    47,    27,    27,    24,   114,    28,   292,
     218,   113,    28,    66,    43,   136,    37,   136,   297,    29,
     137,   138,   139,    39,   238,    38,   109,    27,    39,   119,
     186,    52,   309,     7,    46,     8,     9,     7,   -20,     8,
       9,    10,   122,   283,   140,    10,   188,   189,   190,   172,
     141,   133,   142,   179,   123,    62,   -20,    63,   124,   215,
     168,   114,   114,   114,   114,   114,   114,   114,   114,   114,
     114,   114,   114,   114,   114,   114,   114,   185,   211,   109,
     187,   109,   153,   154,    69,    53,    55,    70,    66,   -20,
     155,   156,    55,   114,   179,   213,   176,   106,   180,   214,
     107,   263,   -20,    50,    51,     1,     2,     3,     4,     1,
       2,     3,     4,   -20,   179,   212,    59,    60,   282,   114,
     114,     5,   149,   150,   262,     5,     1,     2,     3,     4,
     179,   179,   179,    29,   293,   307,   313,    48,   268,    49,
     151,   152,   109,   115,    62,   274,   118,   114,    49,   222,
     195,   196,   197,   198,   146,   147,   148,    65,   284,   168,
       7,   286,     8,     9,     7,    39,     8,     9,    10,   157,
     158,   219,    10,    58,   207,   208,   171,   264,   179,    61,
     300,     7,   125,     8,     9,   219,   278,   179,   126,    10,
     223,   143,     1,     2,     3,     4,   224,   312,   225,   226,
     227,   228,   229,   230,   231,   232,   233,    72,     5,   234,
       6,    73,   159,    74,    75,   160,   191,   192,   161,   193,
     194,   199,   200,   162,    76,    77,    78,   163,   164,   165,
     166,   119,    79,    80,   178,   177,    81,   181,   182,   235,
     210,   166,  -158,    82,   250,   249,   251,     7,   236,     8,
     237,    84,    85,    86,    87,    10,   223,   255,   256,   257,
     259,   260,   224,   265,   225,   226,   227,   228,   229,   230,
     231,   232,   233,    72,   267,   234,   270,    73,   273,    74,
      75,   277,   263,     1,     2,     3,     4,   179,   288,   294,
      76,    77,    78,   296,   302,   314,   303,    26,    79,    80,
      64,    71,    81,    56,   117,   235,   175,   166,   174,    82,
       1,     2,     3,     4,   236,   201,   271,    84,    85,    86,
      87,     1,     2,     3,     4,    72,   202,   217,   203,    73,
     216,    74,    75,   209,   167,   258,   221,   173,     7,     0,
       8,     9,    76,    77,    78,     0,    10,     0,     0,   272,
      79,    80,     0,     0,    81,   276,     0,     0,     0,     0,
       0,    82,   280,     0,     0,     7,     0,     8,   132,    84,
      85,    86,    87,    10,     0,   289,     7,   290,     8,     9,
       0,     0,     0,     0,    10,     0,     0,   298,     0,     0,
       0,     0,   304,   305,    72,   306,     0,   308,    73,   310,
      74,    75,     0,   311,     0,     0,     0,     0,     0,     0,
       0,    76,    77,    78,     0,     0,     0,     0,     0,    79,
      80,     0,     0,    81,     0,     0,     0,     0,    72,     0,
      82,   183,    73,     0,    74,    75,     0,    83,    84,    85,
      86,    87,     0,     0,     0,    76,    77,    78,     0,     0,
       0,     0,     0,    79,    80,     0,     0,    81,     0,    72,
     261,     0,     0,    73,    82,    74,    75,     0,     0,     0,
       0,    83,    84,    85,    86,    87,    76,    77,    78,     0,
       0,     0,     0,     0,    79,    80,     0,     0,    81,     0,
      72,   235,     0,     0,    73,    82,    74,    75,     0,     0,
       0,     0,    83,    84,    85,    86,    87,    76,    77,    78,
       0,     0,     0,     0,     0,    79,    80,     0,     0,    81,
       0,     0,     0,     0,    72,     0,    82,   299,    73,     0,
      74,    75,     0,    83,    84,    85,    86,    87,     0,     0,
       0,    76,    77,    78,     0,     0,     0,     0,     0,    79,
      80,     0,     0,    81,     0,    72,     0,     0,     0,    73,
      82,    74,    75,     0,     0,     0,     0,    83,    84,    85,
      86,    87,    76,    77,    78,     0,     0,     0,     0,     0,
      79,    80,     0,     0,    81,     0,    72,     0,     0,     0,
      73,   127,    74,    75,     0,     0,     0,     0,    83,    84,
      85,    86,    87,    76,    77,    78,     0,     0,     0,     0,
       0,    79,    80,     0,     0,    81,     0,     0,     0,     0,
       0,     0,   129,     0,     0,     0,     0,     0,     0,    83,
      84,    85,    86,    87
};

static const yytype_int16 yycheck[] =
{
      82,     6,    61,    22,     5,     0,    61,   251,     3,     4,
       5,     6,     3,     4,     5,     6,   110,    72,    52,    74,
      75,    15,    92,   263,    19,    37,    21,    52,    19,    37,
      21,   227,   228,    27,    37,    37,    61,    92,    50,   283,
     206,    60,    50,    48,    61,   127,    52,   129,   288,    61,
      24,    25,    26,    61,   220,    61,    57,    37,    61,    61,
     142,    40,   302,    58,    52,    60,    61,    58,    37,    60,
      61,    66,    66,   269,    48,    66,   146,   147,   148,   173,
      54,    82,    56,    51,    51,    51,    55,    53,    55,    57,
     109,   146,   147,   148,   149,   150,   151,   152,   153,   154,
     155,   156,   157,   158,   159,   160,   161,   141,   178,   110,
     144,   112,    33,    34,    62,    56,    36,    65,   123,    37,
      41,    42,    42,   178,    51,    51,   127,    62,    55,    55,
      65,    49,    50,    50,    51,     3,     4,     5,     6,     3,
       4,     5,     6,    61,    51,   179,    50,    51,    55,   204,
     205,    19,    35,    36,   236,    19,     3,     4,     5,     6,
      51,    51,    51,    61,    55,    55,    55,    54,   250,    56,
      27,    28,   173,   232,    51,   257,    53,   232,    56,   213,
     153,   154,   155,   156,    37,    38,    39,    55,   270,   208,
      58,   273,    60,    61,    58,    61,    60,    61,    66,    31,
      32,   206,    66,    52,    50,    51,    53,    50,    51,    40,
     292,    58,    57,    60,    61,   220,    50,    51,    57,    66,
       1,    40,     3,     4,     5,     6,     7,   309,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    19,    20,
      21,    22,    44,    24,    25,    46,   149,   150,    45,   151,
     152,   157,   158,    29,    35,    36,    37,    30,    57,    57,
      52,    61,    43,    44,    55,    37,    47,    61,    61,    50,
      55,    52,    53,    54,    54,    50,    54,    58,    59,    60,
      61,    62,    63,    64,    65,    66,     1,    50,    50,    54,
      49,    61,     7,    53,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,     8,    20,    54,    22,    54,    24,
      25,    50,    49,     3,     4,     5,     6,    51,    49,    10,
      35,    36,    37,    55,    54,    50,    55,    11,    43,    44,
      46,    51,    47,    36,    62,    50,   123,    52,   122,    54,
       3,     4,     5,     6,    59,   159,    61,    62,    63,    64,
      65,     3,     4,     5,     6,    18,   160,   205,   161,    22,
     204,    24,    25,    53,   108,   232,   208,   112,    58,    -1,
      60,    61,    35,    36,    37,    -1,    66,    -1,    -1,   253,
      43,    44,    -1,    -1,    47,   259,    -1,    -1,    -1,    -1,
      -1,    54,   266,    -1,    -1,    58,    -1,    60,    61,    62,
      63,    64,    65,    66,    -1,   279,    58,   281,    60,    61,
      -1,    -1,    -1,    -1,    66,    -1,    -1,   291,    -1,    -1,
      -1,    -1,   296,   297,    18,   299,    -1,   301,    22,   303,
      24,    25,    -1,   307,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    35,    36,    37,    -1,    -1,    -1,    -1,    -1,    43,
      44,    -1,    -1,    47,    -1,    -1,    -1,    -1,    18,    -1,
      54,    55,    22,    -1,    24,    25,    -1,    61,    62,    63,
      64,    65,    -1,    -1,    -1,    35,    36,    37,    -1,    -1,
      -1,    -1,    -1,    43,    44,    -1,    -1,    47,    -1,    18,
      50,    -1,    -1,    22,    54,    24,    25,    -1,    -1,    -1,
      -1,    61,    62,    63,    64,    65,    35,    36,    37,    -1,
      -1,    -1,    -1,    -1,    43,    44,    -1,    -1,    47,    -1,
      18,    50,    -1,    -1,    22,    54,    24,    25,    -1,    -1,
      -1,    -1,    61,    62,    63,    64,    65,    35,    36,    37,
      -1,    -1,    -1,    -1,    -1,    43,    44,    -1,    -1,    47,
      -1,    -1,    -1,    -1,    18,    -1,    54,    55,    22,    -1,
      24,    25,    -1,    61,    62,    63,    64,    65,    -1,    -1,
      -1,    35,    36,    37,    -1,    -1,    -1,    -1,    -1,    43,
      44,    -1,    -1,    47,    -1,    18,    -1,    -1,    -1,    22,
      54,    24,    25,    -1,    -1,    -1,    -1,    61,    62,    63,
      64,    65,    35,    36,    37,    -1,    -1,    -1,    -1,    -1,
      43,    44,    -1,    -1,    47,    -1,    18,    -1,    -1,    -1,
      22,    54,    24,    25,    -1,    -1,    -1,    -1,    61,    62,
      63,    64,    65,    35,    36,    37,    -1,    -1,    -1,    -1,
      -1,    43,    44,    -1,    -1,    47,    -1,    -1,    -1,    -1,
      -1,    -1,    54,    -1,    -1,    -1,    -1,    -1,    -1,    61,
      62,    63,    64,    65
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    21,    58,    60,    61,
      66,    68,    69,    70,    73,    74,    75,    76,    77,   117,
     120,    76,    74,    52,    61,     0,    69,    37,    50,    61,
      82,    83,    84,    85,    86,    87,   125,    52,    61,    61,
      81,    84,   125,    61,    78,    79,    52,   125,    54,    56,
      50,    51,    40,    56,    72,    85,    87,   119,    52,    50,
      51,    40,    51,    53,    79,    55,    74,    90,    91,    62,
      65,    83,    18,    22,    24,    25,    35,    36,    37,    43,
      44,    47,    54,    61,    62,    63,    64,    65,    89,    94,
      95,    97,    98,    99,   100,   101,   102,   103,   104,   105,
     106,   107,   108,   110,   112,   113,    62,    65,    71,    76,
     121,   122,   118,    84,    97,   112,   116,    78,    53,    61,
      92,    93,   125,    51,    55,    57,    57,    54,    97,    54,
      97,    97,    61,    76,    80,   113,   115,    24,    25,    26,
      48,    54,    56,    40,   114,    99,    37,    38,    39,    35,
      36,    27,    28,    33,    34,    41,    42,    31,    32,    44,
      46,    45,    29,    30,    57,    57,    52,   129,    84,   123,
     124,    53,   122,   121,    93,    91,    76,    37,    55,    51,
      55,    61,    61,    55,    96,   113,   115,   113,    99,    99,
      99,   100,   100,   101,   101,   102,   102,   102,   102,   103,
     103,   104,   105,   106,   109,   111,   130,    50,    51,    53,
      55,    99,   113,    51,    55,    57,   107,   108,    73,    74,
      88,   124,   113,     1,     7,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    20,    50,    59,    61,    73,   115,
     126,   127,   129,   132,   133,   134,   137,   139,   144,    50,
      54,    54,   143,   143,   143,    50,    50,    54,   116,    49,
      61,    50,   115,    49,    50,    53,   131,     8,   115,   133,
      54,    61,   126,    54,   115,   128,   126,    50,    50,   131,
     126,   135,    55,   143,   115,   142,   115,   136,    49,   126,
     126,   138,   133,    55,    10,   141,    55,   131,   126,    55,
     115,   140,    54,    55,   126,   126,   126,    55,   126,   131,
     126,   126,   115,    55,    50
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    67,    68,    68,    69,    69,    71,    70,    72,    73,
      73,    73,    74,    75,    75,    76,    76,    76,    76,    76,
      76,    76,    77,    77,    77,    78,    78,    79,    79,    80,
      80,    81,    81,    82,    82,    83,    83,    84,    84,    85,
      85,    85,    85,    85,    86,    86,    87,    87,    88,    88,
      88,    89,    90,    90,    91,    92,    92,    93,    94,    94,
      94,    94,    94,    94,    94,    95,    95,    95,    95,    95,
      95,    95,    95,    96,    96,    97,    97,    97,    97,    97,
      97,    98,    98,    98,    98,    98,    98,    99,    99,   100,
     100,   100,   100,   101,   101,   101,   102,   102,   102,   103,
     103,   103,   103,   103,   104,   104,   104,   105,   105,   106,
     106,   107,   107,   108,   109,   108,   110,   111,   110,   112,
     113,   113,   114,   115,   115,   116,   118,   117,   119,   117,
     117,   120,   120,   121,   121,   121,   122,   123,   123,   124,
     125,   125,   126,   126,   126,   126,   126,   126,   126,   127,
     128,   127,   127,   130,   129,   131,   132,   132,   132,   133,
     133,   134,   135,   134,   136,   134,   138,   137,   140,   139,
     141,   139,   142,   139,   139,   139,   143,   144,   144,   144,
     144,   144
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     0,     5,     0,     2,
       3,     4,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     4,     5,     2,     1,     3,     1,     3,     1,
       2,     1,     3,     1,     3,     1,     3,     2,     1,     1,
       4,     4,     4,     4,     2,     1,     4,     3,     1,     2,
       0,     1,     1,     3,     2,     2,     1,     1,     1,     1,
       1,     1,     1,     1,     3,     1,     4,     3,     4,     3,
       3,     2,     2,     1,     3,     1,     2,     2,     2,     2,
       4,     1,     1,     1,     1,     1,     1,     1,     4,     1,
       3,     3,     3,     1,     3,     3,     1,     3,     3,     1,
       3,     3,     3,     3,     1,     3,     3,     1,     3,     1,
       3,     1,     3,     1,     0,     4,     1,     0,     4,     1,
       1,     3,     1,     1,     3,     1,     0,     6,     0,     5,
       2,     1,     1,     1,     2,     0,     3,     1,     3,     1,
       1,     2,     1,     1,     1,     1,     1,     1,     2,     4,
       0,     6,     3,     0,     5,     0,     1,     3,     0,     1,
       2,     1,     0,     4,     0,     6,     0,     6,     0,     7,
       0,     7,     0,    10,     7,     8,     0,     3,     2,     2,
       2,     3
};


enum { YYENOMEM = -2 };

#define yyerrok         (yyerrstatus = 0)
#define yyclearin       (yychar = YYEMPTY)

#define YYACCEPT        goto yyacceptlab
#define YYABORT         goto yyabortlab
#define YYERROR         goto yyerrorlab
#define YYNOMEM         goto yyexhaustedlab


#define YYRECOVERING()  (!!yyerrstatus)

#define YYBACKUP(Token, Value)                                    \
  do                                                              \
    if (yychar == YYEMPTY)                                        \
      {                                                           \
        yychar = (Token);                                         \
        yylval = (Value);                                         \
        YYPOPSTACK (yylen);                                       \
        yystate = *yyssp;                                         \
        goto yybackup;                                            \
      }                                                           \
    else                                                          \
      {                                                           \
        yyerror (YY_("syntax error: cannot back up")); \
        YYERROR;                                                  \
      }                                                           \
  while (0)

/* Backward compatibility with an undocumented macro.
   Use YYerror or YYUNDEF. */
#define YYERRCODE YYUNDEF


/* Enable debugging if requested.  */
#if YYDEBUG

# ifndef YYFPRINTF
#  include <stdio.h> /* INFRINGES ON USER NAME SPACE */
#  define YYFPRINTF fprintf
# endif

# define YYDPRINTF(Args)                        \
do {                                            \
  if (yydebug)                                  \
    YYFPRINTF Args;                             \
} while (0)




# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)                    \
do {                                                                      \
  if (yydebug)                                                            \
    {                                                                     \
      YYFPRINTF (stderr, "%s ", Title);                                   \
      yy_symbol_print (stderr,                                            \
                  Kind, Value); \
      YYFPRINTF (stderr, "\n");                                           \
    }                                                                     \
} while (0)


/*-----------------------------------.
| Print this symbol's value on YYO.  |
`-----------------------------------*/

static void
yy_symbol_value_print (FILE *yyo,
                       yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  FILE *yyoutput = yyo;
  YY_USE (yyoutput);
  if (!yyvaluep)
    return;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/*---------------------------.
| Print this symbol on YYO.  |
`---------------------------*/

static void
yy_symbol_print (FILE *yyo,
                 yysymbol_kind_t yykind, YYSTYPE const * const yyvaluep)
{
  YYFPRINTF (yyo, "%s %s (",
             yykind < YYNTOKENS ? "token" : "nterm", yysymbol_name (yykind));

  yy_symbol_value_print (yyo, yykind, yyvaluep);
  YYFPRINTF (yyo, ")");
}

/*------------------------------------------------------------------.
| yy_stack_print -- Print the state stack from its BOTTOM up to its |
| TOP (included).                                                   |
`------------------------------------------------------------------*/

static void
yy_stack_print (yy_state_t *yybottom, yy_state_t *yytop)
{
  YYFPRINTF (stderr, "Stack now");
  for (; yybottom <= yytop; yybottom++)
    {
      int yybot = *yybottom;
      YYFPRINTF (stderr, " %d", yybot);
    }
  YYFPRINTF (stderr, "\n");
}

# define YY_STACK_PRINT(Bottom, Top)                            \
do {                                                            \
  if (yydebug)                                                  \
    yy_stack_print ((Bottom), (Top));                           \
} while (0)


/*------------------------------------------------.
| Report that the YYRULE is going to be reduced.  |
`------------------------------------------------*/

static void
yy_reduce_print (yy_state_t *yyssp, YYSTYPE *yyvsp,
                 int yyrule)
{
  int yylno = yyrline[yyrule];
  int yynrhs = yyr2[yyrule];
  int yyi;
  YYFPRINTF (stderr, "Reducing stack by rule %d (line %d):\n",
             yyrule - 1, yylno);
  /* The symbols being reduced.  */
  for (yyi = 0; yyi < yynrhs; yyi++)
    {
      YYFPRINTF (stderr, "   $%d = ", yyi + 1);
      yy_symbol_print (stderr,
                       YY_ACCESSING_SYMBOL (+yyssp[yyi + 1 - yynrhs]),
                       &yyvsp[(yyi + 1) - (yynrhs)]);
      YYFPRINTF (stderr, "\n");
    }
}

# define YY_REDUCE_PRINT(Rule)          \
do {                                    \
  if (yydebug)                          \
    yy_reduce_print (yyssp, yyvsp, Rule); \
} while (0)

/* Nonzero means print parse trace.  It is left uninitialized so that
   multiple parsers can coexist.  */
int yydebug;
#else /* !YYDEBUG */
# define YYDPRINTF(Args) ((void) 0)
# define YY_SYMBOL_PRINT(Title, Kind, Value, Location)
# define YY_STACK_PRINT(Bottom, Top)
# define YY_REDUCE_PRINT(Rule)
#endif /* !YYDEBUG */


/* YYINITDEPTH -- initial size of the parser's stacks.  */
#ifndef YYINITDEPTH
# define YYINITDEPTH 200
#endif

/* YYMAXDEPTH -- maximum size the stacks can grow to (effective only
   if the built-in stack extension method is used).

   Do not make this value too large; the results are undefined if
   YYSTACK_ALLOC_MAXIMUM < YYSTACK_BYTES (YYMAXDEPTH)
   evaluated with infinite-precision integer arithmetic.  */

#ifndef YYMAXDEPTH
# define YYMAXDEPTH 10000
#endif






/*-----------------------------------------------.
| Release the memory associated to this symbol.  |
`-----------------------------------------------*/

static void
yydestruct (const char *yymsg,
            yysymbol_kind_t yykind, YYSTYPE *yyvaluep)
{
  YY_USE (yyvaluep);
  if (!yymsg)
    yymsg = "Deleting";
  YY_SYMBOL_PRINT (yymsg, yykind, yyvaluep, yylocationp);

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  YY_USE (yykind);
  YY_IGNORE_MAYBE_UNINITIALIZED_END
}


/* Lookahead token kind.  */
int yychar;

/* The semantic value of the lookahead symbol.  */
YYSTYPE yylval;
/* Number of syntax errors so far.  */
int yynerrs;




/*----------.
| yyparse.  |
`----------*/

int
yyparse (void)
{
    yy_state_fast_t yystate = 0;
    /* Number of tokens to shift before error messages enabled.  */
    int yyerrstatus = 0;

    /* Refer to the stacks through separate pointers, to allow yyoverflow
       to reallocate them elsewhere.  */

    /* Their size.  */
    YYPTRDIFF_T yystacksize = YYINITDEPTH;

    /* The state stack: array, bottom, top.  */
    yy_state_t yyssa[YYINITDEPTH];
    yy_state_t *yyss = yyssa;
    yy_state_t *yyssp = yyss;

    /* The semantic value stack: array, bottom, top.  */
    YYSTYPE yyvsa[YYINITDEPTH];
    YYSTYPE *yyvs = yyvsa;
    YYSTYPE *yyvsp = yyvs;

  int yyn;
  /* The return value of yyparse.  */
  int yyresult;
  /* Lookahead symbol kind.  */
  yysymbol_kind_t yytoken = YYSYMBOL_YYEMPTY;
  /* The variables used to return semantic value and location from the
     action routines.  */
  YYSTYPE yyval;



#define YYPOPSTACK(N)   (yyvsp -= (N), yyssp -= (N))

  /* The number of symbols on the RHS of the reduced rule.
     Keep to zero when no symbol should be popped.  */
  int yylen = 0;

  YYDPRINTF ((stderr, "Starting parse\n"));

  yychar = YYEMPTY; /* Cause a token to be read.  */

  goto yysetstate;


/*------------------------------------------------------------.
| yynewstate -- push a new state, which is found in yystate.  |
`------------------------------------------------------------*/
yynewstate:
  /* In all cases, when you get here, the value and location stacks
     have just been pushed.  So pushing a state here evens the stacks.  */
  yyssp++;


/*--------------------------------------------------------------------.
| yysetstate -- set current state (the top of the stack) to yystate.  |
`--------------------------------------------------------------------*/
yysetstate:
  YYDPRINTF ((stderr, "Entering state %d\n", yystate));
  YY_ASSERT (0 <= yystate && yystate < YYNSTATES);
  YY_IGNORE_USELESS_CAST_BEGIN
  *yyssp = YY_CAST (yy_state_t, yystate);
  YY_IGNORE_USELESS_CAST_END
  YY_STACK_PRINT (yyss, yyssp);

  if (yyss + yystacksize - 1 <= yyssp)
#if !defined yyoverflow && !defined YYSTACK_RELOCATE
    YYNOMEM;
#else
    {
      /* Get the current used size of the three stacks, in elements.  */
      YYPTRDIFF_T yysize = yyssp - yyss + 1;

# if defined yyoverflow
      {
        /* Give user a chance to reallocate the stack.  Use copies of
           these so that the &'s don't force the real ones into
           memory.  */
        yy_state_t *yyss1 = yyss;
        YYSTYPE *yyvs1 = yyvs;

        /* Each stack pointer address is followed by the size of the
           data in use in that stack, in bytes.  This used to be a
           conditional around just the two extra args, but that might
           be undefined if yyoverflow is a macro.  */
        yyoverflow (YY_("memory exhausted"),
                    &yyss1, yysize * YYSIZEOF (*yyssp),
                    &yyvs1, yysize * YYSIZEOF (*yyvsp),
                    &yystacksize);
        yyss = yyss1;
        yyvs = yyvs1;
      }
# else /* defined YYSTACK_RELOCATE */
      /* Extend the stack our own way.  */
      if (YYMAXDEPTH <= yystacksize)
        YYNOMEM;
      yystacksize *= 2;
      if (YYMAXDEPTH < yystacksize)
        yystacksize = YYMAXDEPTH;

      {
        yy_state_t *yyss1 = yyss;
        union yyalloc *yyptr =
          YY_CAST (union yyalloc *,
                   YYSTACK_ALLOC (YY_CAST (YYSIZE_T, YYSTACK_BYTES (yystacksize))));
        if (! yyptr)
          YYNOMEM;
        YYSTACK_RELOCATE (yyss_alloc, yyss);
        YYSTACK_RELOCATE (yyvs_alloc, yyvs);
#  undef YYSTACK_RELOCATE
        if (yyss1 != yyssa)
          YYSTACK_FREE (yyss1);
      }
# endif

      yyssp = yyss + yysize - 1;
      yyvsp = yyvs + yysize - 1;

      YY_IGNORE_USELESS_CAST_BEGIN
      YYDPRINTF ((stderr, "Stack size increased to %ld\n",
                  YY_CAST (long, yystacksize)));
      YY_IGNORE_USELESS_CAST_END

      if (yyss + yystacksize - 1 <= yyssp)
        YYABORT;
    }
#endif /* !defined yyoverflow && !defined YYSTACK_RELOCATE */


  if (yystate == YYFINAL)
    YYACCEPT;

  goto yybackup;


/*-----------.
| yybackup.  |
`-----------*/
yybackup:
  /* Do appropriate processing given the current state.  Read a
     lookahead token if we need one and don't already have one.  */

  /* First try to decide what to do without reference to lookahead token.  */
  yyn = yypact[yystate];
  if (yypact_value_is_default (yyn))
    goto yydefault;

  /* Not known => get a lookahead token if don't already have one.  */

  /* YYCHAR is either empty, or end-of-input, or a valid lookahead.  */
  if (yychar == YYEMPTY)
    {
      YYDPRINTF ((stderr, "Reading a token\n"));
      yychar = yylex ();
    }

  if (yychar <= YYEOF)
    {
      yychar = YYEOF;
      yytoken = YYSYMBOL_YYEOF;
      YYDPRINTF ((stderr, "Now at end of input.\n"));
    }
  else if (yychar == YYerror)
    {
      /* The scanner already issued an error message, process directly
         to error recovery.  But do not keep the error token as
         lookahead, it is too special and may lead us to an endless
         loop in error recovery. */
      yychar = YYUNDEF;
      yytoken = YYSYMBOL_YYerror;
      goto yyerrlab1;
    }
  else
    {
      yytoken = YYTRANSLATE (yychar);
      YY_SYMBOL_PRINT ("Next token is", yytoken, &yylval, &yylloc);
    }

  /* If the proper action on seeing token YYTOKEN is to reduce or to
     detect an error, take that action.  */
  yyn += yytoken;
  if (yyn < 0 || YYLAST < yyn || yycheck[yyn] != yytoken)
    goto yydefault;
  yyn = yytable[yyn];
  if (yyn <= 0)
    {
      if (yytable_value_is_error (yyn))
        goto yyerrlab;
      yyn = -yyn;
      goto yyreduce;
    }

  /* Count tokens shifted since error; after three, turn off error
     status.  */
  if (yyerrstatus)
    yyerrstatus--;

  /* Shift the lookahead token.  */
  YY_SYMBOL_PRINT ("Shifting", yytoken, &yylval, &yylloc);
  yystate = yyn;
  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END

  /* Discard the shifted token.  */
  yychar = YYEMPTY;
  goto yynewstate;


/*-----------------------------------------------------------.
| yydefault -- do the default action for the current state.  |
`-----------------------------------------------------------*/
yydefault:
  yyn = yydefact[yystate];
  if (yyn == 0)
    goto yyerrlab;
  goto yyreduce;


/*-----------------------------.
| yyreduce -- do a reduction.  |
`-----------------------------*/
yyreduce:
  /* yyn is the number of a rule to reduce with.  */
  yylen = yyr2[yyn];

  /* If YYLEN is nonzero, implement the default value of the action:
     '$$ = $1'.

     Otherwise, the following line sets YYVAL to garbage.
     This behavior is undocumented and Bison
     users should not rely upon it.  Assigning to YYVAL
     unconditionally makes the parser a bit smaller, and it avoids a
     GCC warning that YYVAL may be used uninitialized.  */
  yyval = yyvsp[1-yylen];


  YY_REDUCE_PRINT (yyn);
  switch (yyn)
    {
  case 2: /* start: global_declaration  */
#line 729 "parser.y"
                                                                       {
       (yyval.typeinfo) = new TypeInfo();
         (yyval.typeinfo)->code = vector<TACInstruction*>();
         (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
       
       // Debug output
       cout << "Start rule: Global declaration has " << (yyval.typeinfo)->code.size() << " TAC instructions\n";
      
        // Open the file for writing
        ofstream tac_file("Final.tac");
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : (yyval.typeinfo)->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code written to Final.tac\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }
        
    }
#line 1757 "parser.tab.c"
    break;

  case 3: /* start: start global_declaration  */
#line 751 "parser.y"
                                                                                {
        // Append $2->code to $1->code
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-1].typeinfo)->code.begin(), (yyvsp[-1].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());

        // append this also to final.tac

        ofstream tac_file("Final.tac", ios::app);
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : (yyvsp[0].typeinfo)->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code appended to Final.tac\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }

        delete (yyvsp[0].typeinfo);
    }
#line 1785 "parser.tab.c"
    break;

  case 4: /* global_declaration: function_definition  */
#line 779 "parser.y"
                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 1793 "parser.tab.c"
    break;

  case 5: /* global_declaration: declaration  */
#line 782 "parser.y"
                          {
        (yyval.typeinfo) = new TypeInfo();
        // kyunki global declaration ka koi 3AC generate nahi hota
    }
#line 1802 "parser.tab.c"
    break;

  case 6: /* $@1: %empty  */
#line 789 "parser.y"
                                                       {
        // Generate function begin instruction
        string mangled_name = mangle_function_name((yyvsp[-1].declinfo)->name, (yyvsp[-1].declinfo)->paramTypes ? *(yyvsp[-1].declinfo)->paramTypes : vector<TypeInfo>());
        TACOperand* func_label = new_identifier(mangled_name);
        //$3 = new TypeInfo(); //naya
        TACInstruction* func_begin = emit(TACOperator(TAC_OPERATOR_FUNC_BEGIN), 
                                       new_identifier((yyvsp[-1].declinfo)->name), 
                                       new_empty_var(), 
                                       new_empty_var(), 0);
        (yyvsp[0].typeinfo)->code.push_back(func_begin);

        // -------------------------- RETURN TYPE ------------------------------------------
        TypeInfo returnType = *(yyvsp[-2].typeinfo);
        returnType.pointerLevel = (yyvsp[-1].declinfo)->pointerLevel;  // Handle multi-level pointers
        current_function_return_type = new TypeInfo(returnType); // Store return type for return statements

        //-------------------------- Register Function ------------------------------------------
        // Register function definition
		//TypeInfo returnType = *$1;
		returnType.pointerLevel = (yyvsp[-1].declinfo)->pointerLevel;  // Handle multi-level pointers


		
		if ((yyvsp[-1].declinfo)->isFunction && (yyvsp[-1].declinfo)->paramTypes) {
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes);
			cout << "Function definition: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}

    }
#line 1836 "parser.tab.c"
    break;

  case 7: /* function_definition: return_types fun_declarator marker_fun_begin $@1 compound_statement  */
#line 817 "parser.y"
                         {               /* e.g., int f() { ... } */
		
        (yyval.typeinfo) = new TypeInfo();

        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        
        for (TACInstruction* instr : (yyvsp[0].typeinfo)->code) {
            (yyval.typeinfo)->code.push_back(instr);
        }
        
        // Generate function end instruction
        TACInstruction* func_end = emit(TACOperator(TAC_OPERATOR_FUNC_END), 
                                      new_identifier((yyvsp[-3].declinfo)->name), 
                                      new_empty_var(), 
                                      new_empty_var(), 0);
        (yyval.typeinfo)->code.push_back(func_end);
		
		// Reset the current function context after function definition completes
		current_function_name = "";
		current_function_signature = "";
        current_function_return_type = nullptr;

   
        for(auto instr : (yyvsp[0].typeinfo)->code){
            string instr_str = get_TAC_instruction_string(instr);
            cout << instr_str << "\n";
        }
		
		// Clean up
        delete (yyvsp[-4].typeinfo);
        delete (yyvsp[-3].declinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 1875 "parser.tab.c"
    break;

  case 8: /* marker_fun_begin: %empty  */
#line 855 "parser.y"
                  {
        (yyval.typeinfo) = new TypeInfo();//naya
    }
#line 1883 "parser.tab.c"
    break;

  case 9: /* declaration: return_types SEMICOLON  */
#line 861 "parser.y"
                                 { 
        (yyval.typeinfo) = new TypeInfo();
        delete (yyvsp[-1].typeinfo); 
    }
#line 1892 "parser.tab.c"
    break;

  case 10: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 865 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.pointerLevel = declInfo->pointerLevel;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
            combinedType.result = new_identifier(mangle_variable_name(declInfo->name, current_scope_level, current_function_name, current_function_signature));

            (yyval.typeinfo) = new TypeInfo();
			
			// Type check initialization if present
			if (declInfo->initType != nullptr) {
				if (!check_initialization_compatibility(combinedType, *declInfo->initType)) {
					// Issue a warning instead of error to allow compilation to continue
					string warning_msg = "Type mismatch in initialization of variable '" + 
						declInfo->name + "': cannot convert from " + 
						declInfo->initType->toString() + " to " + combinedType.toString();
					type_warning(warning_msg);
				}else{
					// First, include the code that generates the initializer value (e.g., function call)
                    (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), declInfo->initType->code.begin(), declInfo->initType->code.end());

					// if implicit conversion allowed, then do it and reflect in 3AC else simply assign
                    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = change_type_rhs_to_lhs(combinedType, *declInfo->initType);
                    // append promo.first to $$->code
                    (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), promo.first.begin(), promo.first.end());
                    // now assign promo.second.second to declInfo->name
                    TACInstruction* assignInstr = emit(TACOperator(), promo.second.first, promo.second.second, new_empty_var(), 0);
                    (yyval.typeinfo)->code.push_back(assignInstr);

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
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
	}
#line 1946 "parser.tab.c"
    break;

  case 11: /* declaration: TYPEDEF return_types typedef_declarator_list SEMICOLON  */
#line 914 "parser.y"
                                                                 {
		// Typedef declaration: typedef int Integer; or typedef int* IntPtr;
		// Note: typedef does NOT allow initialization (e.g., typedef int I = 5; is INVALID)
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.pointerLevel = declInfo->pointerLevel;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			
			// Register typedef
			insert_typedef(declInfo->name, combinedType, current_scope_level);
			
			cout << "Registered typedef: " << declInfo->name << " as " << combinedType.toString() << "\n";
			
			delete declInfo;
		}
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
		
		(yyval.typeinfo) = new TypeInfo();  // typedef doesn't generate TAC
	}
#line 1974 "parser.tab.c"
    break;

  case 12: /* return_types: declaration_specifiers  */
#line 942 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1980 "parser.tab.c"
    break;

  case 13: /* declaration_specifiers: type_specifier  */
#line 946 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1986 "parser.tab.c"
    break;

  case 14: /* declaration_specifiers: STATIC type_specifier  */
#line 947 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1995 "parser.tab.c"
    break;

  case 15: /* type_specifier: VOID  */
#line 954 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 2004 "parser.tab.c"
    break;

  case 16: /* type_specifier: CHAR  */
#line 958 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 2013 "parser.tab.c"
    break;

  case 17: /* type_specifier: INT  */
#line 962 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 2022 "parser.tab.c"
    break;

  case 18: /* type_specifier: FLOAT  */
#line 966 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 2031 "parser.tab.c"
    break;

  case 19: /* type_specifier: struct_or_union_specifier  */
#line 970 "parser.y"
                                { 
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 2039 "parser.tab.c"
    break;

  case 20: /* type_specifier: IDENTIFIER  */
#line 973 "parser.y"
                 {
        // Check if this identifier is a typedef name
        TypeInfo* typedef_type = lookup_typedef(*(yyvsp[0].sval));
        if (typedef_type) {
            // It's a typedef - use the aliased type
            (yyval.typeinfo) = new TypeInfo(*typedef_type);
            cout << "Using typedef: " << *(yyvsp[0].sval) << " -> " << (yyval.typeinfo)->toString() << "\n";
        } else {
            // Not a typedef - this is an error in type context
            type_error("Unknown type name: " + *(yyvsp[0].sval));
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
        }
        delete (yyvsp[0].sval);
    }
#line 2059 "parser.tab.c"
    break;

  case 21: /* type_specifier: enum_specifier  */
#line 988 "parser.y"
                     {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int"; // Enums are treated as int
    }
#line 2068 "parser.tab.c"
    break;

  case 22: /* enum_specifier: ENUM LBRACE enumerator_list RBRACE  */
#line 994 "parser.y"
                                         {
        // Process enum constants with proper value handling
        vector<EnumConstant> constants;
        int current_value = 0;
        
        for (const EnumeratorInfo* enumInfo : *(yyvsp[-1].enuminfolist)) {
            EnumConstant constant;
            constant.name = enumInfo->name;
            constant.enumName = "anonymous_enum_" + to_string(current_scope_level);
            if (enumInfo->hasExplicitValue) {
                current_value = enumInfo->explicitValue;
            }
            constant.value = current_value;
            constant.line = yylineno;
            constant.scope_level = current_scope_level;
            constants.push_back(constant);
            
            // Register each constant immediately in global table
            // In both enum_specifier rules, before the line:
// enum_constants[constant.name] = constant;

// Add this check:
// Check current scope for redeclaration
if (!scope_stack.empty()) {
    auto& current_scope = scope_stack.back();
    if (current_scope.enum_constants.find(constant.name) != current_scope.enum_constants.end()) {
        type_error("Redeclaration of enum constant '" + constant.name + 
                   "' in same scope");
    } else {
        current_scope.enum_constants[constant.name] = constant;
    }
}
// Also keep in global table for compatibility
enum_constants[constant.name] = constant;
            current_value++; // Increment for next constant
            
            delete enumInfo; // Clean up
        }
        
        // Register the anonymous enum
        insert_enum("", constants, current_scope_level);
        
        (yyval.enumdef) = new EnumDef();
        (yyval.enumdef)->constants = constants;
        (yyval.enumdef)->isAnonymous = true;
        delete (yyvsp[-1].enuminfolist);
    }
#line 2120 "parser.tab.c"
    break;

  case 23: /* enum_specifier: ENUM IDENTIFIER LBRACE enumerator_list RBRACE  */
#line 1041 "parser.y"
                                                    {
        // Process enum constants with proper value handling
        vector<EnumConstant> constants;
        int current_value = 0;
        
        for (const EnumeratorInfo* enumInfo : *(yyvsp[-1].enuminfolist)) {
            EnumConstant constant;
            constant.name = enumInfo->name;
            constant.enumName = *(yyvsp[-3].sval);
            if (enumInfo->hasExplicitValue) {
                current_value = enumInfo->explicitValue;
            }
            constant.value = current_value;
            constant.line = yylineno;
            constant.scope_level = current_scope_level;
            constants.push_back(constant);
            
            // Register each constant immediately in global table
           // Check current scope for redeclaration
if (!scope_stack.empty()) {
    auto& current_scope = scope_stack.back();
    if (current_scope.enum_constants.find(constant.name) != current_scope.enum_constants.end()) {
        type_error("Redeclaration of enum constant '" + constant.name + 
                   "' in same scope");
    } else {
        current_scope.enum_constants[constant.name] = constant;
    }
}
// Also keep in global table for compatibility
enum_constants[constant.name] = constant;
            current_value++; // Increment for next constant
            
            delete enumInfo; // Clean up
        }
        
        // Register the named enum
        insert_enum(*(yyvsp[-3].sval), constants, current_scope_level);
        
        (yyval.enumdef) = new EnumDef();
        (yyval.enumdef)->name = *(yyvsp[-3].sval);
        (yyval.enumdef)->constants = constants;
        (yyval.enumdef)->isAnonymous = false;
        delete (yyvsp[-3].sval);
        delete (yyvsp[-1].enuminfolist);
    }
#line 2170 "parser.tab.c"
    break;

  case 24: /* enum_specifier: ENUM IDENTIFIER  */
#line 1086 "parser.y"
                      {
        // Forward declaration - create empty enum
        (yyval.enumdef) = new EnumDef();
        (yyval.enumdef)->name = *(yyvsp[0].sval);
        (yyval.enumdef)->isAnonymous = false;
        delete (yyvsp[0].sval);
    }
#line 2182 "parser.tab.c"
    break;

  case 25: /* enumerator: IDENTIFIER  */
#line 1095 "parser.y"
                 {
        (yyval.enuminfo) = new EnumeratorInfo();
        (yyval.enuminfo)->name = *(yyvsp[0].sval);
        (yyval.enuminfo)->hasExplicitValue = false;
        (yyval.enuminfo)->explicitValue = 0;
        delete (yyvsp[0].sval);
    }
#line 2194 "parser.tab.c"
    break;

  case 26: /* enumerator: IDENTIFIER ASSIGN constant_expression  */
#line 1102 "parser.y"
                                            {
        (yyval.enuminfo) = new EnumeratorInfo();
        (yyval.enuminfo)->name = *(yyvsp[-2].sval);
        (yyval.enuminfo)->hasExplicitValue = true;
        // Extract integer value from constant_expression
        if ((yyvsp[0].typeinfo)->result && (yyvsp[0].typeinfo)->result->type == TAC_OPERAND_CONSTANT) {
            (yyval.enuminfo)->explicitValue = stoi((yyvsp[0].typeinfo)->result->value);
        } else {
            (yyval.enuminfo)->explicitValue = 0;
            type_error("Enum constant value must be a compile-time constant");
        }
        delete (yyvsp[-2].sval);
        delete (yyvsp[0].typeinfo);
    }
#line 2213 "parser.tab.c"
    break;

  case 27: /* enumerator_list: enumerator  */
#line 1119 "parser.y"
                 {
        (yyval.enuminfolist) = new vector<EnumeratorInfo*>();
        (yyval.enuminfolist)->push_back((yyvsp[0].enuminfo));
    }
#line 2222 "parser.tab.c"
    break;

  case 28: /* enumerator_list: enumerator_list COMMA enumerator  */
#line 1123 "parser.y"
                                       {
        (yyval.enuminfolist) = (yyvsp[-2].enuminfolist);
        (yyval.enuminfolist)->push_back((yyvsp[0].enuminfo));
    }
#line 2231 "parser.tab.c"
    break;

  case 29: /* cast_type_specifier: type_specifier  */
#line 1129 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 2239 "parser.tab.c"
    break;

  case 30: /* cast_type_specifier: type_specifier STAR  */
#line 1132 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
#line 2248 "parser.tab.c"
    break;

  case 31: /* typedef_declarator_list: declarator  */
#line 1141 "parser.y"
                     {
		(yyval.decllist) = new vector<DeclaratorInfo*>();
		(yyval.decllist)->push_back((yyvsp[0].declinfo));
	}
#line 2257 "parser.tab.c"
    break;

  case 32: /* typedef_declarator_list: typedef_declarator_list COMMA declarator  */
#line 1145 "parser.y"
                                                   {
		(yyval.decllist) = (yyvsp[-2].decllist);
		(yyval.decllist)->push_back((yyvsp[0].declinfo));
	}
#line 2266 "parser.tab.c"
    break;

  case 33: /* init_declarator_list: init_declarator  */
#line 1152 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 2275 "parser.tab.c"
    break;

  case 34: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 1156 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 2284 "parser.tab.c"
    break;

  case 35: /* init_declarator: declarator  */
#line 1164 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 2290 "parser.tab.c"
    break;

  case 36: /* init_declarator: declarator ASSIGN initializer  */
#line 1165 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 2299 "parser.tab.c"
    break;

  case 37: /* declarator: pointer direct_declarator  */
#line 1174 "parser.y"
                                    {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels from $1 to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 2309 "parser.tab.c"
    break;

  case 38: /* declarator: direct_declarator  */
#line 1179 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2317 "parser.tab.c"
    break;

  case 39: /* direct_declarator: IDENTIFIER  */
#line 1186 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2327 "parser.tab.c"
    break;

  case 40: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 1191 "parser.y"
                                                          {     /* e.g., arr[10] or arr[10][20] */ 
		(yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 2340 "parser.tab.c"
    break;

  case 41: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 1199 "parser.y"
                                               {     /* e.g., arr[10] */ 
		(yyval.declinfo) = new DeclaratorInfo();
        if( (yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->name = *(yyvsp[-3].sval);
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival));
        delete (yyvsp[-3].sval);
    }
#line 2355 "parser.tab.c"
    break;

  case 42: /* direct_declarator: IDENTIFIER LBRACKET CHAR_LITERAL RBRACKET  */
#line 1208 "parser.y"
                                                 {     /* e.g., arr['a'] */
        // implicit conversion of char to int for array size
        (yyval.declinfo) = new DeclaratorInfo();
        // Extract the character value from the string literal
        char charValue = 0;
        if ((yyvsp[-1].sval) && (yyvsp[-1].sval)->length() >= 3) {  // Format is 'c'
            charValue = (*(yyvsp[-1].sval))[1];  // Get the character between quotes
        }
        if (charValue <= 0) {
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->name = *(yyvsp[-3].sval);
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension(static_cast<int>(charValue));
        delete (yyvsp[-3].sval);
    }
#line 2376 "parser.tab.c"
    break;

  case 43: /* direct_declarator: direct_declarator LBRACKET CHAR_LITERAL RBRACKET  */
#line 1223 "parser.y"
                                                        {     /* e.g., arr[10] or arr[10][20] */
        // implicit conversion of char to int for array size
        (yyval.declinfo) = (yyvsp[-3].declinfo);
        // Extract the character value from the string literal
        char charValue = 0;
        if ((yyvsp[-1].sval) && (yyvsp[-1].sval)->length() >= 3) {  // Format is 'c'
            charValue = (*(yyvsp[-1].sval))[1];  // Get the character between quotes
        }
        if (charValue <= 0) {
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension(static_cast<int>(charValue)); // Support multidimensional arrays by adding each dimension
    }
#line 2395 "parser.tab.c"
    break;

  case 44: /* fun_declarator: pointer fun_direct_declarator  */
#line 1239 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);  // Function returns a pointer (possibly multi-level)
  	}
#line 2404 "parser.tab.c"
    break;

  case 45: /* fun_declarator: fun_direct_declarator  */
#line 1243 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2412 "parser.tab.c"
    break;

  case 46: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 1250 "parser.y"
                                                  {          		/* e.g., f(int a, float b) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-3].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>(*(yyvsp[-1].typelist));  // Copy parameter types
		
		// Set current function context for variable name mangling
		current_function_name = (yyval.declinfo)->name;
		// Generate the function signature for variables in this function
		current_function_signature = "";
		for (size_t i = 0; i < (yyval.declinfo)->paramTypes->size(); i++) {
			TypeInfo& param = (*((yyval.declinfo)->paramTypes))[i];
			current_function_signature += type_code_for_mangling(param);
			if (i < (yyval.declinfo)->paramTypes->size() - 1) {
				current_function_signature += "_";
			}
		}
		
		cout << "Function declarator: " << (yyval.declinfo)->name << " with " << (yyval.declinfo)->paramTypes->size() << " parameters\n";
		delete (yyvsp[-3].sval);
		delete (yyvsp[-1].typelist);
	}
#line 2439 "parser.tab.c"
    break;

  case 47: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 1272 "parser.y"
                                   {                               /* e.g., f() (function with no params) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-2].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>();  // Empty parameter list
		
		// Set current function context for variable name mangling
		current_function_name = (yyval.declinfo)->name;
		current_function_signature = "";  // No parameters
		
		cout << "Function declarator: " << (yyval.declinfo)->name << " with no parameters\n";
		delete (yyvsp[-2].sval);
	}
#line 2457 "parser.tab.c"
    break;

  case 48: /* declaration_list: declaration  */
#line 1290 "parser.y"
                         {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[0].typeinfo)->code; // Carry forward the code from the declaration
        delete (yyvsp[0].typeinfo);
    }
#line 2467 "parser.tab.c"
    break;

  case 49: /* declaration_list: declaration_list declaration  */
#line 1295 "parser.y"
                                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        // Append the code from the new declaration
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        delete (yyvsp[0].typeinfo);
    }
#line 2478 "parser.tab.c"
    break;

  case 50: /* declaration_list: %empty  */
#line 1301 "parser.y"
                           {
        (yyval.typeinfo) = new TypeInfo(); // Empty declaration list
    }
#line 2486 "parser.tab.c"
    break;

  case 51: /* initializer: assignment_expression  */
#line 1312 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2492 "parser.tab.c"
    break;

  case 52: /* parameter_list: parameter_declaration  */
#line 1316 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2502 "parser.tab.c"
    break;

  case 53: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 1321 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2512 "parser.tab.c"
    break;

  case 54: /* parameter_declaration: return_types parameter_declarator  */
#line 1330 "parser.y"
                                                                                                          {
        // Combine base type with declarator-specific type info
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));  // Start with base type
        
        // Add declarator-specific type information
        combinedType->pointerLevel = (yyvsp[0].declinfo)->pointerLevel;
        combinedType->isArray = (yyvsp[0].declinfo)->isArray;
        combinedType->arrayDimensions = (yyvsp[0].declinfo)->arrayDimensions;
        
        // Store parameter information for later insertion into function scope
        current_function_parameters.push_back(make_pair((yyvsp[0].declinfo)->name, *combinedType));
        
        (yyval.typeinfo) = combinedType;
        delete (yyvsp[-1].typeinfo);
        delete (yyvsp[0].declinfo);
    }
#line 2533 "parser.tab.c"
    break;

  case 55: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 1349 "parser.y"
                                              {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 2543 "parser.tab.c"
    break;

  case 56: /* parameter_declarator: parameter_direct_declarator  */
#line 1354 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2551 "parser.tab.c"
    break;

  case 57: /* parameter_direct_declarator: IDENTIFIER  */
#line 1361 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2561 "parser.tab.c"
    break;

  case 58: /* primary_expression: IDENTIFIER  */
#line 1371 "parser.y"
                 { 
        SymbolEntry entry;
        // First, check if it's a variable
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);  // Store identifier name
            (yyval.typeinfo)->isLiteral = false;
            (yyval.typeinfo)->isLvalue = true;   // Variables are lvalues
            cout << "Found variable: " << *(yyvsp[0].sval) << " of type " << (yyval.typeinfo)->toString() << "\n";

            (yyval.typeinfo)->result = new_identifier(entry.mangledName);
        } 
        // If not a variable, check if it might be a function
        else if (is_function_name(*(yyvsp[0].sval))) {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "function";  // Mark as function type
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);       // Store function name
            (yyval.typeinfo)->isLiteral = false;
            (yyval.typeinfo)->isLvalue = false;       // Function names are not lvalues
            cout << "Found function name: " << *(yyvsp[0].sval) << "\n";

            (yyval.typeinfo)->result = new_identifier(*(yyvsp[0].sval)); // Function names can be used as pointers to functions
        }
        // Otherwise, check if it's an enum constant
        else {
            EnumConstant enumConstant;  // Declare separate variable
            if (lookup_enum_constant(*(yyvsp[0].sval), enumConstant)) {
                // It's an enum constant
                (yyval.typeinfo) = new TypeInfo();
                (yyval.typeinfo)->baseType = "int";  // Enum constants are of type int
                (yyval.typeinfo)->isLiteral = true;
                (yyval.typeinfo)->isLvalue = false;  // Enum constants are not lvalues
                cout << "Found enum constant: " << *(yyvsp[0].sval) << " with value " << enumConstant.value << "\n";

                (yyval.typeinfo)->result = new_constant(to_string(enumConstant.value));
            }
            // Otherwise, it's undefined - NOW check for declaration
            else {
                check_variable_declaration(*(yyvsp[0].sval));  // Move this here
                (yyval.typeinfo) = new TypeInfo();
                (yyval.typeinfo)->baseType = "error";
                (yyval.typeinfo)->identifier = *(yyvsp[0].sval);
                (yyval.typeinfo)->isLvalue = false;
                type_error("Undefined variable: " + *(yyvsp[0].sval));
            }
        }
        delete (yyvsp[0].sval);
    }
#line 2614 "parser.tab.c"
    break;

  case 59: /* primary_expression: INT_LITERAL  */
#line 1419 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";

        (yyval.typeinfo)->result = new_constant(to_string((yyvsp[0].ival)));


    }
#line 2630 "parser.tab.c"
    break;

  case 60: /* primary_expression: FLOAT_LITERAL  */
#line 1430 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";

        string floatStr = float_to_string_conversion((yyvsp[0].fval));
        (yyval.typeinfo)->result = new_constant(floatStr);

    }
#line 2646 "parser.tab.c"
    break;

  case 61: /* primary_expression: CHAR_LITERAL  */
#line 1441 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Char literal: " << *(yyvsp[0].sval) << " (type: char)\n";

        string charStr = char_to_string_conversion((*(yyvsp[0].sval))[1]); // Extract char from string literal format 'c'
        (yyval.typeinfo)->result = new_constant(charStr);
        delete (yyvsp[0].sval);
    }
#line 2662 "parser.tab.c"
    break;

  case 62: /* primary_expression: STRING_LITERAL  */
#line 1452 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->pointerLevel = 1;  
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues (even though string literals are somewhat special in C)
        cout << "String literal: " << *(yyvsp[0].sval) << " (type: string)\n";

        (yyval.typeinfo)->result = new_string(*(yyvsp[0].sval));


        delete (yyvsp[0].sval);
    }
#line 2680 "parser.tab.c"
    break;

  case 63: /* primary_expression: NULL_LITERAL  */
#line 1465 "parser.y"
                       { 
        //abhi dekhna hai isko 
        //leave it for now
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->pointerLevel = 1;  // NULL is a void pointer
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // NULL is not an lvalue
        cout << "NULL literal (type: void*)\n";
    }
#line 2695 "parser.tab.c"
    break;

  case 64: /* primary_expression: LPAREN expression RPAREN  */
#line 1475 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 2703 "parser.tab.c"
    break;

  case 65: /* postfix_expression: primary_expression  */
#line 1482 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2709 "parser.tab.c"
    break;

  case 66: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 1483 "parser.y"
                                                          {              /* e.g., arr[i] */
		// Array subscripting: arr[i] or ptr[i]
		TypeInfo* base = (yyvsp[-3].typeinfo);
		TypeInfo* index = (yyvsp[-1].typeinfo);
		
		// Check if base is array or pointer
		if (!base->isArray && base->pointerLevel == 0) {
			type_error("Subscript operator [] can only be applied to arrays or pointers");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (!is_integer_type(index->baseType)) {
			type_error("Array index must be an integer type, got " + index->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			// Result is the base type but with one dimension removed
			(yyval.typeinfo) = new TypeInfo(*base);
			
			if (base->isArray) {
				// Handle multidimensional arrays
                cout<<"Handling array subscript for base type: " << base->toString() << "\n";
				if (base->arrayDimensions.size() > 1) {
					// Remove only the first dimension, keep the rest
					(yyval.typeinfo)->isArray = true;
					(yyval.typeinfo)->arrayDimensions = vector<int>(base->arrayDimensions.begin() + 1, base->arrayDimensions.end());
				} else {
					// Single dimension array becomes base type
					(yyval.typeinfo)->isArray = false;
					(yyval.typeinfo)->arrayDimensions.clear();
				}
                //print base now
                cout<<"Resulting type after subscript: " << (yyval.typeinfo)->toString() << "\n";
			} else {
				// Handle pointers - only allow one level pointers for subscript
                cout<<"Handling pointer subscript for base type: " << base->toString() << "\n";
				if (base->pointerLevel > 1) {
					type_error("Subscript operator [] can only be applied to single-level pointers, not multi-level pointers like " + base->toString());
					(yyval.typeinfo)->baseType = "error";
				} else {
					// For single-level pointers, decrement pointer level
					(yyval.typeinfo)->pointerLevel = base->pointerLevel > 0 ? base->pointerLevel - 1 : 0;
					(yyval.typeinfo)->isArray = false;
					(yyval.typeinfo)->arrayDimensions.clear();
				}
                cout<<"Resulting type after subscript: " << (yyval.typeinfo)->toString() << "\n";
			}

        
			
			(yyval.typeinfo)->isLiteral = false;
			// Array subscript result is an lvalue if the base is an lvalue
			(yyval.typeinfo)->isLvalue = base->isLvalue;

            int size_of_base = getSize(*(yyval.typeinfo));
            
            TACOperand* offset = new_temp_var();
            TACInstruction* i1 = emit(TAC_OPERATOR_MUL, offset, index->result, new_constant(to_string(size_of_base)),0);

            // base address is &base->result

            TACOperand* base_addr = new_temp_var();
            TACInstruction* i_base = emit(TAC_OPERATOR_ADDR_OF, base_addr, base->result, new_empty_var(),0);

            TACOperand* address = new_temp_var();
            TACInstruction* i2 = emit(TAC_OPERATOR_ADD, address, base_addr, offset,0);
            (yyval.typeinfo)->result = new_temp_var();
            TACInstruction* i3 = emit(TAC_OPERATOR_DEREF, (yyval.typeinfo)->result, address, new_empty_var(),0);
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), base->code.begin(), base->code.end());
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), index->code.begin(), index->code.end());
            (yyval.typeinfo)->code.push_back(i1);
            (yyval.typeinfo)->code.push_back(i_base);
            (yyval.typeinfo)->code.push_back(i2);
            (yyval.typeinfo)->code.push_back(i3);

		}
		delete (yyvsp[-3].typeinfo); delete (yyvsp[-1].typeinfo);
	}
#line 2791 "parser.tab.c"
    break;

  case 67: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 1560 "parser.y"
                                           {                               /* e.g., func() */
		// Function call with no arguments
		TypeInfo* base = (yyvsp[-2].typeinfo);
		
		if (!base->identifier.empty()) {
			// Try to resolve function call
			vector<TypeInfo> emptyArgs;
			FunctionEntry* func = lookup_function(base->identifier, emptyArgs);
			
			if (func) {
				(yyval.typeinfo) = new TypeInfo(func->returnType);
				(yyval.typeinfo)->isLiteral = false;
				cout << "Function call: " << base->identifier << "() -> " << (yyval.typeinfo)->toString() << "\n";
                // Generate the call instruction
                (yyval.typeinfo)->result = new_temp_var();
                TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
                                            (yyval.typeinfo)->result, 
                                            new_identifier(base->identifier), 
                                            new_constant("0"), 0);
                (yyval.typeinfo)->code.push_back(callInstr);
			} else {
				type_error("No matching function found for call to '" + base->identifier + "()'");
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			}
		} else {
			type_error("Invalid function call expression");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		}
		delete (yyvsp[-2].typeinfo);
	}
#line 2828 "parser.tab.c"
    break;

  case 68: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 1592 "parser.y"
                                                                    {      /* e.g., func(a,b) */
		// Function call with arguments
		TypeInfo* base = (yyvsp[-3].typeinfo);
		vector<TypeInfo>* argTypes = (yyvsp[-1].typelist);

        // print for each argument type
		
		if (!base->identifier.empty() && argTypes) {
			// Try to resolve function call
			FunctionEntry* func = lookup_function(base->identifier, *argTypes);
			
			if (func) {
				(yyval.typeinfo) = new TypeInfo(func->returnType);
				(yyval.typeinfo)->isLiteral = false;
                (yyval.typeinfo)->code = vector<TACInstruction*>();
				//cout << "Function call: " << base->identifier << "(...) -> " << $$->toString() << "\n";
                int no_of_args = argTypes->size();
                for(int i=0;i<no_of_args;i++){
                    (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (*argTypes)[i].code.begin(), (*argTypes)[i].code.end());
                }
                for(int i=0;i<no_of_args;i++){
                    // generate code for argument passing
                    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = change_type_rhs_to_lhs(func->parameters[i].type, (*argTypes)[i]);
                    // append promo.first to $$->code
                    (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), promo.first.begin(), promo.first.end());
                    // now pass promo.second.second as argument
                    TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                promo.second.second, 
                                                new_empty_var(), 
                                                new_empty_var(), 0);
                    (yyval.typeinfo)->code.push_back(argInstr);
                }
                // Now generate the call instruction
                (yyval.typeinfo)->result = new_temp_var();
                TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
                                            (yyval.typeinfo)->result, 
                                            new_identifier(base->identifier), 
                                            new_constant(to_string(no_of_args)), 0);
                (yyval.typeinfo)->code.push_back(callInstr);
			} else {
				// Create a descriptive error message
				string argTypesStr = "";
				for (size_t i = 0; i < argTypes->size(); ++i) {
					if (i > 0) argTypesStr += ", ";
					argTypesStr += (*argTypes)[i].toString();
				}
				
				type_error("No matching function found for call to '" + base->identifier + 
					"(" + argTypesStr + ")'");
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			}
		} else {
			type_error("Invalid function call expression");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		}
		
		delete (yyvsp[-3].typeinfo);
		delete (yyvsp[-1].typelist);
	}
#line 2894 "parser.tab.c"
    break;

  case 69: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 1653 "parser.y"
                                            {                            /* e.g., obj.field */
		// Struct member access - obj.member
		TypeInfo* base = (yyvsp[-2].typeinfo);
		string memberName = *(yyvsp[0].sval);
		
		// Check if base is a struct/union type
		if (base->pointerLevel > 0 || base->isArray) {
			type_error("Dot operator requires a struct/union object, not a pointer. Use '->' for pointers.");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (!base->isStruct && !base->isUnion) {
			type_error("Dot operator requires a struct/union type, got: " + base->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			// Use the structDef from TypeInfo
			StructUnionDef* structDef = base->structDef;
			
			if (!structDef) {
				type_error("Struct/union definition not found for type: " + base->toString());
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			} else {
				// Find the member
				StructMember* member = find_member(structDef, memberName);
				
				if (!member) {
					type_error("Struct/union '" + base->structUnionName + "' has no member named '" + memberName + "'");
					(yyval.typeinfo) = new TypeInfo();
					(yyval.typeinfo)->baseType = "error";
				} else {
					// Result is the member type
					(yyval.typeinfo) = new TypeInfo(member->type);
					(yyval.typeinfo)->isLvalue = true;  // Member access is an lvalue
					(yyval.typeinfo)->isLiteral = false;
					
					// TAC: Calculate member address
					// base_addr = &base
					// result_addr = base_addr + offset
					// result = *result_addr (if we need the value)
					
					(yyval.typeinfo)->code = base->code;
					
					TACOperand* base_addr = new_temp_var();
					TACInstruction* addr_instr = emit(TACOperator(TAC_OPERATOR_ADDR_OF), base_addr, base->result, new_empty_var(), 0);
					(yyval.typeinfo)->code.push_back(addr_instr);
					
					TACOperand* member_addr = new_temp_var();
					TACInstruction* offset_instr = emit(TACOperator(TAC_OPERATOR_ADD), member_addr, base_addr, 
					                                    new_constant(to_string(member->offset)), 0);
					(yyval.typeinfo)->code.push_back(offset_instr);
					
					// The result is the dereferenced member address
					(yyval.typeinfo)->result = new_temp_var();
					TACInstruction* deref_instr = emit(TACOperator(TAC_OPERATOR_DEREF), (yyval.typeinfo)->result, member_addr, new_empty_var(), 0);
					(yyval.typeinfo)->code.push_back(deref_instr);
					
					cout << "Struct member access: " << base->toString() << "." << memberName 
					     << " -> " << (yyval.typeinfo)->toString() << " at offset " << member->offset << "\n";
				}
			}
		}
		
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].sval);
	}
#line 2964 "parser.tab.c"
    break;

  case 70: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 1718 "parser.y"
                                              {                             /* e.g., ptr->field */
		// Struct pointer member access - ptr->member
		TypeInfo* base = (yyvsp[-2].typeinfo);
		string memberName = *(yyvsp[0].sval);
		
		// Check if base is a pointer to struct/union
		if (base->pointerLevel == 0) {
			type_error("Arrow operator requires a pointer to struct/union. Use '.' for objects.");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (!base->isStruct && !base->isUnion) {
			type_error("Arrow operator requires a pointer to struct/union type, got: " + base->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			// Use the structDef from TypeInfo
			StructUnionDef* structDef = base->structDef;
			
			if (!structDef) {
				type_error("Struct/union definition not found for type: " + base->toString());
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			} else {
				// Find the member
				StructMember* member = find_member(structDef, memberName);
				
				if (!member) {
					type_error("Struct/union '" + base->structUnionName + "' has no member named '" + memberName + "'");
					(yyval.typeinfo) = new TypeInfo();
					(yyval.typeinfo)->baseType = "error";
				} else {
					// Result is the member type
					(yyval.typeinfo) = new TypeInfo(member->type);
					(yyval.typeinfo)->isLvalue = true;  // Member access is an lvalue
					(yyval.typeinfo)->isLiteral = false;
					
					// TAC: Calculate member address
					// member_addr = base + offset  (base is already a pointer)
					// result = *member_addr
					
					(yyval.typeinfo)->code = base->code;
					
					TACOperand* member_addr = new_temp_var();
					TACInstruction* offset_instr = emit(TACOperator(TAC_OPERATOR_ADD), member_addr, base->result, 
					                                    new_constant(to_string(member->offset)), 0);
					(yyval.typeinfo)->code.push_back(offset_instr);
					
					// The result is the dereferenced member address
					(yyval.typeinfo)->result = new_temp_var();
					TACInstruction* deref_instr = emit(TACOperator(TAC_OPERATOR_DEREF), (yyval.typeinfo)->result, member_addr, new_empty_var(), 0);
					(yyval.typeinfo)->code.push_back(deref_instr);
					
					cout << "Struct pointer member access: " << base->toString() << "->" << memberName 
					     << " -> " << (yyval.typeinfo)->toString() << " at offset " << member->offset << "\n";
				}
			}
		}
		
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].sval);
	}
#line 3029 "parser.tab.c"
    break;

  case 71: /* postfix_expression: postfix_expression INCREMENT  */
#line 1778 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 3038 "parser.tab.c"
    break;

  case 72: /* postfix_expression: postfix_expression DECREMENT  */
#line 1782 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--"); 
		delete (yyvsp[-1].typeinfo);
	}
#line 3047 "parser.tab.c"
    break;

  case 73: /* argument_expression_list: assignment_expression  */
#line 1789 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
        TypeInfo argType = *(yyvsp[0].typeinfo);
        (yyval.typelist)->push_back(argType);
        delete (yyvsp[0].typeinfo);
	}
#line 3058 "parser.tab.c"
    break;

  case 74: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 1795 "parser.y"
                                                               {           /* e.g., x, y */
        TypeInfo argType = *(yyvsp[0].typeinfo);
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(argType);
        delete (yyvsp[0].typeinfo);
	}
#line 3069 "parser.tab.c"
    break;

  case 75: /* unary_expression: postfix_expression  */
#line 1804 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3075 "parser.tab.c"
    break;

  case 76: /* unary_expression: INCREMENT unary_expression  */
#line 1805 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");    
		delete (yyvsp[0].typeinfo);
	}
#line 3084 "parser.tab.c"
    break;

  case 77: /* unary_expression: DECREMENT unary_expression  */
#line 1809 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 3093 "parser.tab.c"
    break;

  case 78: /* unary_expression: unary_operator cast_expression  */
#line 1813 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
        delete (yyvsp[0].typeinfo);
	}
#line 3102 "parser.tab.c"
    break;

  case 79: /* unary_expression: SIZEOF unary_expression  */
#line 1817 "parser.y"
                                  { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;

        // 3AC code for sizeof
        int size = getSize(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->result = new_temp_var();
        TACInstruction* sizeInstr = emit(TACOperator(), (yyval.typeinfo)->result, new_constant(to_string(size)), new_empty_var(), 0);
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        
        for(auto instr : (yyvsp[0].typeinfo)->code){
            (yyval.typeinfo)->code.push_back(instr);
        }
        (yyval.typeinfo)->code.push_back(sizeInstr);

		delete (yyvsp[0].typeinfo);
	}
#line 3125 "parser.tab.c"
    break;

  case 80: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 1835 "parser.y"
                                              { 
		(yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";  // sizeof always returns int
        (yyval.typeinfo)->isLiteral = true;

        // 3AC code for sizeof(type)
        int size = getSize(*(yyvsp[-1].typeinfo));
        (yyval.typeinfo)->result = new_temp_var();
        TACInstruction* sizeInstr = emit(TACOperator(), (yyval.typeinfo)->result, new_constant(to_string(size)), new_empty_var(), 0);
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.push_back(sizeInstr);

        delete (yyvsp[-1].typeinfo);
	}
#line 3144 "parser.tab.c"
    break;

  case 81: /* unary_operator: BIT_AND  */
#line 1852 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 3150 "parser.tab.c"
    break;

  case 82: /* unary_operator: STAR  */
#line 1853 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 3156 "parser.tab.c"
    break;

  case 83: /* unary_operator: PLUS  */
#line 1854 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 3162 "parser.tab.c"
    break;

  case 84: /* unary_operator: MINUS  */
#line 1855 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 3168 "parser.tab.c"
    break;

  case 85: /* unary_operator: BIT_NOT  */
#line 1856 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 3174 "parser.tab.c"
    break;

  case 86: /* unary_operator: LOGICAL_NOT  */
#line 1857 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 3180 "parser.tab.c"
    break;

  case 87: /* cast_expression: unary_expression  */
#line 1861 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3186 "parser.tab.c"
    break;

  case 88: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 1862 "parser.y"
                                                            {                         /* e.g., (int) x, (int*) x */
		TypeInfo* target_type = (yyvsp[-2].typeinfo);
		TypeInfo* source_type = (yyvsp[0].typeinfo);

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
        (yyval.typeinfo) = new TypeInfo(*target_type);
        (yyval.typeinfo)->isLiteral = false; // Result of cast is not a literal
        (yyval.typeinfo)->result = promo.second.second;
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        // Carry over the code from the source expression
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), source_type->code.begin(), source_type->code.end());
        // Append the casting instructions
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), promo.first.begin(), promo.first.end());
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3218 "parser.tab.c"
    break;

  case 89: /* multiplicative_expression: cast_expression  */
#line 1892 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3224 "parser.tab.c"
    break;

  case 90: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 1893 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3233 "parser.tab.c"
    break;

  case 91: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 1897 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3242 "parser.tab.c"
    break;

  case 92: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 1901 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3251 "parser.tab.c"
    break;

  case 93: /* additive_expression: multiplicative_expression  */
#line 1908 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3257 "parser.tab.c"
    break;

  case 94: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 1909 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3266 "parser.tab.c"
    break;

  case 95: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 1913 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
        cout<<"Hello from additive expression minus\n";

        //print code
        for(auto instr : (yyval.typeinfo)->code){
            print_TAC_instruction(instr);
        }

		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3282 "parser.tab.c"
    break;

  case 96: /* shift_expression: additive_expression  */
#line 1927 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3288 "parser.tab.c"
    break;

  case 97: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 1928 "parser.y"
                                                          {                     /* e.g., a << b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type((yyvsp[-2].typeinfo)->baseType) || (yyvsp[-2].typeinfo)->pointerLevel > 0 || (yyvsp[-2].typeinfo)->isArray ||
		    !is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + (yyvsp[-2].typeinfo)->toString() + ", Right: " + (yyvsp[0].typeinfo)->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			(yyval.typeinfo) = new TypeInfo(*(yyvsp[-2].typeinfo));
			if ((yyval.typeinfo)->baseType == "char") (yyval.typeinfo)->baseType = "int"; // Promote char to int
			cout << "Left shift: " << (yyvsp[-2].typeinfo)->toString() << " << " << (yyvsp[0].typeinfo)->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
            // now 3AC code
            //if any operand is char, promote to int
            TACOperand* left_op = (yyvsp[-2].typeinfo)->result;
            TACOperand* right_op = (yyvsp[0].typeinfo)->result;
            if((yyvsp[-2].typeinfo)->baseType == "char"){
                left_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, left_op, (yyvsp[-2].typeinfo)->result, new_type("int"),0);
                (yyval.typeinfo)->code.push_back(promo);
            }
            if((yyvsp[0].typeinfo)->baseType == "char"){
                right_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, right_op, (yyvsp[0].typeinfo)->result, new_type("int"),0);
                (yyval.typeinfo)->code.push_back(promo);
            }
            TACOperand* result_op = new_temp_var();
            TACInstruction* shift_instr = emit(TAC_OPERATOR_LEFT_SHIFT, result_op, left_op, right_op,0);
            (yyval.typeinfo)->code.push_back(shift_instr);

		}
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3325 "parser.tab.c"
    break;

  case 98: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 1960 "parser.y"
                                                           {                     /* e.g., a >> b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type((yyvsp[-2].typeinfo)->baseType) || (yyvsp[-2].typeinfo)->pointerLevel > 0 || (yyvsp[-2].typeinfo)->isArray ||
		    !is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->isArray) {
			type_error("Shift operations require integer operands (not pointers or arrays). Left: " + (yyvsp[-2].typeinfo)->toString() + ", Right: " + (yyvsp[0].typeinfo)->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			(yyval.typeinfo) = new TypeInfo(*(yyvsp[-2].typeinfo));
			if ((yyval.typeinfo)->baseType == "char") (yyval.typeinfo)->baseType = "int"; // Promote char to int
			cout << "Right shift: " << (yyvsp[-2].typeinfo)->toString() << " >> " << (yyvsp[0].typeinfo)->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";

            TACOperand* left_op = (yyvsp[-2].typeinfo)->result;
            TACOperand* right_op = (yyvsp[0].typeinfo)->result;
            if((yyvsp[-2].typeinfo)->baseType == "char"){
                left_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, left_op, (yyvsp[-2].typeinfo)->result, new_type("int"),0);
                (yyval.typeinfo)->code.push_back(promo);
            }
            if((yyvsp[0].typeinfo)->baseType == "char"){
                right_op = new_temp_var();
                TACInstruction* promo = emit(TAC_OPERATOR_CAST, right_op, (yyvsp[0].typeinfo)->result, new_type("int"),0);
                (yyval.typeinfo)->code.push_back(promo);
            }
            TACOperand* result_op = new_temp_var();
            TACInstruction* shift_instr = emit(TAC_OPERATOR_RIGHT_SHIFT, result_op, left_op, right_op,0);
            (yyval.typeinfo)->code.push_back(shift_instr);
		}
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3360 "parser.tab.c"
    break;

  case 99: /* relational_expression: shift_expression  */
#line 1993 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3366 "parser.tab.c"
    break;

  case 100: /* relational_expression: relational_expression LT shift_expression  */
#line 1994 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3375 "parser.tab.c"
    break;

  case 101: /* relational_expression: relational_expression GT shift_expression  */
#line 1998 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3384 "parser.tab.c"
    break;

  case 102: /* relational_expression: relational_expression LE shift_expression  */
#line 2002 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3393 "parser.tab.c"
    break;

  case 103: /* relational_expression: relational_expression GE shift_expression  */
#line 2006 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3402 "parser.tab.c"
    break;

  case 104: /* equality_expression: relational_expression  */
#line 2013 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3408 "parser.tab.c"
    break;

  case 105: /* equality_expression: equality_expression EQ relational_expression  */
#line 2014 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3417 "parser.tab.c"
    break;

  case 106: /* equality_expression: equality_expression NEQ relational_expression  */
#line 2018 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3426 "parser.tab.c"
    break;

  case 107: /* and_expression: equality_expression  */
#line 2025 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3432 "parser.tab.c"
    break;

  case 108: /* and_expression: and_expression BIT_AND equality_expression  */
#line 2026 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3441 "parser.tab.c"
    break;

  case 109: /* exclusive_or_expression: and_expression  */
#line 2033 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3447 "parser.tab.c"
    break;

  case 110: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 2034 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3456 "parser.tab.c"
    break;

  case 111: /* inclusive_or_expression: exclusive_or_expression  */
#line 2041 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3462 "parser.tab.c"
    break;

  case 112: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 2042 "parser.y"
                                                                 { 
		
        (yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
        delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 3472 "parser.tab.c"
    break;

  case 113: /* logical_and_expression: inclusive_or_expression  */
#line 2049 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3478 "parser.tab.c"
    break;

  case 114: /* $@2: %empty  */
#line 2050 "parser.y"
                                             { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        (yyvsp[-1].typeinfo)->code.push_back(if_true);
        (yyvsp[-1].typeinfo)->code.push_back(goto_false);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_false);
    }
#line 3491 "parser.tab.c"
    break;

  case 115: /* logical_and_expression: logical_and_expression LOGICAL_AND $@2 inclusive_or_expression  */
#line 2057 "parser.y"
                              { 
		// Short-circuit logical AND
        TypeInfo* left = (yyvsp[-3].typeinfo);
        TypeInfo* right = (yyvsp[0].typeinfo);
        
        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in logical AND operation");
        }else{
            // okay for all other types
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "int"; // Result of logical operations is int
            (yyval.typeinfo)->isLiteral = false;
            (yyval.typeinfo)->isLvalue = false;
            cout << "Logical AND: " << left->toString() << " && " << right->toString() << " -> int\n";

            
            (yyval.typeinfo)->result = new_temp_var();
            (yyval.typeinfo)->code = left->code;
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), right->code.begin(), right->code.end());


            TACOperand* true_label = new_label(2);
            TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, right->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
            TACOperand* false_label = new_label(3);
            TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), false_label, new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
            TACInstruction* assign_true = emit(TACOperator(TAC_OPERATOR_NOP), (yyval.typeinfo)->result, new_constant("1"), new_empty_var(),0); // result = 1
            TACOperand* end_label = new_label(2);
            TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), end_label, new_empty_var(), new_empty_var(), 1); // goto ___
            TACInstruction* assign_false = emit(TACOperator(TAC_OPERATOR_NOP), (yyval.typeinfo)->result, new_constant("0"), new_empty_var(),0); // result = 0
            // backpatching
            if (!left->false_list.empty()) {
                backpatch(left->false_list, false_label);
            }
            if (!right->false_list.empty()) {
                backpatch(right->false_list, false_label);
            }
            (yyval.typeinfo)->code.push_back(if_true);
            (yyval.typeinfo)->code.push_back(goto_false);
            (yyval.typeinfo)->code.push_back(assign_true);
            (yyval.typeinfo)->code.push_back(goto_end);
            (yyval.typeinfo)->code.push_back(assign_false);

            delete left;
            delete right;

        }
    }
#line 3544 "parser.tab.c"
    break;

  case 116: /* logical_or_expression: logical_and_expression  */
#line 2108 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3550 "parser.tab.c"
    break;

  case 117: /* $@3: %empty  */
#line 2109 "parser.y"
                                           {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        (yyvsp[-1].typeinfo)->code.push_back(go_true);
        (yyvsp[-1].typeinfo)->true_list.insert(go_true);
    }
#line 3560 "parser.tab.c"
    break;

  case 118: /* logical_or_expression: logical_or_expression LOGICAL_OR $@3 logical_and_expression  */
#line 2113 "parser.y"
                             { 
		// short circuit
        
        TypeInfo* left = (yyvsp[-3].typeinfo);
        TypeInfo* right = (yyvsp[0].typeinfo);


        // Both sides must be scalar types (not arrays or structs)
        if(left->baseType == "void" || right->baseType == "void" ){
            type_error("Void type cannot be used in bitwise OR operation");
        }else{
            // okay for all other types
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "int"; // Result of bitwise operations is int
            (yyval.typeinfo)->isLiteral = false;
            (yyval.typeinfo)->isLvalue = false;
            cout << "Bitwise OR: " << left->toString() << " | " << right->toString() << " -> int\n";
            (yyval.typeinfo)->result = new_temp_var();
            (yyval.typeinfo)->code = left->code;
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), right->code.begin(), right->code.end());
            TACOperand* true_label = new_label(2);
            TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, right->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
            TACOperand* false_label = new_label(3);
            TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), false_label, new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
            TACInstruction* assign_true = emit(TACOperator(TAC_OPERATOR_NOP), (yyval.typeinfo)->result, new_constant("1"), new_empty_var(),0); // result = 1
            TACOperand* end_label = new_label(2);
            TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), end_label, new_empty_var(), new_empty_var(), 1); // goto ___
            TACInstruction* assign_false = emit(TACOperator(TAC_OPERATOR_NOP), (yyval.typeinfo)->result, new_constant("0"), new_empty_var(),0); // result = 0

            //backpatching
            if (!left->true_list.empty()) {
                backpatch(left->true_list, true_label);
            }
            if (!right->true_list.empty()) {
                backpatch(right->true_list, true_label);
            }

            (yyval.typeinfo)->code.push_back(if_true);
            (yyval.typeinfo)->code.push_back(goto_false);
            (yyval.typeinfo)->code.push_back(assign_true);
            (yyval.typeinfo)->code.push_back(goto_end);
            (yyval.typeinfo)->code.push_back(assign_false);


            delete left;
            delete right;
            
        }
    }
#line 3614 "parser.tab.c"
    break;

  case 119: /* conditional_expression: logical_or_expression  */
#line 2165 "parser.y"
                                                                                         {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // No conditional, just pass through
    }
#line 3622 "parser.tab.c"
    break;

  case 120: /* assignment_expression: conditional_expression  */
#line 2171 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo);}
#line 3628 "parser.tab.c"
    break;

  case 121: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 2172 "parser.y"
                                                                     { 
		// Type checking for assignment
		TypeInfo* lhs_type = (yyvsp[-2].typeinfo);
		TypeInfo* rhs_type = (yyvsp[0].typeinfo);
		
		// Check if left-hand side is a valid lvalue
		if (!is_lvalue(*lhs_type)) {
			type_error("Cannot assign to " + lhs_type->toString() + " - not an lvalue");
			(yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->isLvalue = false;  // Result of assignment is not an lvalue in C
			(yyval.typeinfo)->baseType = "error";
		} else if (!is_implicit_conversion_allowed(*rhs_type, *lhs_type)) {
			type_error("Cannot assign " + rhs_type->toString() + " to " + lhs_type->toString());
			(yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->isLvalue = false;  // Result of assignment is not an lvalue in C
			(yyval.typeinfo)->baseType = "error";
		} else if (is_narrowing_conversion(*rhs_type, *lhs_type)) {
			type_warning("Narrowing conversion from " + rhs_type->toString() + " to " + lhs_type->toString());
			(yyval.typeinfo) = new TypeInfo(*lhs_type);  // Result type is the LHS type
            (yyval.typeinfo)->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            (yyval.typeinfo)->result = cast_result.second.first; // Result after casting
            (yyval.typeinfo)->code = lhs_type->code;
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, (yyval.typeinfo)->result, new_empty_var(),0); // lhs = rhs
            (yyval.typeinfo)->code.push_back(assign_inst);
		} else {
			(yyval.typeinfo) = new TypeInfo(*lhs_type);  // Result type is the LHS type
			(yyval.typeinfo)->isLvalue = false;  // Result of assignment is not an lvalue in C
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = promote_types(*rhs_type, *lhs_type);
            (yyval.typeinfo)->result = cast_result.second.first; // Result after casting
            (yyval.typeinfo)->code = lhs_type->code;
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), rhs_type->code.begin(), rhs_type->code.end());
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* assign_inst = emit(TACOperator(), lhs_type->result, (yyval.typeinfo)->result, new_empty_var(),0); // lhs = rhs
            (yyval.typeinfo)->code.push_back(assign_inst);
		}

        // print 3AC
        for(TACInstruction* inst : (yyval.typeinfo)->code){
            print_TAC_instruction(inst);
        }
		
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3679 "parser.tab.c"
    break;

  case 123: /* expression: assignment_expression  */
#line 2225 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3685 "parser.tab.c"
    break;

  case 124: /* expression: expression COMMA assignment_expression  */
#line 2226 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = new TypeInfo(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->isLvalue = false;  // Result of comma operator is not an
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
		delete (yyvsp[-2].typeinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 3699 "parser.tab.c"
    break;

  case 125: /* constant_expression: conditional_expression  */
#line 2238 "parser.y"
                                 { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
	}
#line 3707 "parser.tab.c"
    break;

  case 126: /* $@4: %empty  */
#line 2246 "parser.y"
                                            {
		// Initialize the global member list for this struct
		current_struct_members = new vector<StructMember>();
		// Track the struct/union name being defined (for self-referential pointers)
		current_struct_being_defined = (*(yyvsp[-2].sval) == "union" ? "union " : "struct ") + *(yyvsp[-1].sval);
	}
#line 3718 "parser.tab.c"
    break;

  case 127: /* struct_or_union_specifier: struct_or_union IDENTIFIER LBRACE $@4 struct_declaration_list RBRACE  */
#line 2251 "parser.y"
                                         {  // e.g., struct S { int x; float y; };
		// This defines a new struct/union
		bool isUnion = (*(yyvsp[-5].sval) == "union");
		string structName = *(yyvsp[-4].sval);
		
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
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->isStruct = !isUnion;
		(yyval.typeinfo)->isUnion = isUnion;
		(yyval.typeinfo)->structUnionName = structName;
		(yyval.typeinfo)->structDef = lookup_struct_union(structName);
		(yyval.typeinfo)->baseType = *(yyvsp[-5].sval) + " " + structName; // For compatibility and toString()
		
		if ((yyval.typeinfo)->structDef == nullptr) {
			type_error("Failed to register struct/union: " + structName);
		}
		
		delete (yyvsp[-5].sval); delete (yyvsp[-4].sval);
	}
#line 3770 "parser.tab.c"
    break;

  case 128: /* $@5: %empty  */
#line 2301 "parser.y"
                              {
        // Initialize the global member list for this struct
        current_struct_members = new vector<StructMember>();
        // Track the struct/union name being defined (for self-referential pointers)
        string structType = (*(yyvsp[-1].sval) == "union" ? "union " : "struct ");
        current_struct_being_defined = structType + "<anonymous>" + "_" + to_string(anonymous_struct_counter++);

    }
#line 3783 "parser.tab.c"
    break;

  case 129: /* struct_or_union_specifier: struct_or_union LBRACE $@5 struct_declaration_list RBRACE  */
#line 2308 "parser.y"
                                     {  // e.g., struct { int x
        // This defines a new anonymous struct/union
        bool isUnion = (*(yyvsp[-4].sval) == "union");
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
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isStruct = !isUnion;
        (yyval.typeinfo)->isUnion = isUnion;
        (yyval.typeinfo)->structUnionName = structName;
        (yyval.typeinfo)->structDef = lookup_struct_union(structName);
        (yyval.typeinfo)->baseType = *(yyvsp[-4].sval) + " " + structName; // For compatibility and toString()
        
        if ((yyval.typeinfo)->structDef == nullptr) {
            type_error("Failed to register anonymous struct/union");
        }
        
        delete (yyvsp[-4].sval);
    }
#line 3817 "parser.tab.c"
    break;

  case 130: /* struct_or_union_specifier: struct_or_union IDENTIFIER  */
#line 2337 "parser.y"
                                     {  // e.g., struct S; or using existing struct S
		// Reference to existing struct/union or forward declaration
		bool isUnion = (*(yyvsp[-1].sval) == "union");
		string structName = *(yyvsp[0].sval);
		
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->isStruct = !isUnion;
		(yyval.typeinfo)->isUnion = isUnion;
		(yyval.typeinfo)->structUnionName = structName;
		(yyval.typeinfo)->structDef = lookup_struct_union(structName);
		(yyval.typeinfo)->baseType = *(yyvsp[-1].sval) + " " + structName; // For compatibility and toString()
		
		if ((yyval.typeinfo)->structDef == nullptr) {
			type_warning("Using undefined struct/union: " + structName + " (forward declaration or error)");
		}
		
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 3840 "parser.tab.c"
    break;

  case 131: /* struct_or_union: STRUCT  */
#line 2358 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 3846 "parser.tab.c"
    break;

  case 132: /* struct_or_union: UNION  */
#line 2359 "parser.y"
            { (yyval.sval) = new string("union"); }
#line 3852 "parser.tab.c"
    break;

  case 136: /* struct_declaration: type_specifier struct_declarator_list SEMICOLON  */
#line 2370 "parser.y"
                                                          {
		// For each declarator, create a StructMember and add to current_struct_members
        for (auto declInfo : *(yyvsp[-1].decllist)) {
            StructMember member;
            member.name = declInfo->name; // Use -> since declInfo is a pointer
            member.type = TypeInfo(*(yyvsp[-2].typeinfo)); // Base type from type_specifier
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
        delete (yyvsp[-2].typeinfo);
        delete (yyvsp[-1].decllist);
    }
#line 3905 "parser.tab.c"
    break;

  case 137: /* struct_declarator_list: struct_declarator  */
#line 2421 "parser.y"
                            {
		(yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo)); // $1 is already a pointer
    }
#line 3914 "parser.tab.c"
    break;

  case 138: /* struct_declarator_list: struct_declarator_list COMMA struct_declarator  */
#line 2425 "parser.y"
                                                     {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo)); // $3 is already a pointer
    }
#line 3923 "parser.tab.c"
    break;

  case 139: /* struct_declarator: declarator  */
#line 2431 "parser.y"
                     {
        (yyval.declinfo) = (yyvsp[0].declinfo);
    }
#line 3931 "parser.tab.c"
    break;

  case 140: /* pointer: STAR  */
#line 2448 "parser.y"
           {                                   /* e.g., * */
        (yyval.ival) = 1;  // Return pointer level instead of TypeInfo
    }
#line 3939 "parser.tab.c"
    break;

  case 141: /* pointer: STAR pointer  */
#line 2451 "parser.y"
                   {                           /* e.g., ** or *** etc. */
        (yyval.ival) = (yyvsp[0].ival) + 1;  // Increment pointer level for each * encountered
    }
#line 3947 "parser.tab.c"
    break;

  case 142: /* statement: labeled_statement  */
#line 2460 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3955 "parser.tab.c"
    break;

  case 143: /* statement: compound_statement  */
#line 2463 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3963 "parser.tab.c"
    break;

  case 144: /* statement: expression_statement  */
#line 2466 "parser.y"
                                                                                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3971 "parser.tab.c"
    break;

  case 145: /* statement: selection_statement  */
#line 2469 "parser.y"
                                                                                                        {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3979 "parser.tab.c"
    break;

  case 146: /* statement: iteration_statement  */
#line 2472 "parser.y"
                                                                                                           {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3987 "parser.tab.c"
    break;

  case 147: /* statement: jump_statement  */
#line 2475 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3995 "parser.tab.c"
    break;

  case 148: /* statement: error SEMICOLON  */
#line 2478 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 4004 "parser.tab.c"
    break;

  case 149: /* labeled_statement: IDENTIFIER COLON marker statement  */
#line 2486 "parser.y"
                                                                                                              {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        if( label_map.find(*(yyvsp[-3].sval)) != label_map.end() ) {
            type_error("Duplicate label definition: " + *(yyvsp[-3].sval));
        }else{
            label_map[*(yyvsp[-3].sval)] = (yyvsp[-1].opinfo);
            // backpatch any gotos to this label
            backpatch(unresolved_jumps[*(yyvsp[-3].sval)], (yyvsp[-1].opinfo));
        }
        delete (yyvsp[-3].sval);
    }
#line 4020 "parser.tab.c"
    break;

  case 150: /* $@6: %empty  */
#line 2497 "parser.y"
                                   {
        // Validate: constant_expression must be int or char
        if( !is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->isArray ) {
            type_error("Case label must be of integer or char type, got: " + (yyvsp[0].typeinfo)->toString());
        }
        
        // Check if we're inside a switch statement
        if (switch_case_stack.empty()) {
            type_error("Case label not within a switch statement");
        } else {
            // Convert char to int if needed
            int case_value = 0;
            if((yyvsp[0].typeinfo)->baseType == "char"){
                // Extract char value from result (assuming it's a constant)
                if ((yyvsp[0].typeinfo)->result && (yyvsp[0].typeinfo)->result->type == TAC_OPERAND_CONSTANT) {
                    case_value = (int)((yyvsp[0].typeinfo)->result->value[0]);
                } else {
                    type_error("Case label must be a constant expression");
                }
            } else if ((yyvsp[0].typeinfo)->baseType == "int") {
                // Extract int value from result
                if ((yyvsp[0].typeinfo)->result && (yyvsp[0].typeinfo)->result->type == TAC_OPERAND_CONSTANT) {
                    case_value = stoi((yyvsp[0].typeinfo)->result->value);
                } else {
                    type_error("Case label must be a constant expression");
                }
            }
            
            // Check for duplicate case values in current switch
            map<int, TACOperand*>& current_switch_map = switch_case_stack.back();
            if (current_switch_map.find(case_value) != current_switch_map.end()) {
                type_error("Duplicate case value: " + to_string(case_value) + " in switch statement");
            } else {
                // Create a label for this case
                TACOperand* case_label = new_label(0);
                current_switch_map[case_value] = case_label;
                
                // Emit the label at this point//hihi
               // TACInstruction* label_inst = emit(TAC_OPERATOR_LABEL, case_label, new_empty_var(), new_empty_var(), 0);
               // $2->code.push_back(label_inst);
                
                //cout << "Registered case " << case_value << " with label " << case_label->value << "\n";
            }
            }
        }
#line 4070 "parser.tab.c"
    break;

  case 151: /* labeled_statement: CASE constant_expression $@6 COLON marker statement  */
#line 2542 "parser.y"
                                                                                 {
        // Combine code from case expression and statement
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-4].typeinfo)->code.begin(), (yyvsp[-4].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // Propagate break statements
        (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;
        
        delete (yyvsp[-4].typeinfo);
        delete (yyvsp[0].typeinfo);
    }
#line 4088 "parser.tab.c"
    break;

  case 152: /* labeled_statement: DEFAULT COLON statement  */
#line 2555 "parser.y"
                                  {                                               /* e.g., default: stmt */
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
                
                // Emit the label at this point
                //TACInstruction* label_inst = emit(TAC_OPERATOR_LABEL, default_label, new_empty_var(), new_empty_var(), 0);
                
                (yyval.typeinfo) = new TypeInfo();
                (yyval.typeinfo)->code = vector<TACInstruction*>();
                //$$->code.push_back(label_inst);
                (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
                
                // Propagate break statements
                (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;
                
                //cout << "Registered default label " << default_label->value << "\n";
                
                delete (yyvsp[0].typeinfo);
            }
        }
    }
#line 4123 "parser.tab.c"
    break;

  case 153: /* $@7: %empty  */
#line 2588 "parser.y"
                 { enter_scope(); insert_current_function_parameters(); }
#line 4129 "parser.tab.c"
    break;

  case 154: /* compound_statement: LBRACE $@7 declaration_list statement_list RBRACE  */
#line 2588 "parser.y"
                                                                                                                 {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-1].typeinfo)->code.begin(), (yyvsp[-1].typeinfo)->code.end());
        (yyval.typeinfo)->next_list = (yyvsp[-1].typeinfo)->next_list;
        (yyval.typeinfo)->break_list = (yyvsp[-1].typeinfo)->break_list;
        (yyval.typeinfo)->continue_list = (yyvsp[-1].typeinfo)->continue_list;
        delete (yyvsp[-2].typeinfo);
        delete (yyvsp[-1].typeinfo);
        exit_scope(); 
    }
#line 4145 "parser.tab.c"
    break;

  case 155: /* marker: %empty  */
#line 2602 "parser.y"
                  {
        (yyval.opinfo) = new_label(0); // Create a label for the beginning of loops
    }
#line 4153 "parser.tab.c"
    break;

  case 156: /* statement_list: statement  */
#line 2608 "parser.y"
                                                                                               {
        (yyval.typeinfo)= (yyvsp[0].typeinfo);
        TACOperand* curr_inst = new_label(0);
        backpatch((yyval.typeinfo)->next_list,curr_inst);
    }
#line 4163 "parser.tab.c"
    break;

  case 157: /* statement_list: statement_list marker statement  */
#line 2613 "parser.y"
                                                                                                               {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->break_list = (yyvsp[-2].typeinfo)->break_list;
        (yyval.typeinfo)->continue_list = (yyvsp[-2].typeinfo)->continue_list;
        backpatch((yyvsp[-2].typeinfo)->next_list, (yyvsp[-1].opinfo));
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->break_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        (yyval.typeinfo)->continue_list.insert((yyvsp[0].typeinfo)->continue_list.begin(), (yyvsp[0].typeinfo)->continue_list.end());
        (yyval.typeinfo)->next_list = (yyvsp[0].typeinfo)->next_list;
        
       delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 4181 "parser.tab.c"
    break;

  case 158: /* statement_list: %empty  */
#line 2626 "parser.y"
                        {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 4190 "parser.tab.c"
    break;

  case 159: /* expression_statement: SEMICOLON  */
#line 2635 "parser.y"
                {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 4199 "parser.tab.c"
    break;

  case 160: /* expression_statement: expression SEMICOLON  */
#line 2639 "parser.y"
                           {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
    }
#line 4207 "parser.tab.c"
    break;

  case 161: /* selection_statement: if_expression  */
#line 2645 "parser.y"
                                                                               {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        if (! (yyvsp[0].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[0].typeinfo)->false_list, curr_inst);
        }
    }
#line 4219 "parser.tab.c"
    break;

  case 162: /* $@8: %empty  */
#line 2652 "parser.y"
                             {        
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->next_list.insert(goto_inst);
        if (! (yyvsp[-1].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[-1].typeinfo)->false_list, curr_inst);
        }
    }
#line 4233 "parser.tab.c"
    break;

  case 163: /* selection_statement: if_expression ELSE $@8 statement  */
#line 2661 "parser.y"
    {
        (yyval.typeinfo) = (yyvsp[-3].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->break_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        (yyval.typeinfo)->continue_list.insert((yyvsp[0].typeinfo)->continue_list.begin(), (yyvsp[0].typeinfo)->continue_list.end());
        delete (yyvsp[0].typeinfo);
    }
#line 4246 "parser.tab.c"
    break;

  case 164: /* $@9: %empty  */
#line 2669 "parser.y"
                                   {
        // Validate: expression must be int or char
        if (!is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->isArray) {
            type_error("Switch expression must be of integer or char type, got: " + (yyvsp[0].typeinfo)->toString());
        }
        
        // Convert char to int if needed
        TACOperand* switch_value = (yyvsp[0].typeinfo)->result;
        if ((yyvsp[0].typeinfo)->baseType == "char") {
            TACOperand* int_temp = new_temp_var();
            TACInstruction* cast_inst = emit(TAC_OPERATOR_CAST, int_temp, (yyvsp[0].typeinfo)->result, new_type("int"), 0);
            (yyvsp[0].typeinfo)->code.push_back(cast_inst);
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
        (yyvsp[0].typeinfo)->code.push_back(goto_jump_table);
        
        cout << "Created jump table " << current_table_id << " for switch expression\n";
    }
#line 4287 "parser.tab.c"
    break;

  case 165: /* selection_statement: SWITCH LPAREN expression $@9 RPAREN statement  */
#line 2705 "parser.y"
                                                                                {
        (yyval.typeinfo) = new TypeInfo();
        
        // Get switch expression code
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-3].typeinfo)->code.begin(), (yyvsp[-3].typeinfo)->code.end());
        
        // Get statement code (contains all case/default labels and their code)
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // Create end label for switch
        TACOperand* end_label = new_label(0);
        //TACInstruction* end_label_inst = emit(TAC_OPERATOR_LABEL, end_label, new_empty_var(), new_empty_var(), 0);
        //$$->code.push_back(end_label_inst);
        
        // Backpatch all break statements to end label
        backpatch((yyvsp[0].typeinfo)->break_list, end_label);
        
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
        
        delete (yyvsp[-3].typeinfo);
        delete (yyvsp[0].typeinfo);
    }
#line 4336 "parser.tab.c"
    break;

  case 166: /* $@10: %empty  */
#line 2752 "parser.y"
                                   {
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); 
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);
    }
#line 4349 "parser.tab.c"
    break;

  case 167: /* if_expression: IF LPAREN expression RPAREN $@10 statement  */
#line 2759 "parser.y"
                 {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-3].typeinfo)->code;
        (yyval.typeinfo)->true_list = (yyvsp[-3].typeinfo)->true_list;
        (yyval.typeinfo)->false_list = (yyvsp[-3].typeinfo)->false_list;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;
        (yyval.typeinfo)->continue_list = (yyvsp[0].typeinfo)->continue_list;
        TACOperand* curr_inst = new_label(0);
        //ig iski zroorat nhi hai, double jumps hii ho rhe hai
        // don't delete below commented line yet
        // krish
        //backpatch($6->next_list, curr_inst);
        delete (yyvsp[-3].typeinfo);
        delete (yyvsp[0].typeinfo);
    }
#line 4370 "parser.tab.c"
    break;

  case 168: /* $@11: %empty  */
#line 2780 "parser.y"
                                                       {
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2);
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);

        // backpatching to the beginning of the loop
        // although for now it is useless
        if(! (yyvsp[-1].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[-1].typeinfo)->true_list, new_label(0));
        }
    }
#line 4389 "parser.tab.c"
    break;

  case 169: /* iteration_statement: WHILE begin_marker LPAREN expression RPAREN $@11 statement  */
#line 2793 "parser.y"
                                            {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-3].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // seems redundant 
        //but dont delete for now
        // krish
        //backpatch($7->next_list, curr_inst);
        //TACOperand* curr_inst = new_label(0);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-5].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_begin);
        (yyval.typeinfo)->next_list = (yyvsp[0].typeinfo)->next_list;
        (yyval.typeinfo)->next_list.insert((yyvsp[-3].typeinfo)->false_list.begin(), (yyvsp[-3].typeinfo)->false_list.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        if(! (yyvsp[0].typeinfo)->continue_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->continue_list, (yyvsp[-5].opinfo));
        }else{
            cout<<"continue list empty\n";
        }
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 4416 "parser.tab.c"
    break;

  case 170: /* $@12: %empty  */
#line 2815 "parser.y"
                                               {
        // if E then goto___ -> next list
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[0].typeinfo)->result, new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        (yyvsp[0].typeinfo)->true_list.insert(if_inst);
    }
#line 4427 "parser.tab.c"
    break;

  case 171: /* iteration_statement: UNTIL begin_marker LPAREN expression $@12 RPAREN statement  */
#line 2820 "parser.y"
                                                    {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-3].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        // at the end of the loop body, add a goto to the beginning of the loop
        //TACOperand* curr_inst = new_label(0);
        //seems redundant but dont delete for now
        // krish
        //backpatch($7->next_list, curr_inst);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-5].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_begin);
        // next_list of the loop statement is the true_list of the condition expression
        (yyval.typeinfo)->next_list = (yyvsp[-3].typeinfo)->true_list;
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        if(! (yyvsp[0].typeinfo)->continue_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->continue_list, (yyvsp[-5].opinfo));
        }
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 4452 "parser.tab.c"
    break;

  case 172: /* $@13: %empty  */
#line 2840 "parser.y"
                                     {
        TACOperand* curr_inst = new_label(0);
        // seemss redundant but dont delete for now
        // krish
        //backpatch($3->next_list, curr_inst);
    }
#line 4463 "parser.tab.c"
    break;

  case 173: /* iteration_statement: DO begin_marker statement $@13 WHILE LPAREN marker expression RPAREN SEMICOLON  */
#line 2845 "parser.y"
                                                     {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-7].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-8].opinfo), (yyvsp[-2].typeinfo)->result, new_empty_var(), 2);
        (yyval.typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_end);
        (yyvsp[-2].typeinfo)->false_list.insert(goto_end);
        // next_list of the loop statement is the false_list of the condition expression
        (yyval.typeinfo)->next_list = (yyvsp[-2].typeinfo)->false_list;
        (yyval.typeinfo)->next_list.insert((yyvsp[-7].typeinfo)->next_list.begin(), (yyvsp[-7].typeinfo)->next_list.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[-7].typeinfo)->break_list.begin(), (yyvsp[-7].typeinfo)->break_list.end());

        if(! (yyvsp[-7].typeinfo)->continue_list.empty()) {
            backpatch((yyvsp[-7].typeinfo)->continue_list, (yyvsp[-3].opinfo));
        }

    }
#line 4487 "parser.tab.c"
    break;

  case 176: /* begin_marker: %empty  */
#line 2869 "parser.y"
                  {
        // Mark the beginning of a loop for backpatching
        (yyval.opinfo) = new_label(0);
    }
#line 4496 "parser.tab.c"
    break;

  case 177: /* jump_statement: GOTO IDENTIFIER SEMICOLON  */
#line 2876 "parser.y"
                                                                                                        {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        // In a full implementation, we would need to handle label resolution here
        if( label_map.find(*(yyvsp[-1].sval)) != label_map.end() ) {
            // Label already defined, backpatch immediately
            backpatch({goto_inst}, label_map[*(yyvsp[-1].sval)]);
        } else {
            // Label not yet defined, add to unresolved jumps
            unresolved_jumps[*(yyvsp[-1].sval)].insert(goto_inst);
        }
        delete (yyvsp[-1].sval);
    }
#line 4516 "parser.tab.c"
    break;

  case 178: /* jump_statement: CONTINUE SEMICOLON  */
#line 2891 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->continue_list.insert(goto_inst);
    }
#line 4528 "parser.tab.c"
    break;

  case 179: /* jump_statement: BREAK SEMICOLON  */
#line 2898 "parser.y"
                                                                                                   {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->break_list.insert(goto_inst);
    }
#line 4540 "parser.tab.c"
    break;

  case 180: /* jump_statement: RETURN SEMICOLON  */
#line 2905 "parser.y"
                                                                                                    {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* ret_inst = emit(TACOperator(TAC_OPERATOR_RETURN), new_empty_var(), new_empty_var(), new_empty_var(),0);
        // if current function is void, okay else type error
        if(current_function_return_type->pointerLevel == 0 && current_function_return_type->baseType == "void"){
            // okay
            (yyval.typeinfo)->code.push_back(ret_inst);
        }else{
            type_error("Return type mismatch: function expects " + current_function_return_type->toString());
        }
        
    }
#line 4558 "parser.tab.c"
    break;

  case 181: /* jump_statement: RETURN expression SEMICOLON  */
#line 2918 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->code = (yyvsp[-1].typeinfo)->code;
        if(!is_implicit_conversion_allowed(*(yyvsp[-1].typeinfo), *current_function_return_type)){
            type_error("Return type mismatch: function expects " + current_function_return_type->toString() + ", but returning " + (yyvsp[-1].typeinfo)->toString());
        }else{
            const TypeInfo lhs = *current_function_return_type;
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = change_type_rhs_to_lhs(lhs,*(yyvsp[-1].typeinfo));
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* ret_inst = emit(TACOperator(TAC_OPERATOR_RETURN), cast_result.second.second, new_empty_var(), new_empty_var(),0);
            (yyval.typeinfo)->code.push_back(ret_inst);
        }
        delete (yyvsp[-1].typeinfo);
    }
#line 4578 "parser.tab.c"
    break;


#line 4582 "parser.tab.c"

      default: break;
    }
  /* User semantic actions sometimes alter yychar, and that requires
     that yytoken be updated with the new translation.  We take the
     approach of translating immediately before every use of yytoken.
     One alternative is translating here after every semantic action,
     but that translation would be missed if the semantic action invokes
     YYABORT, YYACCEPT, or YYERROR immediately after altering yychar or
     if it invokes YYBACKUP.  In the case of YYABORT or YYACCEPT, an
     incorrect destructor might then be invoked immediately.  In the
     case of YYERROR or YYBACKUP, subsequent parser actions might lead
     to an incorrect destructor call or verbose syntax error message
     before the lookahead is translated.  */
  YY_SYMBOL_PRINT ("-> $$ =", YY_CAST (yysymbol_kind_t, yyr1[yyn]), &yyval, &yyloc);

  YYPOPSTACK (yylen);
  yylen = 0;

  *++yyvsp = yyval;

  /* Now 'shift' the result of the reduction.  Determine what state
     that goes to, based on the state we popped back to and the rule
     number reduced by.  */
  {
    const int yylhs = yyr1[yyn] - YYNTOKENS;
    const int yyi = yypgoto[yylhs] + *yyssp;
    yystate = (0 <= yyi && yyi <= YYLAST && yycheck[yyi] == *yyssp
               ? yytable[yyi]
               : yydefgoto[yylhs]);
  }

  goto yynewstate;


/*--------------------------------------.
| yyerrlab -- here on detecting error.  |
`--------------------------------------*/
yyerrlab:
  /* Make sure we have latest lookahead translation.  See comments at
     user semantic actions for why this is necessary.  */
  yytoken = yychar == YYEMPTY ? YYSYMBOL_YYEMPTY : YYTRANSLATE (yychar);
  /* If not already recovering from an error, report this error.  */
  if (!yyerrstatus)
    {
      ++yynerrs;
      yyerror (YY_("syntax error"));
    }

  if (yyerrstatus == 3)
    {
      /* If just tried and failed to reuse lookahead token after an
         error, discard it.  */

      if (yychar <= YYEOF)
        {
          /* Return failure if at end of input.  */
          if (yychar == YYEOF)
            YYABORT;
        }
      else
        {
          yydestruct ("Error: discarding",
                      yytoken, &yylval);
          yychar = YYEMPTY;
        }
    }

  /* Else will try to reuse lookahead token after shifting the error
     token.  */
  goto yyerrlab1;


/*---------------------------------------------------.
| yyerrorlab -- error raised explicitly by YYERROR.  |
`---------------------------------------------------*/
yyerrorlab:
  /* Pacify compilers when the user code never invokes YYERROR and the
     label yyerrorlab therefore never appears in user code.  */
  if (0)
    YYERROR;
  ++yynerrs;

  /* Do not reclaim the symbols of the rule whose action triggered
     this YYERROR.  */
  YYPOPSTACK (yylen);
  yylen = 0;
  YY_STACK_PRINT (yyss, yyssp);
  yystate = *yyssp;
  goto yyerrlab1;


/*-------------------------------------------------------------.
| yyerrlab1 -- common code for both syntax error and YYERROR.  |
`-------------------------------------------------------------*/
yyerrlab1:
  yyerrstatus = 3;      /* Each real token shifted decrements this.  */

  /* Pop stack until we find a state that shifts the error token.  */
  for (;;)
    {
      yyn = yypact[yystate];
      if (!yypact_value_is_default (yyn))
        {
          yyn += YYSYMBOL_YYerror;
          if (0 <= yyn && yyn <= YYLAST && yycheck[yyn] == YYSYMBOL_YYerror)
            {
              yyn = yytable[yyn];
              if (0 < yyn)
                break;
            }
        }

      /* Pop the current state because it cannot handle the error token.  */
      if (yyssp == yyss)
        YYABORT;


      yydestruct ("Error: popping",
                  YY_ACCESSING_SYMBOL (yystate), yyvsp);
      YYPOPSTACK (1);
      yystate = *yyssp;
      YY_STACK_PRINT (yyss, yyssp);
    }

  YY_IGNORE_MAYBE_UNINITIALIZED_BEGIN
  *++yyvsp = yylval;
  YY_IGNORE_MAYBE_UNINITIALIZED_END


  /* Shift the error token.  */
  YY_SYMBOL_PRINT ("Shifting", YY_ACCESSING_SYMBOL (yyn), yyvsp, yylsp);

  yystate = yyn;
  goto yynewstate;


/*-------------------------------------.
| yyacceptlab -- YYACCEPT comes here.  |
`-------------------------------------*/
yyacceptlab:
  yyresult = 0;
  goto yyreturnlab;


/*-----------------------------------.
| yyabortlab -- YYABORT comes here.  |
`-----------------------------------*/
yyabortlab:
  yyresult = 1;
  goto yyreturnlab;


/*-----------------------------------------------------------.
| yyexhaustedlab -- YYNOMEM (memory exhaustion) comes here.  |
`-----------------------------------------------------------*/
yyexhaustedlab:
  yyerror (YY_("memory exhausted"));
  yyresult = 2;
  goto yyreturnlab;


/*----------------------------------------------------------.
| yyreturnlab -- parsing is finished, clean up and return.  |
`----------------------------------------------------------*/
yyreturnlab:
  if (yychar != YYEMPTY)
    {
      /* Make sure we have latest lookahead translation.  See comments at
         user semantic actions for why this is necessary.  */
      yytoken = YYTRANSLATE (yychar);
      yydestruct ("Cleanup: discarding lookahead",
                  yytoken, &yylval);
    }
  /* Do not reclaim the symbols of the rule whose action triggered
     this YYABORT or YYACCEPT.  */
  YYPOPSTACK (yylen);
  YY_STACK_PRINT (yyss, yyssp);
  while (yyssp != yyss)
    {
      yydestruct ("Cleanup: popping",
                  YY_ACCESSING_SYMBOL (+*yyssp), yyvsp);
      YYPOPSTACK (1);
    }
#ifndef yyoverflow
  if (yyss != yyssa)
    YYSTACK_FREE (yyss);
#endif

  return yyresult;
}

#line 2935 "parser.y"




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
// Remove enum constants from current scope
for (auto it = enum_constants.begin(); it != enum_constants.end();) {
    if (it->second.scope_level == current_scope_level) {
        it = enum_constants.erase(it);
    } else {
        ++it;
    }
}

// Remove enum definitions from current scope
for (auto& pair : enum_table) {
    vector<EnumDef>& defs = pair.second;
    while (!defs.empty() && defs.back().scope_level == current_scope_level) {
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
    // Check for conflict with enum constants in current scope
if (current_scope.enum_constants.find(name) != current_scope.enum_constants.end()) {
    string error_msg = "Error at line " + to_string(yylineno) + ": Variable '" + name + 
                       "' conflicts with enum constant in same scope";
    cerr << error_msg << "\n";
    log_error(error_msg);
    return;
}
    SymbolEntry entry;
    entry.name = name;
    entry.type = type;
    entry.line = yylineno;
    entry.scope_level = current_scope_level;
    
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
    return type == "int" || type == "float";
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
    if (types_compatible(from, to)) {
        return true;
    }
    
    // Allow conversions between numeric types including char<->int
    if (is_numeric_type(from.baseType) && is_numeric_type(to.baseType) && 
        from.pointerLevel == 0 && to.pointerLevel == 0 && 
        !from.isArray && !to.isArray) {
        
        // Allow char to int conversions (removed restriction)
        return true;
    }
    
    // Allow NULL (void*) to any pointer conversion
    if (from.baseType == "void" && from.pointerLevel > 0 && to.pointerLevel > 0) {
        return true;
    }
    
    // Allow integer literals to floating-point types
    if (from.isLiteral && from.baseType == "int" && to.baseType == "float" &&
        from.pointerLevel == 0 && to.pointerLevel == 0) {
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
    // float to int is narrowing (potential loss of fractional part)
    if (from.baseType == "float" && to.baseType == "int" && 
        from.pointerLevel == 0 && to.pointerLevel == 0 && 
        !from.isArray && !to.isArray) {
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
    if (from.pointerLevel > 0 && (to.baseType == "int" || to.baseType == "char")) {
        return true;
    }
    
    // Pointer to different pointer type (other than void*) is potentially unsafe
    if (from.pointerLevel > 0 && to.pointerLevel > 0 && from.baseType != to.baseType && 
        from.baseType != "void" && to.baseType != "void") {
        return true;
    }
    
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
        if (operand.pointerLevel == 0) {
            type_error("Cannot dereference non-pointer type");
            TypeInfo* res = new TypeInfo();
            res->baseType = "error";
            return res;
        }
        
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

// Function management implementation
string mangle_function_name(const string& funcName, const vector<TypeInfo>& paramTypes) {
    string mangledName = funcName;
    
    for (const TypeInfo& param : paramTypes) {
        mangledName += "_" + type_code_for_mangling(param);
    }
    
    return mangledName;
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

void insert_enum(const string& name, const vector<EnumConstant>& constants, int scope_level) {
    string key = name.empty() ? "anonymous_enum_" + to_string(scope_level) : name;
    
    // Check if already defined in current scope
    if (enum_table.find(key) != enum_table.end() && !enum_table[key].empty()) {
        if (enum_table[key].back().scope_level == scope_level) {
            type_warning("Redefinition of enum '" + key + "' in the same scope");
            return; // Don't insert duplicates
        }
    }
    
    EnumDef def;
    def.name = name;
    def.constants = constants;
    def.scope_level = scope_level;
    def.isAnonymous = name.empty();
    
    // Add enum definition to table
    enum_table[key].push_back(def);
    
    // Note: Constants are already added to global table in enum_specifier rules
    // No need to add them again here to avoid duplicates
    
    cout << "Registered enum '" << key << "' in scope " << scope_level 
         << " with " << constants.size() << " constants\n";
    
    // Print constant details
    for (const auto& constant : constants) {
        cout << "  - " << constant.name << " = " << constant.value << "\n";
    }
}

EnumDef* lookup_enum(const string& name) {
    // Try exact match first
    if (enum_table.find(name) != enum_table.end() && !enum_table[name].empty()) {
        return &enum_table[name].back();
    }
    
    return nullptr;
}

bool lookup_enum_constant(const string& name, EnumConstant& constant) {
    // Search from current scope to global scope
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        auto it = scope_stack[i].enum_constants.find(name);
        if (it != scope_stack[i].enum_constants.end()) {
            constant = it->second;
            return true;
        }
    }
    return false;
}

void insert_enum_constant(const string& name, int value, int line) {
    EnumConstant constant;
    constant.name = name;
    constant.value = value;
    constant.line = line;
    
    // Check if constant already exists
    if (enum_constants.find(name) != enum_constants.end()) {
        type_warning("Redefinition of enum constant '" + name + "'");
    }
    
    enum_constants[name] = constant;
    cout << "Registered enum constant: " << name << " = " << value << " at line " << line << "\n";
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
        const vector<EnumDef>& enum_stack = entry.second;
        
        cout << "Enum: " << enum_name << "\n";
        for (size_t i = 0; i < enum_stack.size(); i++) {
            const EnumDef& enumDef = enum_stack[i];
            cout << "  [" << i << "] Scope " << enumDef.scope_level << " with " << enumDef.constants.size() << " constants:\n";
            for (const auto& constant : enumDef.constants) {
                cout << "    " << constant.name << " = " << constant.value << "\n";
            }
        }
    }
    
    cout << "\nGlobal Enum Constants:\n";
    for (const auto& entry : enum_constants) {
        cout << "  " << entry.first << " = " << entry.second.value << "\n";
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
