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
  YYSYMBOL_ELLIPSIS = 29,                  /* ELLIPSIS  */
  YYSYMBOL_LOGICAL_AND = 30,               /* LOGICAL_AND  */
  YYSYMBOL_LOGICAL_OR = 31,                /* LOGICAL_OR  */
  YYSYMBOL_EQ = 32,                        /* EQ  */
  YYSYMBOL_NEQ = 33,                       /* NEQ  */
  YYSYMBOL_LE = 34,                        /* LE  */
  YYSYMBOL_GE = 35,                        /* GE  */
  YYSYMBOL_PLUS = 36,                      /* PLUS  */
  YYSYMBOL_MINUS = 37,                     /* MINUS  */
  YYSYMBOL_STAR = 38,                      /* STAR  */
  YYSYMBOL_DIVIDE = 39,                    /* DIVIDE  */
  YYSYMBOL_MOD = 40,                       /* MOD  */
  YYSYMBOL_ASSIGN = 41,                    /* ASSIGN  */
  YYSYMBOL_LT = 42,                        /* LT  */
  YYSYMBOL_GT = 43,                        /* GT  */
  YYSYMBOL_LOGICAL_NOT = 44,               /* LOGICAL_NOT  */
  YYSYMBOL_BIT_AND = 45,                   /* BIT_AND  */
  YYSYMBOL_BIT_OR = 46,                    /* BIT_OR  */
  YYSYMBOL_BIT_XOR = 47,                   /* BIT_XOR  */
  YYSYMBOL_BIT_NOT = 48,                   /* BIT_NOT  */
  YYSYMBOL_DOT = 49,                       /* DOT  */
  YYSYMBOL_COLON = 50,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 51,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 52,                     /* COMMA  */
  YYSYMBOL_LBRACE = 53,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 54,                    /* RBRACE  */
  YYSYMBOL_LPAREN = 55,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 56,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 57,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 58,                  /* RBRACKET  */
  YYSYMBOL_STRUCT = 59,                    /* STRUCT  */
  YYSYMBOL_RETURN = 60,                    /* RETURN  */
  YYSYMBOL_UNION = 61,                     /* UNION  */
  YYSYMBOL_IDENTIFIER = 62,                /* IDENTIFIER  */
  YYSYMBOL_TYPENAME = 63,                  /* TYPENAME  */
  YYSYMBOL_INT_LITERAL = 64,               /* INT_LITERAL  */
  YYSYMBOL_FLOAT_LITERAL = 65,             /* FLOAT_LITERAL  */
  YYSYMBOL_STRING_LITERAL = 66,            /* STRING_LITERAL  */
  YYSYMBOL_CHAR_LITERAL = 67,              /* CHAR_LITERAL  */
  YYSYMBOL_ENUM = 68,                      /* ENUM  */
  YYSYMBOL_YYACCEPT = 69,                  /* $accept  */
  YYSYMBOL_start = 70,                     /* start  */
  YYSYMBOL_global_declaration = 71,        /* global_declaration  */
  YYSYMBOL_function_definition = 72,       /* function_definition  */
  YYSYMBOL_73_1 = 73,                      /* $@1  */
  YYSYMBOL_marker_fun_begin = 74,          /* marker_fun_begin  */
  YYSYMBOL_declaration = 75,               /* declaration  */
  YYSYMBOL_return_types = 76,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 77,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 78,            /* type_specifier  */
  YYSYMBOL_enum_specifier = 79,            /* enum_specifier  */
  YYSYMBOL_80_2 = 80,                      /* $@2  */
  YYSYMBOL_81_3 = 81,                      /* $@3  */
  YYSYMBOL_enumerator_list = 82,           /* enumerator_list  */
  YYSYMBOL_enumerator = 83,                /* enumerator  */
  YYSYMBOL_cast_type_specifier = 84,       /* cast_type_specifier  */
  YYSYMBOL_typedef_declarator_list = 85,   /* typedef_declarator_list  */
  YYSYMBOL_typedef_declarator = 86,        /* typedef_declarator  */
  YYSYMBOL_typedef_direct_declarator = 87, /* typedef_direct_declarator  */
  YYSYMBOL_init_declarator_list = 88,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 89,           /* init_declarator  */
  YYSYMBOL_declarator = 90,                /* declarator  */
  YYSYMBOL_direct_declarator = 91,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 92,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 93,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 94,          /* declaration_list  */
  YYSYMBOL_initializer = 95,               /* initializer  */
  YYSYMBOL_parameter_list = 96,            /* parameter_list  */
  YYSYMBOL_parameter_declaration = 97,     /* parameter_declaration  */
  YYSYMBOL_parameter_type_list = 98,       /* parameter_type_list  */
  YYSYMBOL_parameter_type_declarator = 99, /* parameter_type_declarator  */
  YYSYMBOL_parameter_declarator = 100,     /* parameter_declarator  */
  YYSYMBOL_parameter_direct_declarator = 101, /* parameter_direct_declarator  */
  YYSYMBOL_primary_expression = 102,       /* primary_expression  */
  YYSYMBOL_postfix_expression = 103,       /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 104, /* argument_expression_list  */
  YYSYMBOL_unary_expression = 105,         /* unary_expression  */
  YYSYMBOL_unary_operator = 106,           /* unary_operator  */
  YYSYMBOL_cast_expression = 107,          /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 108, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 109,      /* additive_expression  */
  YYSYMBOL_shift_expression = 110,         /* shift_expression  */
  YYSYMBOL_relational_expression = 111,    /* relational_expression  */
  YYSYMBOL_equality_expression = 112,      /* equality_expression  */
  YYSYMBOL_and_expression = 113,           /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 114,  /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 115,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 116,   /* logical_and_expression  */
  YYSYMBOL_117_4 = 117,                    /* $@4  */
  YYSYMBOL_logical_or_expression = 118,    /* logical_or_expression  */
  YYSYMBOL_119_5 = 119,                    /* $@5  */
  YYSYMBOL_conditional_expression = 120,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 121,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 122,      /* assignment_operator  */
  YYSYMBOL_expression = 123,               /* expression  */
  YYSYMBOL_constant_expression = 124,      /* constant_expression  */
  YYSYMBOL_struct_or_union_specifier = 125, /* struct_or_union_specifier  */
  YYSYMBOL_126_6 = 126,                    /* $@6  */
  YYSYMBOL_127_7 = 127,                    /* $@7  */
  YYSYMBOL_struct_or_union = 128,          /* struct_or_union  */
  YYSYMBOL_struct_declaration_list = 129,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 130,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 131,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 132,        /* struct_declarator  */
  YYSYMBOL_reference = 133,                /* reference  */
  YYSYMBOL_pointer = 134,                  /* pointer  */
  YYSYMBOL_short_circuited_logical_and_expression = 135, /* short_circuited_logical_and_expression  */
  YYSYMBOL_136_8 = 136,                    /* $@8  */
  YYSYMBOL_short_circuited_logical_or_expression = 137, /* short_circuited_logical_or_expression  */
  YYSYMBOL_138_9 = 138,                    /* $@9  */
  YYSYMBOL_short_circuited_conditional_expression = 139, /* short_circuited_conditional_expression  */
  YYSYMBOL_short_circuited_assignment_expression = 140, /* short_circuited_assignment_expression  */
  YYSYMBOL_short_circuited_expression = 141, /* short_circuited_expression  */
  YYSYMBOL_statement = 142,                /* statement  */
  YYSYMBOL_labeled_statement = 143,        /* labeled_statement  */
  YYSYMBOL_144_10 = 144,                   /* $@10  */
  YYSYMBOL_145_11 = 145,                   /* $@11  */
  YYSYMBOL_compound_statement = 146,       /* compound_statement  */
  YYSYMBOL_147_12 = 147,                   /* $@12  */
  YYSYMBOL_marker = 148,                   /* marker  */
  YYSYMBOL_statement_list = 149,           /* statement_list  */
  YYSYMBOL_expression_statement = 150,     /* expression_statement  */
  YYSYMBOL_selection_statement = 151,      /* selection_statement  */
  YYSYMBOL_152_13 = 152,                   /* $@13  */
  YYSYMBOL_153_14 = 153,                   /* $@14  */
  YYSYMBOL_if_expression = 154,            /* if_expression  */
  YYSYMBOL_155_15 = 155,                   /* $@15  */
  YYSYMBOL_iteration_statement = 156,      /* iteration_statement  */
  YYSYMBOL_157_16 = 157,                   /* $@16  */
  YYSYMBOL_158_17 = 158,                   /* $@17  */
  YYSYMBOL_159_18 = 159,                   /* $@18  */
  YYSYMBOL_160_19 = 160,                   /* $@19  */
  YYSYMBOL_161_20 = 161,                   /* $@20  */
  YYSYMBOL_162_21 = 162,                   /* $@21  */
  YYSYMBOL_163_22 = 163,                   /* $@22  */
  YYSYMBOL_begin_marker = 164,             /* begin_marker  */
  YYSYMBOL_jump_statement = 165            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 268 "parser.y"

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

    

#line 493 "parser.tab.c"

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
#define YYLAST   761

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  69
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  97
/* YYNRULES -- Number of rules.  */
#define YYNRULES  220
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  378

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   323


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
      65,    66,    67,    68
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   579,   579,   601,   629,   632,   639,   639,   710,   716,
     720,   918,   946,   950,   951,   958,   962,   966,   970,   974,
     977,   992,   999,   999,  1011,  1011,  1028,  1040,  1041,  1045,
    1051,  1066,  1069,  1078,  1082,  1089,  1094,  1100,  1105,  1110,
    1118,  1132,  1136,  1144,  1145,  1154,  1159,  1164,  1171,  1176,
    1179,  1187,  1196,  1211,  1225,  1231,  1238,  1242,  1249,  1273,
    1291,  1296,  1302,  1311,  1315,  1321,  1326,  1334,  1363,  1368,
    1376,  1387,  1401,  1406,  1411,  1418,  1423,  1427,  1434,  1445,
    1502,  1513,  1524,  1535,  1548,  1558,  1565,  1566,  1643,  1700,
    1910,  1975,  2032,  2036,  2043,  2049,  2058,  2059,  2063,  2067,
    2071,  2089,  2106,  2107,  2108,  2109,  2110,  2111,  2115,  2116,
    2146,  2147,  2151,  2155,  2162,  2163,  2167,  2176,  2177,  2209,
    2242,  2243,  2247,  2251,  2255,  2262,  2263,  2267,  2274,  2275,
    2282,  2283,  2290,  2291,  2298,  2299,  2299,  2357,  2358,  2358,
    2414,  2420,  2421,  2466,  2470,  2471,  2483,  2491,  2491,  2546,
    2546,  2582,  2603,  2604,  2608,  2609,  2610,  2615,  2666,  2670,
    2676,  2684,  2690,  2693,  2703,  2704,  2704,  2746,  2747,  2747,
    2783,  2789,  2790,  2836,  2837,  2852,  2855,  2858,  2861,  2864,
    2867,  2870,  2880,  2891,  2891,  2926,  2926,  2957,  2981,  2981,
    2996,  3002,  3007,  3020,  3029,  3033,  3039,  3046,  3046,  3063,
    3063,  3144,  3144,  3177,  3177,  3215,  3215,  3246,  3248,  3246,
    3278,  3278,  3320,  3331,  3320,  3379,  3386,  3401,  3411,  3421,
    3434
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
  "LEFT_SHIFT", "RIGHT_SHIFT", "ELLIPSIS", "LOGICAL_AND", "LOGICAL_OR",
  "EQ", "NEQ", "LE", "GE", "PLUS", "MINUS", "STAR", "DIVIDE", "MOD",
  "ASSIGN", "LT", "GT", "LOGICAL_NOT", "BIT_AND", "BIT_OR", "BIT_XOR",
  "BIT_NOT", "DOT", "COLON", "SEMICOLON", "COMMA", "LBRACE", "RBRACE",
  "LPAREN", "RPAREN", "LBRACKET", "RBRACKET", "STRUCT", "RETURN", "UNION",
  "IDENTIFIER", "TYPENAME", "INT_LITERAL", "FLOAT_LITERAL",
  "STRING_LITERAL", "CHAR_LITERAL", "ENUM", "$accept", "start",
  "global_declaration", "function_definition", "$@1", "marker_fun_begin",
  "declaration", "return_types", "declaration_specifiers",
  "type_specifier", "enum_specifier", "$@2", "$@3", "enumerator_list",
  "enumerator", "cast_type_specifier", "typedef_declarator_list",
  "typedef_declarator", "typedef_direct_declarator",
  "init_declarator_list", "init_declarator", "declarator",
  "direct_declarator", "fun_declarator", "fun_direct_declarator",
  "declaration_list", "initializer", "parameter_list",
  "parameter_declaration", "parameter_type_list",
  "parameter_type_declarator", "parameter_declarator",
  "parameter_direct_declarator", "primary_expression",
  "postfix_expression", "argument_expression_list", "unary_expression",
  "unary_operator", "cast_expression", "multiplicative_expression",
  "additive_expression", "shift_expression", "relational_expression",
  "equality_expression", "and_expression", "exclusive_or_expression",
  "inclusive_or_expression", "logical_and_expression", "$@4",
  "logical_or_expression", "$@5", "conditional_expression",
  "assignment_expression", "assignment_operator", "expression",
  "constant_expression", "struct_or_union_specifier", "$@6", "$@7",
  "struct_or_union", "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "reference", "pointer",
  "short_circuited_logical_and_expression", "$@8",
  "short_circuited_logical_or_expression", "$@9",
  "short_circuited_conditional_expression",
  "short_circuited_assignment_expression", "short_circuited_expression",
  "statement", "labeled_statement", "$@10", "$@11", "compound_statement",
  "$@12", "marker", "statement_list", "expression_statement",
  "selection_statement", "$@13", "$@14", "if_expression", "$@15",
  "iteration_statement", "$@16", "$@17", "$@18", "$@19", "$@20", "$@21",
  "$@22", "begin_marker", "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-294)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-211)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     165,  -294,  -294,  -294,  -294,   489,   370,  -294,  -294,  -294,
     -11,   188,  -294,  -294,  -294,    -8,  -294,  -294,  -294,  -294,
       7,  -294,   -28,  -294,   -14,  -294,  -294,    24,  -294,  -294,
      79,   -19,    85,  -294,    29,   145,  -294,  -294,     2,    10,
    -294,    51,    52,  -294,   131,  -294,    65,   149,    70,  -294,
    -294,    88,   111,     2,   157,   -36,  -294,    79,   630,   249,
     -15,  -294,   145,   145,  -294,   489,  -294,   141,  -294,   -28,
     151,    65,   178,   135,  -294,    70,  -294,  -294,    80,    55,
    -294,   169,   171,  -294,   662,  -294,   694,   694,  -294,  -294,
    -294,  -294,  -294,  -294,   399,  -294,  -294,  -294,  -294,  -294,
    -294,  -294,     1,   190,   630,  -294,   201,   186,   215,    -2,
     227,   189,   199,   202,   220,   244,  -294,  -294,  -294,    24,
      87,  -294,   222,   243,   225,    79,   471,  -294,   489,   246,
    -294,   251,   630,    70,  -294,   154,    80,  -294,  -294,   256,
      48,    48,   422,  -294,  -294,  -294,   399,  -294,   630,  -294,
    -294,   275,   262,  -294,    92,  -294,  -294,   257,   258,   531,
     630,  -294,   630,  -294,  -294,   630,   630,   630,   630,   630,
     630,   630,   630,   630,   630,   630,   630,   630,   630,   630,
     630,  -294,  -294,  -294,   370,  -294,  -294,  -294,  -294,  -294,
    -294,   211,  -294,  -294,  -294,   483,  -294,  -294,  -294,  -294,
    -294,  -294,   265,   465,   256,   256,  -294,  -294,   268,  -294,
     630,   630,  -294,  -294,  -294,  -294,    94,  -294,    62,  -294,
    -294,  -294,  -294,   201,   201,   186,   186,   215,   215,   215,
     215,    -2,    -2,   227,   189,   199,   630,   630,  -294,   165,
    -294,    79,  -294,  -294,  -294,    99,  -294,  -294,  -294,   630,
    -294,  -294,   202,   220,  -294,   159,   278,  -294,  -294,  -294,
     274,   272,   273,  -294,  -294,  -294,   279,   283,   280,   132,
     286,   287,  -294,   566,   298,  -294,   213,  -294,  -294,  -294,
     296,  -294,  -294,   343,  -294,  -294,  -294,   630,   598,   297,
    -294,   299,  -294,  -294,   630,  -294,  -294,   346,   314,  -294,
     218,  -294,  -294,  -294,   346,  -294,   190,   202,   337,   338,
    -294,  -294,   102,  -294,   630,   346,   630,   320,   327,   328,
    -294,  -294,  -294,   346,  -294,   346,   630,  -294,  -294,   630,
    -294,   598,   121,  -294,   329,   323,  -294,  -294,  -294,  -294,
    -294,   630,   630,  -294,   346,   324,  -294,   375,   330,   346,
     346,   346,   202,   337,  -294,   331,  -294,   346,   333,   346,
    -294,  -294,  -294,   346,   630,  -294,  -294,  -294,  -294,   123,
     630,  -294,   129,  -294,   341,   346,  -294,  -294
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    17,    18,    16,    15,     0,     0,   152,   153,    20,
       0,     0,     2,     4,     5,     0,    12,    13,    21,    19,
       0,    14,     0,    22,    26,     1,     3,   162,   161,     9,
       0,    48,     0,    41,    43,    47,     8,    57,     0,     0,
     149,   151,    37,    38,     0,    33,    36,     0,     0,    24,
     163,    48,     0,     0,     0,     0,    10,     0,     0,     0,
       0,     6,    46,    45,    56,   156,   147,     0,    11,     0,
       0,    35,    29,     0,    28,     0,    49,    59,     0,     0,
      64,     0,     0,    42,     0,    84,     0,     0,   104,   105,
     103,   107,   102,   106,     0,    79,    80,    81,    83,    82,
      44,    86,    96,   108,     0,   110,   114,   117,   120,   125,
     128,   130,   132,   134,   137,   140,   141,    63,    55,    70,
       0,    68,     0,     0,     0,     0,     0,   154,   156,     0,
      34,     0,     0,     0,    23,     0,     0,    75,    67,    74,
       0,     0,     0,    58,    51,    52,     0,   100,     0,    97,
      98,    31,     0,   144,     0,    92,    93,     0,     0,     0,
       0,   143,     0,   108,    99,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   135,   138,    71,     0,    54,    50,    53,   188,     7,
     160,     0,   158,   150,   155,     0,    40,    39,   146,    30,
      27,    25,     0,     0,    73,    72,    66,    65,     0,    32,
       0,     0,    85,    91,    90,    88,     0,    94,     0,   142,
     111,   112,   113,   115,   116,   118,   119,   123,   124,   121,
     122,   126,   127,   129,   131,   133,     0,     0,    69,    62,
     157,     0,   148,    76,    78,     0,   101,   109,   145,     0,
      89,    87,   136,   139,    60,     0,     0,   159,    77,    95,
       0,     0,     0,   215,   215,   215,     0,     0,     0,     0,
       0,     0,   194,     0,    79,    61,     0,   191,   175,   176,
     190,   177,   178,   196,   179,   180,   181,     0,     0,     0,
     207,     0,   218,   217,     0,   185,   183,     0,     0,   219,
       0,   190,   195,   189,     0,   197,   108,   164,   167,   170,
     171,   173,     0,   215,     0,     0,     0,   199,     0,     0,
     187,   216,   220,     0,   192,     0,     0,   165,   168,     0,
     201,     0,     0,   208,   205,     0,   190,   190,   182,   198,
     172,     0,     0,   174,     0,   212,   203,     0,     0,     0,
       0,     0,   166,   169,   202,     0,   215,     0,     0,     0,
     200,   186,   184,     0,     0,   204,   190,   206,   211,     0,
       0,   215,     0,   213,     0,     0,   209,   214
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -294,  -294,   382,  -294,  -294,  -294,  -210,     5,  -294,     3,
    -294,  -294,  -294,   321,   267,  -294,  -294,   326,   351,  -294,
     350,   -24,    60,  -294,   376,  -294,  -294,  -294,   276,   206,
     230,   284,   126,  -294,  -294,  -294,   -84,  -294,   -87,   105,
     106,    63,   130,   238,   240,   242,  -214,   193,  -294,  -294,
    -294,   300,   -54,   128,   -93,  -294,  -294,  -294,  -294,  -294,
     311,  -119,  -294,   204,   -65,    -3,    98,  -294,  -294,  -294,
    -294,   113,  -293,  -185,  -294,  -294,  -294,   322,  -294,  -292,
    -294,  -270,  -294,  -294,  -294,  -294,  -294,  -294,  -294,  -294,
    -294,  -294,  -294,  -294,  -294,  -250,  -294
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,    11,    12,    13,   124,    61,    14,   119,    16,    17,
      18,    48,    75,    73,    74,   152,    44,    45,    46,    32,
      33,    34,    35,    36,    37,   256,   100,    79,    80,   120,
     121,   138,   139,   101,   102,   216,   103,   104,   105,   106,
     107,   108,   109,   110,   111,   112,   113,   114,   236,   115,
     237,   116,   153,   162,   276,   199,    19,   128,    65,    20,
     126,   127,   191,   192,    38,    53,   308,   341,   309,   342,
     310,   311,   312,   277,   278,   319,   318,   279,   239,   304,
     280,   281,   282,   325,   335,   283,   344,   284,   357,   348,
     315,   347,   355,   356,   375,   289,   285
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     147,   154,   149,   150,   117,    15,    52,   194,    21,   323,
      27,    22,    39,   140,   290,   291,    15,   164,   313,    47,
     163,   332,   252,   334,    50,   155,   156,   157,    81,   254,
      27,    82,   172,   173,    42,    43,    54,    28,    55,    49,
     174,   175,    23,    29,   350,   351,   275,    30,   163,   122,
     158,    24,   123,   154,    31,   154,   159,    30,   160,    78,
      40,   345,    27,   331,    51,    30,    47,   218,   125,    41,
      58,   140,    31,   307,   370,   141,   194,   372,   220,   221,
     222,   163,   163,   163,   163,   163,   163,   163,   163,   163,
     163,   163,   163,   163,   163,   163,   163,   151,    62,    63,
     307,   190,   307,   136,    66,   217,   364,   142,   219,    67,
     137,   143,   320,    63,   211,   307,   183,    27,    27,   324,
     251,   373,    70,   247,    28,    28,   163,   352,   307,   125,
     333,   125,    72,   141,    30,   136,    56,    57,   338,   184,
     339,    51,   137,   185,   211,    55,   249,    78,   212,   208,
     250,   184,   163,   163,   329,   258,   307,   248,   330,   354,
       1,     2,     3,     4,   360,   361,   362,    76,     1,     2,
       3,     4,   365,   329,   367,   211,     5,   346,   368,   371,
     300,   329,    68,    69,     5,   374,     6,   133,    25,   134,
     377,     1,     2,     3,     4,   259,   295,    27,   125,   296,
      59,   317,    60,   306,    28,   129,   133,     5,   201,     6,
      29,    42,    43,    77,    30,   131,     7,   190,     8,   132,
       9,    51,   168,   169,     7,    10,     8,   144,     9,   145,
     306,   161,   306,    10,   178,   227,   228,   229,   230,   165,
     166,   167,   170,   171,   255,   306,   179,     7,   180,     8,
     181,     9,     1,     2,     3,     4,    10,   163,   163,   176,
     177,   255,   240,   241,   302,   211,   204,   205,     5,   322,
     211,   369,   340,   223,   224,   182,   225,   226,   188,   260,
     186,     1,     2,     3,     4,   261,   306,   262,   263,   264,
     265,   266,   267,   268,   269,   270,    84,     5,   271,     6,
      85,   187,    86,    87,   196,   118,   231,   232,     7,   197,
       8,   203,     9,   209,    88,    89,    90,    10,   210,   213,
     214,   243,    91,    92,   246,   286,    93,   287,   288,   272,
     292,   188,  -193,    94,   293,   294,   297,     7,   273,     8,
     274,     9,    96,    97,    98,    99,    10,   260,   301,   298,
     303,   305,   314,   261,   316,   262,   263,   264,   265,   266,
     267,   268,   269,   270,    84,   321,   271,   327,    85,   328,
      86,    87,   211,     1,     2,     3,     4,   336,   337,   349,
    -210,   329,    88,    89,    90,   358,   359,   363,   366,     5,
      91,    92,   376,    26,    93,   130,   135,   272,    71,   188,
     200,    94,     1,     2,     3,     4,   273,    83,   274,   245,
      96,    97,    98,    99,   238,    64,   233,    84,   207,   234,
     202,    85,   235,    86,    87,     1,     2,     3,     4,     7,
     253,     8,   198,     9,   326,    88,    89,    90,    10,   195,
     353,     5,   343,    91,    92,   257,   189,    93,     0,     0,
       0,   206,     0,     0,    94,     0,     0,     0,     7,     0,
       8,    95,     9,    96,    97,    98,    99,    10,     1,     2,
       3,     4,     0,     0,     1,     2,     3,     4,     0,     0,
       0,     7,     0,     8,     5,     9,     1,     2,     3,     4,
      10,     0,     1,     2,     3,     4,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   244,     0,     0,     7,   193,     8,     0,     9,     0,
       7,     0,     8,    10,     9,     0,     0,   242,     0,    10,
       0,     0,     7,     0,     8,     0,     9,     0,     7,    84,
       8,    10,     9,    85,     0,    86,    87,    10,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    88,    89,    90,
       0,     0,     0,     0,     0,    91,    92,     0,     0,    93,
       0,     0,     0,     0,    84,     0,    94,   215,    85,     0,
      86,    87,     0,    95,     0,    96,    97,    98,    99,     0,
       0,     0,    88,    89,    90,     0,     0,     0,     0,     0,
      91,    92,     0,     0,    93,     0,    84,   299,     0,     0,
      85,    94,    86,    87,     0,     0,     0,     0,    95,     0,
      96,    97,    98,    99,    88,    89,    90,     0,     0,     0,
       0,     0,    91,    92,     0,     0,    93,     0,    84,   272,
       0,     0,    85,    94,    86,    87,     0,     0,     0,     0,
      95,     0,    96,    97,    98,    99,    88,    89,    90,     0,
       0,     0,     0,     0,    91,    92,     0,     0,    93,     0,
      84,     0,     0,     0,    85,    94,    86,    87,     0,     0,
       0,     0,    95,     0,    96,    97,    98,    99,    88,    89,
      90,     0,     0,     0,     0,     0,    91,    92,     0,     0,
      93,     0,    84,     0,     0,     0,    85,   146,    86,    87,
       0,     0,     0,     0,    95,     0,    96,    97,    98,    99,
      88,    89,    90,     0,     0,     0,     0,     0,    91,    92,
       0,     0,    93,     0,     0,     0,     0,     0,     0,   148,
       0,     0,     0,     0,     0,     0,    95,     0,    96,    97,
      98,    99
};

static const yytype_int16 yycheck[] =
{
      84,    94,    86,    87,    58,     0,    30,   126,     5,   301,
      38,     6,    15,    78,   264,   265,    11,   104,   288,    22,
     104,   314,   236,   316,    27,    24,    25,    26,    64,   239,
      38,    67,    34,    35,    62,    63,    55,    45,    57,    53,
      42,    43,    53,    51,   336,   337,   256,    55,   132,    64,
      49,    62,    67,   146,    62,   148,    55,    55,    57,    54,
      53,   331,    38,   313,    62,    55,    69,   160,    65,    62,
      41,   136,    62,   287,   366,    78,   195,   370,   165,   166,
     167,   165,   166,   167,   168,   169,   170,   171,   172,   173,
     174,   175,   176,   177,   178,   179,   180,    94,    38,    39,
     314,   125,   316,    55,    53,   159,   356,    52,   162,    57,
      62,    56,   297,    53,    52,   329,   119,    38,    38,   304,
      58,   371,    57,   210,    45,    45,   210,   341,   342,   126,
     315,   128,    62,   136,    55,    55,    51,    52,   323,    52,
     325,    62,    62,    56,    52,    57,    52,   142,    56,   146,
      56,    52,   236,   237,    52,    56,   370,   211,    56,   344,
       3,     4,     5,     6,   349,   350,   351,    56,     3,     4,
       5,     6,   357,    52,   359,    52,    19,    56,   363,    56,
     273,    52,    51,    52,    19,    56,    21,    52,     0,    54,
     375,     3,     4,     5,     6,   249,    64,    38,   195,    67,
      55,   294,    57,   287,    45,    64,    52,    19,    54,    21,
      51,    62,    63,    56,    55,    64,    59,   241,    61,    41,
      63,    62,    36,    37,    59,    68,    61,    58,    63,    58,
     314,    41,   316,    68,    45,   172,   173,   174,   175,    38,
      39,    40,    27,    28,   239,   329,    47,    59,    46,    61,
      30,    63,     3,     4,     5,     6,    68,   341,   342,    32,
      33,   256,    51,    52,    51,    52,   140,   141,    19,    51,
      52,   364,   326,   168,   169,    31,   170,   171,    53,     1,
      58,     3,     4,     5,     6,     7,   370,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      22,    58,    24,    25,    58,    56,   176,   177,    59,    58,
      61,    55,    63,    38,    36,    37,    38,    68,    56,    62,
      62,    56,    44,    45,    56,    51,    48,    55,    55,    51,
      51,    53,    54,    55,    51,    55,    50,    59,    60,    61,
      62,    63,    64,    65,    66,    67,    68,     1,    50,    62,
      54,     8,    55,     7,    55,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    51,    20,    30,    22,    31,
      24,    25,    52,     3,     4,     5,     6,    50,    50,    56,
      56,    52,    36,    37,    38,    10,    56,    56,    55,    19,
      44,    45,    51,    11,    48,    69,    75,    51,    47,    53,
     133,    55,     3,     4,     5,     6,    60,    57,    62,   203,
      64,    65,    66,    67,   184,    39,   178,    18,   142,   179,
     136,    22,   180,    24,    25,     3,     4,     5,     6,    59,
     237,    61,   132,    63,   306,    36,    37,    38,    68,   128,
     342,    19,   329,    44,    45,   241,   124,    48,    -1,    -1,
      -1,    29,    -1,    -1,    55,    -1,    -1,    -1,    59,    -1,
      61,    62,    63,    64,    65,    66,    67,    68,     3,     4,
       5,     6,    -1,    -1,     3,     4,     5,     6,    -1,    -1,
      -1,    59,    -1,    61,    19,    63,     3,     4,     5,     6,
      68,    -1,     3,     4,     5,     6,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    56,    -1,    -1,    59,    54,    61,    -1,    63,    -1,
      59,    -1,    61,    68,    63,    -1,    -1,    54,    -1,    68,
      -1,    -1,    59,    -1,    61,    -1,    63,    -1,    59,    18,
      61,    68,    63,    22,    -1,    24,    25,    68,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    36,    37,    38,
      -1,    -1,    -1,    -1,    -1,    44,    45,    -1,    -1,    48,
      -1,    -1,    -1,    -1,    18,    -1,    55,    56,    22,    -1,
      24,    25,    -1,    62,    -1,    64,    65,    66,    67,    -1,
      -1,    -1,    36,    37,    38,    -1,    -1,    -1,    -1,    -1,
      44,    45,    -1,    -1,    48,    -1,    18,    51,    -1,    -1,
      22,    55,    24,    25,    -1,    -1,    -1,    -1,    62,    -1,
      64,    65,    66,    67,    36,    37,    38,    -1,    -1,    -1,
      -1,    -1,    44,    45,    -1,    -1,    48,    -1,    18,    51,
      -1,    -1,    22,    55,    24,    25,    -1,    -1,    -1,    -1,
      62,    -1,    64,    65,    66,    67,    36,    37,    38,    -1,
      -1,    -1,    -1,    -1,    44,    45,    -1,    -1,    48,    -1,
      18,    -1,    -1,    -1,    22,    55,    24,    25,    -1,    -1,
      -1,    -1,    62,    -1,    64,    65,    66,    67,    36,    37,
      38,    -1,    -1,    -1,    -1,    -1,    44,    45,    -1,    -1,
      48,    -1,    18,    -1,    -1,    -1,    22,    55,    24,    25,
      -1,    -1,    -1,    -1,    62,    -1,    64,    65,    66,    67,
      36,    37,    38,    -1,    -1,    -1,    -1,    -1,    44,    45,
      -1,    -1,    48,    -1,    -1,    -1,    -1,    -1,    -1,    55,
      -1,    -1,    -1,    -1,    -1,    -1,    62,    -1,    64,    65,
      66,    67
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    21,    59,    61,    63,
      68,    70,    71,    72,    75,    76,    77,    78,    79,   125,
     128,    78,    76,    53,    62,     0,    71,    38,    45,    51,
      55,    62,    88,    89,    90,    91,    92,    93,   133,   134,
      53,    62,    62,    63,    85,    86,    87,   134,    80,    53,
     134,    62,    90,   134,    55,    57,    51,    52,    41,    55,
      57,    74,    91,    91,    93,   127,    53,    57,    51,    52,
      57,    87,    62,    82,    83,    81,    56,    56,    76,    96,
      97,    64,    67,    89,    18,    22,    24,    25,    36,    37,
      38,    44,    45,    48,    55,    62,    64,    65,    66,    67,
      95,   102,   103,   105,   106,   107,   108,   109,   110,   111,
     112,   113,   114,   115,   116,   118,   120,   121,    56,    76,
      98,    99,    64,    67,    73,    78,   129,   130,   126,    64,
      86,    64,    41,    52,    54,    82,    55,    62,   100,   101,
     133,   134,    52,    56,    58,    58,    55,   105,    55,   105,
     105,    78,    84,   121,   123,    24,    25,    26,    49,    55,
      57,    41,   122,   105,   107,    38,    39,    40,    36,    37,
      27,    28,    34,    35,    42,    43,    32,    33,    45,    47,
      46,    30,    31,   134,    52,    56,    58,    58,    53,   146,
      90,   131,   132,    54,   130,   129,    58,    58,   120,   124,
      83,    54,   100,    55,   101,   101,    29,    97,    78,    38,
      56,    52,    56,    62,    62,    56,   104,   121,   123,   121,
     107,   107,   107,   108,   108,   109,   109,   110,   110,   110,
     110,   111,   111,   112,   113,   114,   117,   119,    99,   147,
      51,    52,    54,    56,    56,    98,    56,   107,   121,    52,
      56,    58,   115,   116,    75,    76,    94,   132,    56,   121,
       1,     7,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    20,    51,    60,    62,    75,   123,   142,   143,   146,
     149,   150,   151,   154,   156,   165,    51,    55,    55,   164,
     164,   164,    51,    51,    55,    64,    67,    50,    62,    51,
     123,    50,    51,    54,   148,     8,   105,   115,   135,   137,
     139,   140,   141,   150,    55,   159,    55,   123,   145,   144,
     142,    51,    51,   148,   142,   152,   122,    30,    31,    52,
      56,   164,   141,   142,   141,   153,    50,    50,   142,   142,
     121,   136,   138,   140,   155,   150,    56,   160,   158,    56,
     148,   148,   115,   135,   142,   161,   162,   157,    10,    56,
     142,   142,   142,    56,   164,   142,    55,   142,   142,   123,
     148,    56,   141,   164,    56,   163,    51,   142
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    69,    70,    70,    71,    71,    73,    72,    74,    75,
      75,    75,    76,    77,    77,    78,    78,    78,    78,    78,
      78,    78,    80,    79,    81,    79,    79,    82,    82,    83,
      83,    84,    84,    85,    85,    86,    86,    87,    87,    87,
      87,    88,    88,    89,    89,    90,    90,    90,    91,    91,
      91,    91,    91,    91,    91,    91,    92,    92,    93,    93,
      94,    94,    94,    95,    96,    96,    96,    97,    98,    98,
      99,    99,   100,   100,   100,   101,   101,   101,   101,   102,
     102,   102,   102,   102,   102,   102,   103,   103,   103,   103,
     103,   103,   103,   103,   104,   104,   105,   105,   105,   105,
     105,   105,   106,   106,   106,   106,   106,   106,   107,   107,
     108,   108,   108,   108,   109,   109,   109,   110,   110,   110,
     111,   111,   111,   111,   111,   112,   112,   112,   113,   113,
     114,   114,   115,   115,   116,   117,   116,   118,   119,   118,
     120,   121,   121,   122,   123,   123,   124,   126,   125,   127,
     125,   125,   128,   128,   129,   129,   129,   130,   131,   131,
     132,   133,   134,   134,   135,   136,   135,   137,   138,   137,
     139,   140,   140,   141,   141,   142,   142,   142,   142,   142,
     142,   142,   143,   144,   143,   145,   143,   143,   147,   146,
     148,   149,   149,   149,   150,   150,   151,   152,   151,   153,
     151,   155,   154,   157,   156,   158,   156,   159,   160,   156,
     161,   156,   162,   163,   156,   164,   165,   165,   165,   165,
     165
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     0,     5,     0,     2,
       3,     4,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     1,     0,     5,     0,     6,     2,     3,     1,     1,
       3,     1,     2,     1,     3,     2,     1,     1,     1,     4,
       4,     1,     3,     1,     3,     2,     2,     1,     1,     3,
       4,     4,     4,     4,     4,     3,     2,     1,     4,     3,
       1,     2,     0,     1,     1,     3,     3,     2,     1,     3,
       1,     2,     2,     2,     1,     1,     3,     4,     3,     1,
       1,     1,     1,     1,     1,     3,     1,     4,     3,     4,
       3,     3,     2,     2,     1,     3,     1,     2,     2,     2,
       2,     4,     1,     1,     1,     1,     1,     1,     1,     4,
       1,     3,     3,     3,     1,     3,     3,     1,     3,     3,
       1,     3,     3,     3,     3,     1,     3,     3,     1,     3,
       1,     3,     1,     3,     1,     0,     4,     1,     0,     4,
       1,     1,     3,     1,     1,     3,     1,     0,     6,     0,
       5,     2,     1,     1,     1,     2,     0,     3,     1,     3,
       1,     1,     1,     2,     1,     0,     4,     1,     0,     4,
       1,     1,     3,     1,     3,     1,     1,     1,     1,     1,
       1,     2,     4,     0,     6,     0,     6,     3,     0,     5,
       0,     1,     3,     0,     1,     2,     1,     0,     4,     0,
       6,     0,     6,     0,     7,     0,     7,     0,     0,    11,
       0,     8,     0,     0,    12,     0,     3,     2,     2,     2,
       3
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
#line 579 "parser.y"
                                                                       {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
       
       // Debug output
       cout << "Start rule: Global declaration has " << (yyval.typeinfo)->code.size() << " TAC instructions\n";
      
        // Open the file for writing
        ofstream tac_file(output_tac_filename);
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : (yyval.typeinfo)->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code written to " << output_tac_filename << "\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }
        
    }
#line 1847 "parser.tab.c"
    break;

  case 3: /* start: start global_declaration  */
#line 601 "parser.y"
                                                                                {
        // Append $2->code to $1->code
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-1].typeinfo)->code.begin(), (yyvsp[-1].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());

        // append this also to final.tac

       ofstream tac_file(output_tac_filename, ios::app);
        if (tac_file.is_open()) {
            // simply print code
            for(auto instr : (yyvsp[0].typeinfo)->code){
                tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file.close();
            cout << "TAC code appended to " << output_tac_filename << "\n";
        } else {
            cerr << "Failed to open file for TAC output\n";
        }

        delete (yyvsp[0].typeinfo);
    }
#line 1875 "parser.tab.c"
    break;

  case 4: /* global_declaration: function_definition  */
#line 629 "parser.y"
                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 1883 "parser.tab.c"
    break;

  case 5: /* global_declaration: declaration  */
#line 632 "parser.y"
                          {
        (yyval.typeinfo) = new TypeInfo();
        // kyunki global declaration ka koi 3AC generate nahi hota
    }
#line 1892 "parser.tab.c"
    break;

  case 6: /* $@1: %empty  */
#line 639 "parser.y"
                                                       {
        // Generate function begin instruction
        string mangled_name = mangle_function_name((yyvsp[-1].declinfo)->name, (yyvsp[-1].declinfo)->paramTypes ? *(yyvsp[-1].declinfo)->paramTypes : vector<TypeInfo>(), (yyvsp[-1].declinfo)->isVariadic);
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
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes, (yyvsp[-1].declinfo)->isVariadic);
			cout << "Function definition: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}

    }
#line 1926 "parser.tab.c"
    break;

  case 7: /* function_definition: return_types fun_declarator marker_fun_begin $@1 compound_statement  */
#line 667 "parser.y"
                         {               /* e.g., int f() { ... } */
		
        (yyval.typeinfo) = new TypeInfo();

        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        
        for (TACInstruction* instr : (yyvsp[0].typeinfo)->code) {
            (yyval.typeinfo)->code.push_back(instr);
        }
        
        // Backpatch any remaining next_list jumps to the function end
        if (!(yyvsp[0].typeinfo)->next_list.empty()) {
            TACOperand* end_label = new_label(0);
            backpatch((yyvsp[0].typeinfo)->next_list, end_label);
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
		
        delete (yyvsp[-4].typeinfo);
        delete (yyvsp[-3].declinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 1970 "parser.tab.c"
    break;

  case 8: /* marker_fun_begin: %empty  */
#line 710 "parser.y"
                  {
        (yyval.typeinfo) = new TypeInfo();//naya
    }
#line 1978 "parser.tab.c"
    break;

  case 9: /* declaration: return_types SEMICOLON  */
#line 716 "parser.y"
                                 { 
        (yyval.typeinfo) = new TypeInfo();
        delete (yyvsp[-1].typeinfo); 
    }
#line 1987 "parser.tab.c"
    break;

  case 10: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 720 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Check if this is a function pointer declaration
			if (declInfo->isFunction && declInfo->pointerLevel > 0) {
				// This is a function pointer: e.g., int (*fp)(int, float)
				combinedType.isFunctionPointer = true;
				combinedType.pointerLevel = 0; // Function pointers don't use pointerLevel
				combinedType.returnType = new TypeInfo(*(yyvsp[-2].typeinfo)); // Return type is the base type
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
			

            (yyval.typeinfo) = new TypeInfo();
            combinedType.result = new_identifier(mangle_variable_name(declInfo->name, current_scope_level, current_function_name, current_function_signature));
            (yyval.typeinfo)->code = vector<TACInstruction*>();

                        
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
                    (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), declInfo->initType->code.begin(), declInfo->initType->code.end());
                    
                    // Take address of the initializer
                    TACOperand* ref_var = new_identifier(mangle_variable_name(declInfo->name, current_scope_level, current_function_name, current_function_signature));
                    TACInstruction* addr_inst = emit(TAC_OPERATOR_ADDR_OF, ref_var, declInfo->initType->result, new_empty_var(), 0);
                    (yyval.typeinfo)->code.push_back(addr_inst);
                    
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
#line 2190 "parser.tab.c"
    break;

  case 11: /* declaration: TYPEDEF return_types typedef_declarator_list SEMICOLON  */
#line 918 "parser.y"
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
#line 2218 "parser.tab.c"
    break;

  case 12: /* return_types: declaration_specifiers  */
#line 946 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2224 "parser.tab.c"
    break;

  case 13: /* declaration_specifiers: type_specifier  */
#line 950 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2230 "parser.tab.c"
    break;

  case 14: /* declaration_specifiers: STATIC type_specifier  */
#line 951 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 2239 "parser.tab.c"
    break;

  case 15: /* type_specifier: VOID  */
#line 958 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 2248 "parser.tab.c"
    break;

  case 16: /* type_specifier: CHAR  */
#line 962 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 2257 "parser.tab.c"
    break;

  case 17: /* type_specifier: INT  */
#line 966 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 2266 "parser.tab.c"
    break;

  case 18: /* type_specifier: FLOAT  */
#line 970 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 2275 "parser.tab.c"
    break;

  case 19: /* type_specifier: struct_or_union_specifier  */
#line 974 "parser.y"
                                { 
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 2283 "parser.tab.c"
    break;

  case 20: /* type_specifier: TYPENAME  */
#line 977 "parser.y"
               {
        // This identifier is a typedef name (verified by lexer)
        TypeInfo* typedef_type = lookup_typedef(*(yyvsp[0].sval));
        if (typedef_type) {
            // It's a typedef - use the aliased type
            (yyval.typeinfo) = new TypeInfo(*typedef_type);
            cout << "Using typedef: " << *(yyvsp[0].sval) << " -> " << (yyval.typeinfo)->toString() << "\n";
        } else {
            // Should not happen since lexer verified it, but handle gracefully
            type_error("Unknown type name: " + *(yyvsp[0].sval));
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
        }
        delete (yyvsp[0].sval);
    }
#line 2303 "parser.tab.c"
    break;

  case 21: /* type_specifier: enum_specifier  */
#line 992 "parser.y"
                     {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int"; // Enums are treated as int
    }
#line 2312 "parser.tab.c"
    break;

  case 22: /* $@2: %empty  */
#line 999 "parser.y"
                  {
        // Start of anonymous enum
        current_enum_value = 0;
    }
#line 2321 "parser.tab.c"
    break;

  case 23: /* enum_specifier: ENUM LBRACE $@2 enumerator_list RBRACE  */
#line 1002 "parser.y"
                             {
        // Anonymous enum completed
        insert_enum("", current_scope_level);
        
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";  // Enums are int type
        (yyval.typeinfo)->pointerLevel = 0;
        (yyval.typeinfo)->isArray = false;
    }
#line 2335 "parser.tab.c"
    break;

  case 24: /* $@3: %empty  */
#line 1011 "parser.y"
                             {
        // Named enum definition
        // Check if this enum name is already defined in current scope
        if (is_enum_defined(*(yyvsp[-1].sval), current_scope_level)) {
            type_error("Redeclaration of enum '" + *(yyvsp[-1].sval) + "' in same scope");
        }
        current_enum_value = 0;
    }
#line 2348 "parser.tab.c"
    break;

  case 25: /* enum_specifier: ENUM IDENTIFIER LBRACE $@3 enumerator_list RBRACE  */
#line 1018 "parser.y"
                             {
        // Register the named enum
        insert_enum(*(yyvsp[-4].sval), current_scope_level);
        
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";  // Enums are int type
        (yyval.typeinfo)->pointerLevel = 0;
        (yyval.typeinfo)->isArray = false;
        delete (yyvsp[-4].sval);
    }
#line 2363 "parser.tab.c"
    break;

  case 26: /* enum_specifier: ENUM IDENTIFIER  */
#line 1028 "parser.y"
                      {
        // Forward declaration or use of existing enum
        // Just return int type
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->pointerLevel = 0;
        (yyval.typeinfo)->isArray = false;
        delete (yyvsp[0].sval);
    }
#line 2377 "parser.tab.c"
    break;

  case 29: /* enumerator: IDENTIFIER  */
#line 1045 "parser.y"
                 {
        // Simple enumerator - use current_enum_value
        insert_enumerator(*(yyvsp[0].sval), current_enum_value);
        current_enum_value++;
        delete (yyvsp[0].sval);
    }
#line 2388 "parser.tab.c"
    break;

  case 30: /* enumerator: IDENTIFIER ASSIGN constant_expression  */
#line 1051 "parser.y"
                                            {
        // Enumerator with explicit value
        int value = 0;
        if ((yyvsp[0].typeinfo)->result && (yyvsp[0].typeinfo)->result->type == TAC_OPERAND_CONSTANT) {
            value = stoi((yyvsp[0].typeinfo)->result->value);
        } else {
            type_error("Enum constant value must be a compile-time integer constant");
        }
        insert_enumerator(*(yyvsp[-2].sval), value);
        current_enum_value = value + 1;
        delete (yyvsp[-2].sval);
        delete (yyvsp[0].typeinfo);
    }
#line 2406 "parser.tab.c"
    break;

  case 31: /* cast_type_specifier: type_specifier  */
#line 1066 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 2414 "parser.tab.c"
    break;

  case 32: /* cast_type_specifier: type_specifier STAR  */
#line 1069 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
#line 2423 "parser.tab.c"
    break;

  case 33: /* typedef_declarator_list: typedef_declarator  */
#line 1078 "parser.y"
                             {
		(yyval.decllist) = new vector<DeclaratorInfo*>();
		(yyval.decllist)->push_back((yyvsp[0].declinfo));
	}
#line 2432 "parser.tab.c"
    break;

  case 34: /* typedef_declarator_list: typedef_declarator_list COMMA typedef_declarator  */
#line 1082 "parser.y"
                                                           {
		(yyval.decllist) = (yyvsp[-2].decllist);
		(yyval.decllist)->push_back((yyvsp[0].declinfo));
	}
#line 2441 "parser.tab.c"
    break;

  case 35: /* typedef_declarator: pointer typedef_direct_declarator  */
#line 1089 "parser.y"
                                        {                                 /* e.g., *p or **p or ***p */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
        // Add pointer levels from $1 to the declarator
        (yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
    }
#line 2451 "parser.tab.c"
    break;

  case 36: /* typedef_declarator: typedef_direct_declarator  */
#line 1094 "parser.y"
                                {                                         /* e.g., x */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
    }
#line 2459 "parser.tab.c"
    break;

  case 37: /* typedef_direct_declarator: IDENTIFIER  */
#line 1100 "parser.y"
                 {                                                 /* e.g., x */  
        (yyval.declinfo) = new DeclaratorInfo();
        (yyval.declinfo)->name = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 2469 "parser.tab.c"
    break;

  case 38: /* typedef_direct_declarator: TYPENAME  */
#line 1105 "parser.y"
               {                                                 /* e.g., x */  
        (yyval.declinfo) = new DeclaratorInfo();
        (yyval.declinfo)->name = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 2479 "parser.tab.c"
    break;

  case 39: /* typedef_direct_declarator: typedef_direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 1110 "parser.y"
                                                              {     /* e.g., arr[10] or arr[10][20] */ 
        (yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 2492 "parser.tab.c"
    break;

  case 40: /* typedef_direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 1118 "parser.y"
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
#line 2507 "parser.tab.c"
    break;

  case 41: /* init_declarator_list: init_declarator  */
#line 1132 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 2516 "parser.tab.c"
    break;

  case 42: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 1136 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 2525 "parser.tab.c"
    break;

  case 43: /* init_declarator: declarator  */
#line 1144 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 2531 "parser.tab.c"
    break;

  case 44: /* init_declarator: declarator ASSIGN initializer  */
#line 1145 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 2540 "parser.tab.c"
    break;

  case 45: /* declarator: pointer direct_declarator  */
#line 1154 "parser.y"
                                {                                 /* e.g., *p or **p or ***p */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
        // Add pointer levels from $1 to the declarator
        (yyval.declinfo)->pointerLevel += (yyvsp[-1].ival);
    }
#line 2550 "parser.tab.c"
    break;

  case 46: /* declarator: reference direct_declarator  */
#line 1159 "parser.y"
                                  {                               /* e.g., &ref */
        (yyval.declinfo) = (yyvsp[0].declinfo);
        // Mark as reference
        (yyval.declinfo)->isReference = true;
    }
#line 2560 "parser.tab.c"
    break;

  case 47: /* declarator: direct_declarator  */
#line 1164 "parser.y"
                        {                                         /* e.g., x */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
    }
#line 2568 "parser.tab.c"
    break;

  case 48: /* direct_declarator: IDENTIFIER  */
#line 1171 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2578 "parser.tab.c"
    break;

  case 49: /* direct_declarator: LPAREN declarator RPAREN  */
#line 1176 "parser.y"
                                   {                                   /* e.g., (*fp) for function pointers */
		(yyval.declinfo) = (yyvsp[-1].declinfo);
	}
#line 2586 "parser.tab.c"
    break;

  case 50: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 1179 "parser.y"
                                                          {     /* e.g., arr[10] or arr[10][20] */ 
		(yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 2599 "parser.tab.c"
    break;

  case 51: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 1187 "parser.y"
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
#line 2614 "parser.tab.c"
    break;

  case 52: /* direct_declarator: IDENTIFIER LBRACKET CHAR_LITERAL RBRACKET  */
#line 1196 "parser.y"
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
#line 2635 "parser.tab.c"
    break;

  case 53: /* direct_declarator: direct_declarator LBRACKET CHAR_LITERAL RBRACKET  */
#line 1211 "parser.y"
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
#line 2654 "parser.tab.c"
    break;

  case 54: /* direct_declarator: direct_declarator LPAREN parameter_type_list RPAREN  */
#line 1225 "parser.y"
                                                              {              /* e.g., (*fp)(int, float) for function pointers */
		(yyval.declinfo) = (yyvsp[-3].declinfo);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>(*(yyvsp[-1].typelist));
		delete (yyvsp[-1].typelist);
	}
#line 2665 "parser.tab.c"
    break;

  case 55: /* direct_declarator: direct_declarator LPAREN RPAREN  */
#line 1231 "parser.y"
                                          {                             /* e.g., (*fp)() for function pointers with no params */
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>();
	}
#line 2675 "parser.tab.c"
    break;

  case 56: /* fun_declarator: pointer fun_direct_declarator  */
#line 1238 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);  // Function returns a pointer (possibly multi-level)
  	}
#line 2684 "parser.tab.c"
    break;

  case 57: /* fun_declarator: fun_direct_declarator  */
#line 1242 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2692 "parser.tab.c"
    break;

  case 58: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 1249 "parser.y"
                                                  {          		/* e.g., f(int a, float b) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-3].sval);
		(yyval.declinfo)->isFunction = true;
		//$$->paramTypes = new vector<TypeInfo>(*$3);  // Copy parameter types
        (yyval.declinfo)->paramTypes = new vector<TypeInfo>((yyvsp[-1].paramlist)->params);
        (yyval.declinfo)->isVariadic = (yyvsp[-1].paramlist)->hasEllipsis;
		
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
		delete (yyvsp[-1].paramlist);
	}
#line 2721 "parser.tab.c"
    break;

  case 59: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 1273 "parser.y"
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
#line 2739 "parser.tab.c"
    break;

  case 60: /* declaration_list: declaration  */
#line 1291 "parser.y"
                         {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[0].typeinfo)->code; // Carry forward the code from the declaration
        delete (yyvsp[0].typeinfo);
    }
#line 2749 "parser.tab.c"
    break;

  case 61: /* declaration_list: declaration_list declaration  */
#line 1296 "parser.y"
                                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        // Append the code from the new declaration
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        delete (yyvsp[0].typeinfo);
    }
#line 2760 "parser.tab.c"
    break;

  case 62: /* declaration_list: %empty  */
#line 1302 "parser.y"
             {
        (yyval.typeinfo) = new TypeInfo(); // Empty declaration list
    }
#line 2768 "parser.tab.c"
    break;

  case 63: /* initializer: assignment_expression  */
#line 1311 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2774 "parser.tab.c"
    break;

  case 64: /* parameter_list: parameter_declaration  */
#line 1315 "parser.y"
                            {
        (yyval.paramlist) = new ParamListInfo();
        (yyval.paramlist)->params.push_back(*(yyvsp[0].typeinfo));
        (yyval.paramlist)->hasEllipsis = false;
        delete (yyvsp[0].typeinfo);
    }
#line 2785 "parser.tab.c"
    break;

  case 65: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 1321 "parser.y"
                                                 {
        (yyval.paramlist) = (yyvsp[-2].paramlist);
        (yyval.paramlist)->params.push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2795 "parser.tab.c"
    break;

  case 66: /* parameter_list: parameter_list COMMA ELLIPSIS  */
#line 1326 "parser.y"
                                    {
        (yyval.paramlist) = (yyvsp[-2].paramlist);
        (yyval.paramlist)->hasEllipsis = true;
    }
#line 2804 "parser.tab.c"
    break;

  case 67: /* parameter_declaration: return_types parameter_declarator  */
#line 1334 "parser.y"
                                        {
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));
        
        // Check if this is a function pointer parameter
        if ((yyvsp[0].declinfo)->isFunction && (yyvsp[0].declinfo)->paramTypes) {
            // This is a function pointer: e.g., int (*fp)(int, float)
            combinedType->isFunctionPointer = true;
            combinedType->returnType = new TypeInfo(*(yyvsp[-1].typeinfo));  // Return type of the function pointer
            combinedType->parameterTypes = new vector<TypeInfo>(*(yyvsp[0].declinfo)->paramTypes);
            combinedType->pointerLevel = (yyvsp[0].declinfo)->pointerLevel - 1;  // Adjust for the function pointer itself
            combinedType->baseType = "function_pointer";
        } else {
            // Regular parameter
            combinedType->pointerLevel += (yyvsp[0].declinfo)->pointerLevel;
            combinedType->isArray |= (yyvsp[0].declinfo)->isArray;
            combinedType->arrayDimensions = (yyvsp[0].declinfo)->arrayDimensions;
            combinedType->isReference |= (yyvsp[0].declinfo)->isReference;
        }
        
        current_function_parameters.push_back(make_pair((yyvsp[0].declinfo)->name, *combinedType));
        
        (yyval.typeinfo) = combinedType;
        delete (yyvsp[-1].typeinfo);
        delete (yyvsp[0].declinfo);
    }
#line 2834 "parser.tab.c"
    break;

  case 68: /* parameter_type_list: parameter_type_declarator  */
#line 1363 "parser.y"
                                                                                            {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2844 "parser.tab.c"
    break;

  case 69: /* parameter_type_list: parameter_type_list COMMA parameter_type_declarator  */
#line 1368 "parser.y"
                                                                                                         {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2854 "parser.tab.c"
    break;

  case 70: /* parameter_type_declarator: return_types  */
#line 1376 "parser.y"
                                                                                                                                        {
        // Abstract declarator - just a type without a name
        // This is used in function pointer declarations like: int (*fp)(int, float)
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[0].typeinfo));
        
        // No name for abstract declarators
       // current_function_parameters.push_back(make_pair("", *combinedType));
        
        (yyval.typeinfo) = combinedType;
        delete (yyvsp[0].typeinfo);
    }
#line 2870 "parser.tab.c"
    break;

  case 71: /* parameter_type_declarator: return_types pointer  */
#line 1387 "parser.y"
                                                                                                                                       {
        // Abstract pointer declarator - type with pointer but no name
        // This is used in function pointer declarations like: int (*fp)(int*, char*)
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));
        combinedType->pointerLevel = (yyvsp[0].ival);
        
        // DON'T add to current_function_parameters - these are function pointer's params, not function's params
        // current_function_parameters.push_back(make_pair("", *combinedType))
        (yyval.typeinfo) = combinedType;
        delete (yyvsp[-1].typeinfo);
    }
#line 2886 "parser.tab.c"
    break;

  case 72: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 1401 "parser.y"
                                          {                                 /* e.g., *p or **p or ***p */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
        // Add pointer levels to the declarator
        (yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
    }
#line 2896 "parser.tab.c"
    break;

  case 73: /* parameter_declarator: reference parameter_direct_declarator  */
#line 1406 "parser.y"
                                            {                               /* e.g., &ref */
        (yyval.declinfo) = (yyvsp[0].declinfo);
        // Mark as reference
        (yyval.declinfo)->isReference = true;
    }
#line 2906 "parser.tab.c"
    break;

  case 74: /* parameter_declarator: parameter_direct_declarator  */
#line 1411 "parser.y"
                                  {                                         /* e.g., x */ 
        (yyval.declinfo) = (yyvsp[0].declinfo);
    }
#line 2914 "parser.tab.c"
    break;

  case 75: /* parameter_direct_declarator: IDENTIFIER  */
#line 1418 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2924 "parser.tab.c"
    break;

  case 76: /* parameter_direct_declarator: LPAREN parameter_declarator RPAREN  */
#line 1423 "parser.y"
                                         {
        // Handles parenthesized declarators like (*fp)
        (yyval.declinfo) = (yyvsp[-1].declinfo);
    }
#line 2933 "parser.tab.c"
    break;

  case 77: /* parameter_direct_declarator: parameter_direct_declarator LPAREN parameter_type_list RPAREN  */
#line 1427 "parser.y"
                                                                    {
        // Function pointer with params: (*fp)(int, float)
        (yyval.declinfo) = (yyvsp[-3].declinfo);
        (yyval.declinfo)->isFunction = true;
        (yyval.declinfo)->paramTypes = new vector<TypeInfo>(*(yyvsp[-1].typelist));
        delete (yyvsp[-1].typelist);
    }
#line 2945 "parser.tab.c"
    break;

  case 78: /* parameter_direct_declarator: parameter_direct_declarator LPAREN RPAREN  */
#line 1434 "parser.y"
                                                {
        // Function pointer with no params: (*fp)()
        (yyval.declinfo) = (yyvsp[-2].declinfo);
        (yyval.declinfo)->isFunction = true;
        (yyval.declinfo)->paramTypes = new vector<TypeInfo>();
    }
#line 2956 "parser.tab.c"
    break;

  case 79: /* primary_expression: IDENTIFIER  */
#line 1445 "parser.y"
                 { 
        SymbolEntry entry;
        // First, check if it's a variable (including enumerators)
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);  // Store identifier name
            (yyval.typeinfo)->isLiteral = false;
            
            // Check if it's a const enumerator
            if (entry.isConst) {
                (yyval.typeinfo)->isLvalue = false;  // Const enumerators are not lvalues
                cout << "Found enum constant: " << *(yyvsp[0].sval) << " with value " << entry.constValue << "\n";
                (yyval.typeinfo)->result = new_constant(to_string(entry.constValue));
            } 
            // Check if it's a reference - auto-dereference it
            else if (entry.type.isReference) {
                (yyval.typeinfo)->isLvalue = true;   // Dereferenced references are lvalues
                cout << "Found reference: " << *(yyvsp[0].sval) << " of type " << (yyval.typeinfo)->toString() << " (auto-dereferencing)\n";
                
                // The reference variable stores an address, dereference it
                TACOperand* ref_var = new_identifier(entry.mangledName);
                TACOperand* temp = new_temp_var();
                TACInstruction* deref_inst = emit(TAC_OPERATOR_DEREF, temp, ref_var, new_empty_var(), 0);
                (yyval.typeinfo)->code.push_back(deref_inst);
                (yyval.typeinfo)->result = temp;
                
                // The type info should reflect what the reference refers to, not the reference itself
                (yyval.typeinfo)->isReference = false;  // After dereferencing, it's no longer a reference
            } else {
                (yyval.typeinfo)->isLvalue = true;   // Regular variables are lvalues
                cout << "Found variable: " << *(yyvsp[0].sval) << " of type " << (yyval.typeinfo)->toString() << "\n";
                (yyval.typeinfo)->result = new_identifier(entry.mangledName);
            }
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
        // Otherwise, it's undefined
        else {
            check_variable_declaration(*(yyvsp[0].sval));
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);
            (yyval.typeinfo)->isLvalue = false;
            type_error("Undefined variable: " + *(yyvsp[0].sval));
        }
        delete (yyvsp[0].sval);
    }
#line 3018 "parser.tab.c"
    break;

  case 80: /* primary_expression: INT_LITERAL  */
#line 1502 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";

        (yyval.typeinfo)->result = new_constant(to_string((yyvsp[0].ival)));


    }
#line 3034 "parser.tab.c"
    break;

  case 81: /* primary_expression: FLOAT_LITERAL  */
#line 1513 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";

        string floatStr = float_to_string_conversion((yyvsp[0].fval));
        (yyval.typeinfo)->result = new_constant(floatStr);

    }
#line 3050 "parser.tab.c"
    break;

  case 82: /* primary_expression: CHAR_LITERAL  */
#line 1524 "parser.y"
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
#line 3066 "parser.tab.c"
    break;

  case 83: /* primary_expression: STRING_LITERAL  */
#line 1535 "parser.y"
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
#line 3084 "parser.tab.c"
    break;

  case 84: /* primary_expression: NULL_LITERAL  */
#line 1548 "parser.y"
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
#line 3099 "parser.tab.c"
    break;

  case 85: /* primary_expression: LPAREN expression RPAREN  */
#line 1558 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 3107 "parser.tab.c"
    break;

  case 86: /* postfix_expression: primary_expression  */
#line 1565 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3113 "parser.tab.c"
    break;

  case 87: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 1566 "parser.y"
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
#line 3195 "parser.tab.c"
    break;

  case 88: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 1643 "parser.y"
                                           {                               /* e.g., func() or (*fp)() */
		// Function call with no arguments (direct call or through function pointer)
		TypeInfo* base = (yyvsp[-2].typeinfo);
		
		// Check if base is a function pointer that needs to be called
		if (base->isFunctionPointer && base->returnType && base->parameterTypes) {
			// This is a function pointer call: (*fp)()
			// Check parameter count
			if (base->parameterTypes->size() != 0) {
				type_error("Function pointer call expects " + to_string(base->parameterTypes->size()) + 
				          " arguments but got 0");
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			} else {
				// Return type is the function pointer's return type
				(yyval.typeinfo) = new TypeInfo(*base->returnType);
				(yyval.typeinfo)->isLiteral = false;
				(yyval.typeinfo)->isLvalue = false;
				cout << "Function pointer call: " << base->identifier << "() -> " << (yyval.typeinfo)->toString() << "\n";
				
				// Generate 3AC for indirect function call
				(yyval.typeinfo)->code = base->code;
				(yyval.typeinfo)->result = new_temp_var();
				TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
				                            (yyval.typeinfo)->result, 
				                            base->result,  // Use the function pointer variable
				                            new_constant("0"), 0);
				(yyval.typeinfo)->code.push_back(callInstr);
			}
		} else if (!base->identifier.empty()) {
			// Regular function call by name
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
                                            new_identifier(func->mangledName), 
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
#line 3257 "parser.tab.c"
    break;

  case 89: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 1700 "parser.y"
                                                                    {      /* e.g., func(a,b) or (*fp)(a,b) */
		// Function call with arguments (direct call or through function pointer)
		TypeInfo* base = (yyvsp[-3].typeinfo);
		vector<TypeInfo>* argTypes = (yyvsp[-1].typelist);

		// Check if base is a function pointer that needs to be called
		if (base->isFunctionPointer && base->returnType && base->parameterTypes && argTypes) {
			// This is a function pointer call: (*fp)(args)
			// Check parameter count
            cout<<"Hello from function pointer call with arguments\n";
			if (base->parameterTypes->size() != argTypes->size()) {
				type_error("Function pointer call expects " + to_string(base->parameterTypes->size()) + 
				          " arguments but got " + to_string(argTypes->size()));
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
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
					(yyval.typeinfo) = new TypeInfo(*base->returnType);
					(yyval.typeinfo)->isLiteral = false;
					(yyval.typeinfo)->isLvalue = false;
					(yyval.typeinfo)->code = base->code;
					
					cout << "Function pointer call with " << argTypes->size() << " arguments -> " << (yyval.typeinfo)->toString() << "\n";
					
					// Generate 3AC for arguments and call
					int no_of_args = argTypes->size();
					for(int i = 0; i < no_of_args; i++) {
						(yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (*argTypes)[i].code.begin(), (*argTypes)[i].code.end());
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
							(yyval.typeinfo)->code.push_back(addr_inst);
							
							TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
														addr, 
														new_empty_var(), 
														new_empty_var(), 0);
							(yyval.typeinfo)->code.push_back(argInstr);
						} else {
							// Type conversion if needed for non-reference parameters
							pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = 
								change_type_rhs_to_lhs((*base->parameterTypes)[i], (*argTypes)[i]);
							(yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), promo.first.begin(), promo.first.end());
							
							// Pass the argument
							TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
														promo.second.second, 
														new_empty_var(), 
														new_empty_var(), 0);
							(yyval.typeinfo)->code.push_back(argInstr);
						}
					}
					
					// Generate indirect call instruction
					(yyval.typeinfo)->result = new_temp_var();
					TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
					                            (yyval.typeinfo)->result, 
					                            base->result,  // Use the function pointer variable
					                            new_constant(to_string(no_of_args)), 0);
					(yyval.typeinfo)->code.push_back(callInstr);
				} else {
					(yyval.typeinfo) = new TypeInfo();
					(yyval.typeinfo)->baseType = "error";
				}
			}
		} else if (!base->identifier.empty() && argTypes) {
			// Regular function call by name
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
                            (yyval.typeinfo)->code.push_back(addr_inst);
                            
                            TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                        addr, 
                                                        new_empty_var(), 
                                                        new_empty_var(), 0);
                            (yyval.typeinfo)->code.push_back(argInstr);
                        } else {
                            // For non-reference parameters, do type conversion
                            pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = 
                                change_type_rhs_to_lhs(func->parameters[i].type, (*argTypes)[i]);
                            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), promo.first.begin(), promo.first.end());
                            TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                        promo.second.second, 
                                                        new_empty_var(), 
                                                        new_empty_var(), 0);
                            (yyval.typeinfo)->code.push_back(argInstr);
                        }
                    } else {
                        // For variadic arguments, pass as-is (no type checking/conversion)
                        TACInstruction* argInstr = emit(TACOperator(TAC_OPERATOR_PARAM), 
                                                    (*argTypes)[i].result, 
                                                    new_empty_var(), 
                                                    new_empty_var(), 0);
                        (yyval.typeinfo)->code.push_back(argInstr);
                    }
                }

                // Now generate the call instruction
                (yyval.typeinfo)->result = new_temp_var();
                TACInstruction* callInstr = emit(TACOperator(TAC_OPERATOR_CALL), 
                                            (yyval.typeinfo)->result, 
                                            new_identifier(func->mangledName),
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
#line 3472 "parser.tab.c"
    break;

  case 90: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 1910 "parser.y"
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
#line 3542 "parser.tab.c"
    break;

  case 91: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 1975 "parser.y"
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
#line 3604 "parser.tab.c"
    break;

  case 92: /* postfix_expression: postfix_expression INCREMENT  */
#line 2032 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 3613 "parser.tab.c"
    break;

  case 93: /* postfix_expression: postfix_expression DECREMENT  */
#line 2036 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--"); 
		delete (yyvsp[-1].typeinfo);
	}
#line 3622 "parser.tab.c"
    break;

  case 94: /* argument_expression_list: assignment_expression  */
#line 2043 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
        TypeInfo argType = *(yyvsp[0].typeinfo);
        (yyval.typelist)->push_back(argType);
        delete (yyvsp[0].typeinfo);
	}
#line 3633 "parser.tab.c"
    break;

  case 95: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 2049 "parser.y"
                                                               {           /* e.g., x, y */
        TypeInfo argType = *(yyvsp[0].typeinfo);
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(argType);
        delete (yyvsp[0].typeinfo);
	}
#line 3644 "parser.tab.c"
    break;

  case 96: /* unary_expression: postfix_expression  */
#line 2058 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3650 "parser.tab.c"
    break;

  case 97: /* unary_expression: INCREMENT unary_expression  */
#line 2059 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");    
		delete (yyvsp[0].typeinfo);
	}
#line 3659 "parser.tab.c"
    break;

  case 98: /* unary_expression: DECREMENT unary_expression  */
#line 2063 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 3668 "parser.tab.c"
    break;

  case 99: /* unary_expression: unary_operator cast_expression  */
#line 2067 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
        delete (yyvsp[0].typeinfo);
	}
#line 3677 "parser.tab.c"
    break;

  case 100: /* unary_expression: SIZEOF unary_expression  */
#line 2071 "parser.y"
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
#line 3700 "parser.tab.c"
    break;

  case 101: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 2089 "parser.y"
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
#line 3719 "parser.tab.c"
    break;

  case 102: /* unary_operator: BIT_AND  */
#line 2106 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 3725 "parser.tab.c"
    break;

  case 103: /* unary_operator: STAR  */
#line 2107 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 3731 "parser.tab.c"
    break;

  case 104: /* unary_operator: PLUS  */
#line 2108 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 3737 "parser.tab.c"
    break;

  case 105: /* unary_operator: MINUS  */
#line 2109 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 3743 "parser.tab.c"
    break;

  case 106: /* unary_operator: BIT_NOT  */
#line 2110 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 3749 "parser.tab.c"
    break;

  case 107: /* unary_operator: LOGICAL_NOT  */
#line 2111 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 3755 "parser.tab.c"
    break;

  case 108: /* cast_expression: unary_expression  */
#line 2115 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3761 "parser.tab.c"
    break;

  case 109: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 2116 "parser.y"
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
#line 3793 "parser.tab.c"
    break;

  case 110: /* multiplicative_expression: cast_expression  */
#line 2146 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3799 "parser.tab.c"
    break;

  case 111: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 2147 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3808 "parser.tab.c"
    break;

  case 112: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 2151 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3817 "parser.tab.c"
    break;

  case 113: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 2155 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3826 "parser.tab.c"
    break;

  case 114: /* additive_expression: multiplicative_expression  */
#line 2162 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3832 "parser.tab.c"
    break;

  case 115: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 2163 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3841 "parser.tab.c"
    break;

  case 116: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 2167 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
        

		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3852 "parser.tab.c"
    break;

  case 117: /* shift_expression: additive_expression  */
#line 2176 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3858 "parser.tab.c"
    break;

  case 118: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 2177 "parser.y"
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
#line 3895 "parser.tab.c"
    break;

  case 119: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 2209 "parser.y"
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
#line 3930 "parser.tab.c"
    break;

  case 120: /* relational_expression: shift_expression  */
#line 2242 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3936 "parser.tab.c"
    break;

  case 121: /* relational_expression: relational_expression LT shift_expression  */
#line 2243 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3945 "parser.tab.c"
    break;

  case 122: /* relational_expression: relational_expression GT shift_expression  */
#line 2247 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3954 "parser.tab.c"
    break;

  case 123: /* relational_expression: relational_expression LE shift_expression  */
#line 2251 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3963 "parser.tab.c"
    break;

  case 124: /* relational_expression: relational_expression GE shift_expression  */
#line 2255 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3972 "parser.tab.c"
    break;

  case 125: /* equality_expression: relational_expression  */
#line 2262 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3978 "parser.tab.c"
    break;

  case 126: /* equality_expression: equality_expression EQ relational_expression  */
#line 2263 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3987 "parser.tab.c"
    break;

  case 127: /* equality_expression: equality_expression NEQ relational_expression  */
#line 2267 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 3996 "parser.tab.c"
    break;

  case 128: /* and_expression: equality_expression  */
#line 2274 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4002 "parser.tab.c"
    break;

  case 129: /* and_expression: and_expression BIT_AND equality_expression  */
#line 2275 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 4011 "parser.tab.c"
    break;

  case 130: /* exclusive_or_expression: and_expression  */
#line 2282 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4017 "parser.tab.c"
    break;

  case 131: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 2283 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 4026 "parser.tab.c"
    break;

  case 132: /* inclusive_or_expression: exclusive_or_expression  */
#line 2290 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4032 "parser.tab.c"
    break;

  case 133: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 2291 "parser.y"
                                                                 { 
		
        (yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
        delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 4042 "parser.tab.c"
    break;

  case 134: /* logical_and_expression: inclusive_or_expression  */
#line 2298 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4048 "parser.tab.c"
    break;

  case 135: /* $@4: %empty  */
#line 2299 "parser.y"
                                             { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        (yyvsp[-1].typeinfo)->code.push_back(if_true);
        (yyvsp[-1].typeinfo)->code.push_back(goto_false);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_false);
    }
#line 4061 "parser.tab.c"
    break;

  case 136: /* logical_and_expression: logical_and_expression LOGICAL_AND $@4 inclusive_or_expression  */
#line 2306 "parser.y"
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
#line 4114 "parser.tab.c"
    break;

  case 137: /* logical_or_expression: logical_and_expression  */
#line 2357 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4120 "parser.tab.c"
    break;

  case 138: /* $@5: %empty  */
#line 2358 "parser.y"
                                           {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        (yyvsp[-1].typeinfo)->code.push_back(go_true);
        (yyvsp[-1].typeinfo)->true_list.insert(go_true);
    }
#line 4130 "parser.tab.c"
    break;

  case 139: /* logical_or_expression: logical_or_expression LOGICAL_OR $@5 logical_and_expression  */
#line 2362 "parser.y"
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
#line 4184 "parser.tab.c"
    break;

  case 140: /* conditional_expression: logical_or_expression  */
#line 2414 "parser.y"
                                                                                         {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // No conditional, just pass through
    }
#line 4192 "parser.tab.c"
    break;

  case 141: /* assignment_expression: conditional_expression  */
#line 2420 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo);}
#line 4198 "parser.tab.c"
    break;

  case 142: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 2421 "parser.y"
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

		
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 4245 "parser.tab.c"
    break;

  case 144: /* expression: assignment_expression  */
#line 2470 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4251 "parser.tab.c"
    break;

  case 145: /* expression: expression COMMA assignment_expression  */
#line 2471 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = new TypeInfo(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->isLvalue = false;  // Result of comma operator is not an
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
		delete (yyvsp[-2].typeinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 4265 "parser.tab.c"
    break;

  case 146: /* constant_expression: conditional_expression  */
#line 2483 "parser.y"
                                 { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
	}
#line 4273 "parser.tab.c"
    break;

  case 147: /* $@6: %empty  */
#line 2491 "parser.y"
                                            {
		// Initialize the global member list for this struct
		current_struct_members = new vector<StructMember>();
		// Track the struct/union name being defined (for self-referential pointers)
		current_struct_being_defined = (*(yyvsp[-2].sval) == "union" ? "union " : "struct ") + *(yyvsp[-1].sval);
	}
#line 4284 "parser.tab.c"
    break;

  case 148: /* struct_or_union_specifier: struct_or_union IDENTIFIER LBRACE $@6 struct_declaration_list RBRACE  */
#line 2496 "parser.y"
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
#line 4336 "parser.tab.c"
    break;

  case 149: /* $@7: %empty  */
#line 2546 "parser.y"
                              {
        // Initialize the global member list for this struct
        current_struct_members = new vector<StructMember>();
        // Track the struct/union name being defined (for self-referential pointers)
        string structType = (*(yyvsp[-1].sval) == "union" ? "union " : "struct ");
        current_struct_being_defined = structType + "<anonymous>" + "_" + to_string(anonymous_struct_counter++);

    }
#line 4349 "parser.tab.c"
    break;

  case 150: /* struct_or_union_specifier: struct_or_union LBRACE $@7 struct_declaration_list RBRACE  */
#line 2553 "parser.y"
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
#line 4383 "parser.tab.c"
    break;

  case 151: /* struct_or_union_specifier: struct_or_union IDENTIFIER  */
#line 2582 "parser.y"
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
#line 4406 "parser.tab.c"
    break;

  case 152: /* struct_or_union: STRUCT  */
#line 2603 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 4412 "parser.tab.c"
    break;

  case 153: /* struct_or_union: UNION  */
#line 2604 "parser.y"
            { (yyval.sval) = new string("union"); }
#line 4418 "parser.tab.c"
    break;

  case 157: /* struct_declaration: type_specifier struct_declarator_list SEMICOLON  */
#line 2615 "parser.y"
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
#line 4471 "parser.tab.c"
    break;

  case 158: /* struct_declarator_list: struct_declarator  */
#line 2666 "parser.y"
                            {
		(yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo)); // $1 is already a pointer
    }
#line 4480 "parser.tab.c"
    break;

  case 159: /* struct_declarator_list: struct_declarator_list COMMA struct_declarator  */
#line 2670 "parser.y"
                                                     {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo)); // $3 is already a pointer
    }
#line 4489 "parser.tab.c"
    break;

  case 160: /* struct_declarator: declarator  */
#line 2676 "parser.y"
                     {
        (yyval.declinfo) = (yyvsp[0].declinfo);
    }
#line 4497 "parser.tab.c"
    break;

  case 161: /* reference: BIT_AND  */
#line 2684 "parser.y"
              {                                /* e.g., & */
        (yyval.ival) = 1;  // Flag indicating reference
    }
#line 4505 "parser.tab.c"
    break;

  case 162: /* pointer: STAR  */
#line 2690 "parser.y"
           {                                   /* e.g., * */
        (yyval.ival) = 1;  // Return pointer level instead of TypeInfo
    }
#line 4513 "parser.tab.c"
    break;

  case 163: /* pointer: STAR pointer  */
#line 2693 "parser.y"
                   {                           /* e.g., ** or *** etc. */
        (yyval.ival) = (yyvsp[0].ival) + 1;  // Increment pointer level for each * encountered
    }
#line 4521 "parser.tab.c"
    break;

  case 164: /* short_circuited_logical_and_expression: inclusive_or_expression  */
#line 2703 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4527 "parser.tab.c"
    break;

  case 165: /* $@8: %empty  */
#line 2704 "parser.y"
                                                             { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        (yyvsp[-1].typeinfo)->code.push_back(if_true);
        (yyvsp[-1].typeinfo)->code.push_back(goto_false);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_false);
    }
#line 4540 "parser.tab.c"
    break;

  case 166: /* short_circuited_logical_and_expression: short_circuited_logical_and_expression LOGICAL_AND $@8 inclusive_or_expression  */
#line 2711 "parser.y"
                              { 
		// Short-circuit logical AND
        cout<<"Entered short circuited logical and expression\n";
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
            cout << "Short circuted Logical AND: " << left->toString() << " && " << right->toString() << " -> int\n";

            
            (yyval.typeinfo)->result = new_temp_var();
            (yyval.typeinfo)->code = left->code;
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), right->code.begin(), right->code.end());


            (yyval.typeinfo)->true_list = right->true_list;
            (yyval.typeinfo)->false_list = left->false_list;
            (yyval.typeinfo)->false_list.insert(right->false_list.begin(), right->false_list.end());

            delete left;
            delete right;

        }
    }
#line 4577 "parser.tab.c"
    break;

  case 167: /* short_circuited_logical_or_expression: short_circuited_logical_and_expression  */
#line 2746 "parser.y"
                                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4583 "parser.tab.c"
    break;

  case 168: /* $@9: %empty  */
#line 2747 "parser.y"
                                                           {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        (yyvsp[-1].typeinfo)->code.push_back(go_true);
        (yyvsp[-1].typeinfo)->true_list.insert(go_true);
    }
#line 4593 "parser.tab.c"
    break;

  case 169: /* short_circuited_logical_or_expression: short_circuited_logical_or_expression LOGICAL_OR $@9 short_circuited_logical_and_expression  */
#line 2751 "parser.y"
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
            
            (yyval.typeinfo)->true_list = left->true_list;
            (yyval.typeinfo)->true_list.insert(right->true_list.begin(), right->true_list.end());

            delete left;
            delete right;
            
        }
    }
#line 4627 "parser.tab.c"
    break;

  case 170: /* short_circuited_conditional_expression: short_circuited_logical_or_expression  */
#line 2783 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // No conditional, just pass through
    }
#line 4635 "parser.tab.c"
    break;

  case 171: /* short_circuited_assignment_expression: short_circuited_conditional_expression  */
#line 2789 "parser.y"
                                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo);}
#line 4641 "parser.tab.c"
    break;

  case 172: /* short_circuited_assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 2790 "parser.y"
                                                                     {  // yeh line dikkat de skti hai in future, because assignment_expression mein short_circuited_assignment_expression hona chahiye
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

		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 4687 "parser.tab.c"
    break;

  case 173: /* short_circuited_expression: short_circuited_assignment_expression  */
#line 2836 "parser.y"
                                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 4693 "parser.tab.c"
    break;

  case 174: /* short_circuited_expression: short_circuited_expression COMMA short_circuited_assignment_expression  */
#line 2837 "parser.y"
                                                                                 {  // yahan bhi assignment_expression ki jagah short_circuited_assignment_expression likh skte hai, but abhi ke liye nhi likh rhe, although it is correct
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = new TypeInfo(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->isLvalue = false;  // Result of comma operator is not an
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
		delete (yyvsp[-2].typeinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 4707 "parser.tab.c"
    break;

  case 175: /* statement: labeled_statement  */
#line 2852 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4715 "parser.tab.c"
    break;

  case 176: /* statement: compound_statement  */
#line 2855 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4723 "parser.tab.c"
    break;

  case 177: /* statement: expression_statement  */
#line 2858 "parser.y"
                                                                                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4731 "parser.tab.c"
    break;

  case 178: /* statement: selection_statement  */
#line 2861 "parser.y"
                                                                                                        {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4739 "parser.tab.c"
    break;

  case 179: /* statement: iteration_statement  */
#line 2864 "parser.y"
                                                                                                           {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4747 "parser.tab.c"
    break;

  case 180: /* statement: jump_statement  */
#line 2867 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 4755 "parser.tab.c"
    break;

  case 181: /* statement: error SEMICOLON  */
#line 2870 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 4764 "parser.tab.c"
    break;

  case 182: /* labeled_statement: IDENTIFIER COLON marker statement  */
#line 2880 "parser.y"
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
#line 4780 "parser.tab.c"
    break;

  case 183: /* $@10: %empty  */
#line 2891 "parser.y"
                             { 
        // Check if we're inside a switch statement
        if (switch_case_stack.empty()) {
            type_error("Case label not within a switch statement");
        } else {
            // Convert char to int if needed
            int case_value = 0;

            // CHAR_LITERAL is of type string* , we have to convert it to int   
            case_value = static_cast<int>((*(yyvsp[0].sval))[0]); // Get ASCII value of the character literal
            
            
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
#line 4808 "parser.tab.c"
    break;

  case 184: /* labeled_statement: CASE CHAR_LITERAL $@10 COLON marker statement  */
#line 2914 "parser.y"
                                                                                {
        // Combine code from case expression and statement
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // Propagate break statements
        (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;
        
        delete (yyvsp[-4].sval);
        delete (yyvsp[0].typeinfo);
    }
#line 4825 "parser.tab.c"
    break;

  case 185: /* $@11: %empty  */
#line 2926 "parser.y"
                        {
        
        // Check if we're inside a switch statement
        if (switch_case_stack.empty()) {
            type_error("Case label not within a switch statement");
        } else {
            // Get integer value
            int case_value = (yyvsp[0].ival);
            
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
#line 4850 "parser.tab.c"
    break;

  case 186: /* labeled_statement: CASE INT_LITERAL $@11 COLON marker statement  */
#line 2946 "parser.y"
                                                                                 {
        // Combine code from case expression and statement
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = vector<TACInstruction*>();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // Propagate break statements
        (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;
        
        delete (yyvsp[0].typeinfo);
    }
#line 4866 "parser.tab.c"
    break;

  case 187: /* labeled_statement: DEFAULT COLON statement  */
#line 2957 "parser.y"
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
                (yyval.typeinfo) = new TypeInfo();
                (yyval.typeinfo)->code = vector<TACInstruction*>();
                (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
                // Propagate break statements
                (yyval.typeinfo)->break_list = (yyvsp[0].typeinfo)->break_list;                
                delete (yyvsp[0].typeinfo);
            }
        }
    }
#line 4892 "parser.tab.c"
    break;

  case 188: /* $@12: %empty  */
#line 2981 "parser.y"
          { enter_scope(); insert_current_function_parameters(); }
#line 4898 "parser.tab.c"
    break;

  case 189: /* compound_statement: LBRACE $@12 declaration_list statement_list RBRACE  */
#line 2981 "parser.y"
                                                                                                          {
        cout << "Compound statement with declarations and statements\n";
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-1].typeinfo)->code.begin(), (yyvsp[-1].typeinfo)->code.end());
        (yyval.typeinfo)->next_list = (yyvsp[-1].typeinfo)->next_list;
        (yyval.typeinfo)->break_list = (yyvsp[-1].typeinfo)->break_list;
        (yyval.typeinfo)->continue_list = (yyvsp[-1].typeinfo)->continue_list;

        exit_scope(); 
    }
#line 4914 "parser.tab.c"
    break;

  case 190: /* marker: %empty  */
#line 2996 "parser.y"
                  {
        (yyval.opinfo) = new_label(0); // Create a label for the beginning of loops
    }
#line 4922 "parser.tab.c"
    break;

  case 191: /* statement_list: statement  */
#line 3002 "parser.y"
                                                                                               {
        (yyval.typeinfo)= (yyvsp[0].typeinfo);
        // Don't backpatch next_list here - let it propagate up
        // It will be backpatched by the caller if needed
    }
#line 4932 "parser.tab.c"
    break;

  case 192: /* statement_list: statement_list marker statement  */
#line 3007 "parser.y"
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
#line 4950 "parser.tab.c"
    break;

  case 193: /* statement_list: %empty  */
#line 3020 "parser.y"
           {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 4959 "parser.tab.c"
    break;

  case 194: /* expression_statement: SEMICOLON  */
#line 3029 "parser.y"
                {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 4968 "parser.tab.c"
    break;

  case 195: /* expression_statement: expression SEMICOLON  */
#line 3033 "parser.y"
                           {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
    }
#line 4976 "parser.tab.c"
    break;

  case 196: /* selection_statement: if_expression  */
#line 3039 "parser.y"
                                                                               {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        if (! (yyvsp[0].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[0].typeinfo)->false_list, curr_inst);
        }
    }
#line 4988 "parser.tab.c"
    break;

  case 197: /* $@13: %empty  */
#line 3046 "parser.y"
                             {        
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->next_list.insert(goto_inst);
        if (! (yyvsp[-1].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[-1].typeinfo)->false_list, curr_inst);
        }
    }
#line 5002 "parser.tab.c"
    break;

  case 198: /* selection_statement: if_expression ELSE $@13 statement  */
#line 3055 "parser.y"
    {
        (yyval.typeinfo) = (yyvsp[-3].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->break_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        (yyval.typeinfo)->continue_list.insert((yyvsp[0].typeinfo)->continue_list.begin(), (yyvsp[0].typeinfo)->continue_list.end());
        delete (yyvsp[0].typeinfo);
    }
#line 5015 "parser.tab.c"
    break;

  case 199: /* $@14: %empty  */
#line 3063 "parser.y"
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
#line 5056 "parser.tab.c"
    break;

  case 200: /* selection_statement: SWITCH LPAREN expression $@14 RPAREN statement  */
#line 3099 "parser.y"
                                                                                {
        (yyval.typeinfo) = new TypeInfo();
        
        // Get switch expression code
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-3].typeinfo)->code.begin(), (yyvsp[-3].typeinfo)->code.end());
        
        // Get statement code (contains all case/default labels and their code)
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // Create end label for switch
        TACOperand* end_label = new_label(0);

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
#line 5103 "parser.tab.c"
    break;

  case 201: /* $@15: %empty  */
#line 3144 "parser.y"
                                                   { // making change here for short circuited expressions
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); 
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);

        // backpatching to the true label
        if(! (yyvsp[-1].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[-1].typeinfo)->true_list, new_label(0));
        }
    }
#line 5121 "parser.tab.c"
    break;

  case 202: /* if_expression: IF LPAREN short_circuited_expression RPAREN $@15 statement  */
#line 3156 "parser.y"
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
#line 5142 "parser.tab.c"
    break;

  case 203: /* $@16: %empty  */
#line 3177 "parser.y"
                                                                       { // here also change for short circuited expressions
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2);
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);

        // backpatching to the beginning of the loop
        // although for now it is useless
        // now it is useful for short circuited expressions
        if(! (yyvsp[-1].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[-1].typeinfo)->true_list, new_label(0));
        }
        loop_depth++;
    }
#line 5163 "parser.tab.c"
    break;

  case 204: /* iteration_statement: WHILE begin_marker LPAREN short_circuited_expression RPAREN $@16 statement  */
#line 3192 "parser.y"
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
        loop_depth--;
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 5191 "parser.tab.c"
    break;

  case 205: /* $@17: %empty  */
#line 3215 "parser.y"
                                                               { // here also change for short circuited expressions
        // if E then goto___ -> next list
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[0].typeinfo)->result, new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        (yyvsp[0].typeinfo)->true_list.insert(if_inst);
        // backpatch expression's false_list to beginning of loop's statement
        if(! (yyvsp[0].typeinfo)->false_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->false_list, new_label(0));
        }
        loop_depth++;
    }
#line 5207 "parser.tab.c"
    break;

  case 206: /* iteration_statement: UNTIL begin_marker LPAREN short_circuited_expression $@17 RPAREN statement  */
#line 3225 "parser.y"
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
        loop_depth--;
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 5233 "parser.tab.c"
    break;

  case 207: /* $@18: %empty  */
#line 3246 "parser.y"
                           {
        loop_depth++;
    }
#line 5241 "parser.tab.c"
    break;

  case 208: /* $@19: %empty  */
#line 3248 "parser.y"
                {
        //TACOperand* curr_inst = new_label(0);
        // seemss redundant but dont delete for now
        // krish
        //backpatch($3->next_list, curr_inst);
    }
#line 5252 "parser.tab.c"
    break;

  case 209: /* iteration_statement: DO begin_marker $@18 statement $@19 WHILE LPAREN marker short_circuited_expression RPAREN SEMICOLON  */
#line 3253 "parser.y"
                                                                     { // here also change for short circuited expressions
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-7].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-9].opinfo), (yyvsp[-2].typeinfo)->result, new_empty_var(), 2);
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

        // also backpatch true_list to the beginning of the loop
        if(! (yyvsp[-2].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[-2].typeinfo)->true_list, (yyvsp[-9].opinfo));
        }
        loop_depth--;

    }
#line 5282 "parser.tab.c"
    break;

  case 210: /* $@20: %empty  */
#line 3278 "parser.y"
                                                                            {
        // For loop without increment: for(init; cond; ) body
        // Create labels for conditional jump
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[0].typeinfo)->result, new_empty_var(), 2);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(goto_inst);
        (yyvsp[0].typeinfo)->false_list.insert(goto_inst);

        // Backpatch true_list to continue to body
        if(! (yyvsp[0].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->true_list, new_label(0));
        }
        loop_depth++;
    }
#line 5303 "parser.tab.c"
    break;

  case 211: /* iteration_statement: FOR LPAREN expression_statement begin_marker expression_statement $@20 RPAREN statement  */
#line 3293 "parser.y"
                                                             {
        (yyval.typeinfo) = new TypeInfo();
        // Add init code
        (yyval.typeinfo)->code = (yyvsp[-5].typeinfo)->code;
        // Add condition code
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-3].typeinfo)->code.begin(), (yyvsp[-3].typeinfo)->code.end());
        // Add body code
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        
        // After body, jump back to begin (condition check)
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-4].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_begin);
        
        // next_list contains false_list of condition and next_list of body and break statements
        (yyval.typeinfo)->next_list = (yyvsp[-3].typeinfo)->false_list;
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        
        // Continue statements should jump to condition (begin_marker)
        if(! (yyvsp[0].typeinfo)->continue_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->continue_list, (yyvsp[-4].opinfo));
        }   

        loop_depth--;
        
        delete (yyvsp[-5].typeinfo); delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 5335 "parser.tab.c"
    break;

  case 212: /* $@21: %empty  */
#line 3320 "parser.y"
                                                                            {
        // For loop with increment: for(init; cond; incr) body
        // Create labels for conditional jump
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[0].typeinfo)->result, new_empty_var(), 2);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        (yyvsp[0].typeinfo)->true_list.insert(if_inst);

        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(goto_inst);
        (yyvsp[0].typeinfo)->false_list.insert(goto_inst);

    }
#line 5352 "parser.tab.c"
    break;

  case 213: /* $@22: %empty  */
#line 3331 "parser.y"
                                                  {
        
        // Add init code
        // Add condition code
        (yyvsp[-7].typeinfo)->code.insert((yyvsp[-7].typeinfo)->code.end(), (yyvsp[-5].typeinfo)->code.begin(), (yyvsp[-5].typeinfo)->code.end());

        // Add increment code and jump back to condition
        (yyvsp[-7].typeinfo)->code.insert((yyvsp[-7].typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        TACInstruction* goto_condition = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-6].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-7].typeinfo)->code.push_back(goto_condition);

        // Backpatch true_list to continue to body
        if(! (yyvsp[-5].typeinfo)->true_list.empty()) {
            backpatch((yyvsp[-5].typeinfo)->true_list, new_label(0));
        }

        loop_depth++;
        
    }
#line 5376 "parser.tab.c"
    break;

  case 214: /* iteration_statement: FOR LPAREN expression_statement begin_marker expression_statement $@21 begin_marker expression RPAREN begin_marker $@22 statement  */
#line 3349 "parser.y"
                                                        {
        // Add body code
        (yyval.typeinfo) = new TypeInfo();

        (yyval.typeinfo)->code = (yyvsp[-9].typeinfo)->code;

        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());

        // After body, jump back to increment
        TACInstruction* goto_incr = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-5].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_incr);
                
        TACOperand* incr_label = (yyvsp[-2].opinfo);
        
        // next_list contains false_list of condition and next_list of body and break statements
        (yyval.typeinfo)->next_list = (yyvsp[-7].typeinfo)->false_list;
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        
        // Continue statements should jump to increment label
        if(! (yyvsp[0].typeinfo)->continue_list.empty()) {
            backpatch((yyvsp[0].typeinfo)->continue_list, incr_label);
        }
        loop_depth--;
        
        delete (yyvsp[-9].typeinfo); delete (yyvsp[-7].typeinfo); delete (yyvsp[-4].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 5408 "parser.tab.c"
    break;

  case 215: /* begin_marker: %empty  */
#line 3379 "parser.y"
                  {
        // Mark the beginning of a loop for backpatching
        (yyval.opinfo) = new_label(0);
    }
#line 5417 "parser.tab.c"
    break;

  case 216: /* jump_statement: GOTO IDENTIFIER SEMICOLON  */
#line 3386 "parser.y"
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
#line 5437 "parser.tab.c"
    break;

  case 217: /* jump_statement: CONTINUE SEMICOLON  */
#line 3401 "parser.y"
                                                                                                      {
        if (loop_depth == 0) {
            type_error("Continue statement not within loop");
        }
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->continue_list.insert(goto_inst);
    }
#line 5452 "parser.tab.c"
    break;

  case 218: /* jump_statement: BREAK SEMICOLON  */
#line 3411 "parser.y"
                                                                                                   {
        if (loop_depth == 0 && switch_case_stack.empty()) {
            type_error("Break statement not within loop or switch");
        }
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->break_list.insert(goto_inst);
    }
#line 5467 "parser.tab.c"
    break;

  case 219: /* jump_statement: RETURN SEMICOLON  */
#line 3421 "parser.y"
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
#line 5485 "parser.tab.c"
    break;

  case 220: /* jump_statement: RETURN expression SEMICOLON  */
#line 3434 "parser.y"
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
#line 5505 "parser.tab.c"
    break;


#line 5509 "parser.tab.c"

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

#line 3451 "parser.y"


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



