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
  YYSYMBOL_NULL_LITERAL = 21,              /* NULL_LITERAL  */
  YYSYMBOL_INVALID = 22,                   /* INVALID  */
  YYSYMBOL_INCREMENT = 23,                 /* INCREMENT  */
  YYSYMBOL_DECREMENT = 24,                 /* DECREMENT  */
  YYSYMBOL_ARROW = 25,                     /* ARROW  */
  YYSYMBOL_LEFT_SHIFT = 26,                /* LEFT_SHIFT  */
  YYSYMBOL_RIGHT_SHIFT = 27,               /* RIGHT_SHIFT  */
  YYSYMBOL_LOGICAL_AND = 28,               /* LOGICAL_AND  */
  YYSYMBOL_LOGICAL_OR = 29,                /* LOGICAL_OR  */
  YYSYMBOL_EQ = 30,                        /* EQ  */
  YYSYMBOL_NEQ = 31,                       /* NEQ  */
  YYSYMBOL_LE = 32,                        /* LE  */
  YYSYMBOL_GE = 33,                        /* GE  */
  YYSYMBOL_PLUS = 34,                      /* PLUS  */
  YYSYMBOL_MINUS = 35,                     /* MINUS  */
  YYSYMBOL_STAR = 36,                      /* STAR  */
  YYSYMBOL_DIVIDE = 37,                    /* DIVIDE  */
  YYSYMBOL_MOD = 38,                       /* MOD  */
  YYSYMBOL_ASSIGN = 39,                    /* ASSIGN  */
  YYSYMBOL_LT = 40,                        /* LT  */
  YYSYMBOL_GT = 41,                        /* GT  */
  YYSYMBOL_LOGICAL_NOT = 42,               /* LOGICAL_NOT  */
  YYSYMBOL_BIT_AND = 43,                   /* BIT_AND  */
  YYSYMBOL_BIT_OR = 44,                    /* BIT_OR  */
  YYSYMBOL_BIT_XOR = 45,                   /* BIT_XOR  */
  YYSYMBOL_BIT_NOT = 46,                   /* BIT_NOT  */
  YYSYMBOL_DOT = 47,                       /* DOT  */
  YYSYMBOL_COLON = 48,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 49,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 50,                     /* COMMA  */
  YYSYMBOL_LBRACE = 51,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 52,                    /* RBRACE  */
  YYSYMBOL_LPAREN = 53,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 54,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 55,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 56,                  /* RBRACKET  */
  YYSYMBOL_STRUCT = 57,                    /* STRUCT  */
  YYSYMBOL_RETURN = 58,                    /* RETURN  */
  YYSYMBOL_IDENTIFIER = 59,                /* IDENTIFIER  */
  YYSYMBOL_INT_LITERAL = 60,               /* INT_LITERAL  */
  YYSYMBOL_FLOAT_LITERAL = 61,             /* FLOAT_LITERAL  */
  YYSYMBOL_STRING_LITERAL = 62,            /* STRING_LITERAL  */
  YYSYMBOL_CHAR_LITERAL = 63,              /* CHAR_LITERAL  */
  YYSYMBOL_YYACCEPT = 64,                  /* $accept  */
  YYSYMBOL_start = 65,                     /* start  */
  YYSYMBOL_global_declaration = 66,        /* global_declaration  */
  YYSYMBOL_function_definition = 67,       /* function_definition  */
  YYSYMBOL_68_1 = 68,                      /* $@1  */
  YYSYMBOL_marker_fun_begin = 69,          /* marker_fun_begin  */
  YYSYMBOL_declaration = 70,               /* declaration  */
  YYSYMBOL_return_types = 71,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 72,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 73,            /* type_specifier  */
  YYSYMBOL_cast_type_specifier = 74,       /* cast_type_specifier  */
  YYSYMBOL_init_declarator_list = 75,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 76,           /* init_declarator  */
  YYSYMBOL_declarator = 77,                /* declarator  */
  YYSYMBOL_direct_declarator = 78,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 79,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 80,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 81,          /* declaration_list  */
  YYSYMBOL_initializer = 82,               /* initializer  */
  YYSYMBOL_parameter_list = 83,            /* parameter_list  */
  YYSYMBOL_parameter_declaration = 84,     /* parameter_declaration  */
  YYSYMBOL_parameter_declarator = 85,      /* parameter_declarator  */
  YYSYMBOL_parameter_direct_declarator = 86, /* parameter_direct_declarator  */
  YYSYMBOL_primary_expression = 87,        /* primary_expression  */
  YYSYMBOL_postfix_expression = 88,        /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 89,  /* argument_expression_list  */
  YYSYMBOL_unary_expression = 90,          /* unary_expression  */
  YYSYMBOL_unary_operator = 91,            /* unary_operator  */
  YYSYMBOL_cast_expression = 92,           /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 93, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 94,       /* additive_expression  */
  YYSYMBOL_shift_expression = 95,          /* shift_expression  */
  YYSYMBOL_relational_expression = 96,     /* relational_expression  */
  YYSYMBOL_equality_expression = 97,       /* equality_expression  */
  YYSYMBOL_and_expression = 98,            /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 99,   /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 100,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 101,   /* logical_and_expression  */
  YYSYMBOL_102_2 = 102,                    /* $@2  */
  YYSYMBOL_logical_or_expression = 103,    /* logical_or_expression  */
  YYSYMBOL_104_3 = 104,                    /* $@3  */
  YYSYMBOL_conditional_expression = 105,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 106,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 107,      /* assignment_operator  */
  YYSYMBOL_expression = 108,               /* expression  */
  YYSYMBOL_constant_expression = 109,      /* constant_expression  */
  YYSYMBOL_struct_specifier = 110,         /* struct_specifier  */
  YYSYMBOL_struct = 111,                   /* struct  */
  YYSYMBOL_struct_declaration_list = 112,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 113,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 114,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 115,        /* struct_declarator  */
  YYSYMBOL_pointer = 116,                  /* pointer  */
  YYSYMBOL_statement = 117,                /* statement  */
  YYSYMBOL_labeled_statement = 118,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 119,       /* compound_statement  */
  YYSYMBOL_120_4 = 120,                    /* $@4  */
  YYSYMBOL_marker = 121,                   /* marker  */
  YYSYMBOL_statement_list = 122,           /* statement_list  */
  YYSYMBOL_expression_statement = 123,     /* expression_statement  */
  YYSYMBOL_selection_statement = 124,      /* selection_statement  */
  YYSYMBOL_125_5 = 125,                    /* $@5  */
  YYSYMBOL_if_expression = 126,            /* if_expression  */
  YYSYMBOL_127_6 = 127,                    /* $@6  */
  YYSYMBOL_iteration_statement = 128,      /* iteration_statement  */
  YYSYMBOL_129_7 = 129,                    /* $@7  */
  YYSYMBOL_130_8 = 130,                    /* $@8  */
  YYSYMBOL_131_9 = 131,                    /* $@9  */
  YYSYMBOL_begin_marker = 132,             /* begin_marker  */
  YYSYMBOL_jump_statement = 133            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 348 "parser.y"

    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;
    
    // Function symbol table
    map<string, FunctionEntry> function_table;
    
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
        else{
            // For struct types, we can assume a fixed size or look up the struct definition
            // Here, we'll assume a fixed size of 16 bytes for simplicity
            base_size = 16; // Placeholder size for structs
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


    

#line 381 "parser.tab.c"

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
#define YYFINAL  17
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   583

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  70
/* YYNRULES -- Number of rules.  */
#define YYNRULES  162
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  281

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   318


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
      55,    56,    57,    58,    59,    60,    61,    62,    63
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   558,   558,   578,   589,   592,   599,   599,   662,   666,
     670,   722,   726,   727,   734,   738,   742,   746,   750,   759,
     762,   771,   775,   783,   784,   793,   798,   805,   810,   818,
     827,   842,   858,   862,   869,   891,   909,   914,   920,   931,
     935,   940,   949,   968,   973,   980,   990,  1025,  1036,  1047,
    1058,  1071,  1079,  1086,  1087,  1160,  1185,  1220,  1225,  1230,
    1234,  1241,  1247,  1256,  1257,  1261,  1265,  1269,  1276,  1286,
    1287,  1288,  1289,  1290,  1291,  1295,  1296,  1349,  1350,  1354,
    1358,  1365,  1366,  1370,  1378,  1379,  1393,  1410,  1411,  1415,
    1419,  1423,  1430,  1431,  1435,  1442,  1443,  1450,  1451,  1458,
    1459,  1466,  1467,  1467,  1525,  1526,  1526,  1582,  1588,  1589,
    1638,  1642,  1643,  1655,  1663,  1667,  1674,  1678,  1679,  1683,
    1687,  1688,  1692,  1698,  1701,  1710,  1713,  1716,  1719,  1722,
    1725,  1728,  1736,  1747,  1748,  1752,  1752,  1766,  1772,  1777,
    1790,  1800,  1801,  1809,  1816,  1816,  1833,  1837,  1837,  1865,
    1865,  1900,  1900,  1925,  1925,  1949,  1950,  1954,  1961,  1976,
    1983,  1990,  2003
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
  "SWITCH", "CASE", "DEFAULT", "SIZEOF", "STATIC", "GOTO", "NULL_LITERAL",
  "INVALID", "INCREMENT", "DECREMENT", "ARROW", "LEFT_SHIFT",
  "RIGHT_SHIFT", "LOGICAL_AND", "LOGICAL_OR", "EQ", "NEQ", "LE", "GE",
  "PLUS", "MINUS", "STAR", "DIVIDE", "MOD", "ASSIGN", "LT", "GT",
  "LOGICAL_NOT", "BIT_AND", "BIT_OR", "BIT_XOR", "BIT_NOT", "DOT", "COLON",
  "SEMICOLON", "COMMA", "LBRACE", "RBRACE", "LPAREN", "RPAREN", "LBRACKET",
  "RBRACKET", "STRUCT", "RETURN", "IDENTIFIER", "INT_LITERAL",
  "FLOAT_LITERAL", "STRING_LITERAL", "CHAR_LITERAL", "$accept", "start",
  "global_declaration", "function_definition", "$@1", "marker_fun_begin",
  "declaration", "return_types", "declaration_specifiers",
  "type_specifier", "cast_type_specifier", "init_declarator_list",
  "init_declarator", "declarator", "direct_declarator", "fun_declarator",
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
  "constant_expression", "struct_specifier", "struct",
  "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "pointer", "statement",
  "labeled_statement", "compound_statement", "$@4", "marker",
  "statement_list", "expression_statement", "selection_statement", "$@5",
  "if_expression", "$@6", "iteration_statement", "$@7", "$@8", "$@9",
  "begin_marker", "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-224)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-141)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      89,  -224,  -224,  -224,  -224,    40,  -224,     9,  -224,  -224,
    -224,   -10,  -224,  -224,  -224,   -39,  -224,  -224,  -224,    62,
    -224,    88,    80,  -224,   -12,    12,  -224,  -224,    47,    86,
    -224,    31,   -38,  -224,   -30,   458,    93,  -224,    12,  -224,
      40,  -224,    27,    51,  -224,    98,   106,   124,  -224,   122,
     489,  -224,   520,   520,  -224,  -224,  -224,  -224,  -224,  -224,
     115,  -224,  -224,  -224,  -224,  -224,  -224,  -224,    87,   156,
     458,  -224,    79,   130,   144,    -9,   158,   140,   177,   186,
     203,   204,  -224,  -224,   176,   178,   187,   -30,    50,  -224,
    -224,  -224,  -224,   181,    89,  -224,  -224,  -224,   115,  -224,
     458,  -224,  -224,   201,   189,  -224,    59,  -224,  -224,   182,
     188,   324,   458,  -224,   458,  -224,  -224,   458,   458,   458,
     458,   458,   458,   458,   458,   458,   458,   458,   458,   458,
     458,   458,   458,  -224,  -224,  -224,  -224,  -224,  -224,  -224,
     141,  -224,  -224,  -224,  -224,  -224,   194,  -224,   458,   458,
    -224,  -224,  -224,  -224,    73,  -224,     1,  -224,  -224,  -224,
    -224,    79,    79,   130,   130,   144,   144,   144,   144,    -9,
      -9,   158,   140,   177,   458,   458,    89,  -224,   -30,  -224,
    -224,  -224,   458,  -224,  -224,   186,   203,  -224,    55,   193,
    -224,  -224,   200,   205,   206,  -224,  -224,  -224,   211,   212,
     209,   458,   216,   219,  -224,   358,   227,  -224,   143,  -224,
    -224,  -224,   229,  -224,  -224,   274,  -224,  -224,  -224,   458,
     391,   230,   256,   231,  -224,  -224,   458,  -224,   237,   256,
     238,  -224,   169,  -224,  -224,  -224,   256,  -224,    78,  -224,
     458,  -224,   458,    81,   256,  -224,  -224,  -224,   256,  -224,
     256,  -224,   391,    94,   276,   239,   256,  -224,  -224,  -224,
     256,   424,  -224,   235,   240,  -224,  -224,   256,   113,   256,
    -224,   256,  -224,   256,  -224,   458,  -224,  -224,   119,   244,
    -224
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    16,    17,    15,    14,     0,   116,     0,     2,     4,
       5,     0,    11,    12,    18,     0,    13,     1,     3,   123,
       9,    27,     0,    21,    23,    26,     8,    33,     0,   115,
     124,     0,     0,    10,     0,     0,     0,     6,    25,    32,
       0,    35,     0,     0,    40,     0,     0,    27,    22,     0,
       0,    51,     0,     0,    71,    72,    70,    74,    69,    73,
       0,    46,    47,    48,    50,    49,    24,    53,    63,    75,
       0,    77,    81,    84,    87,    92,    95,    97,    99,   101,
     104,   107,   108,    39,     0,     0,     0,     0,     0,   117,
      45,    42,    44,     0,     0,    34,    29,    30,     0,    67,
       0,    64,    65,    19,     0,   111,     0,    59,    60,     0,
       0,     0,     0,   110,     0,    75,    66,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   102,   105,    28,    31,   135,     7,   122,
       0,   120,   114,   118,    43,    41,     0,    20,     0,     0,
      52,    58,    57,    55,     0,    61,     0,   109,    78,    79,
      80,    82,    83,    85,    86,    90,    91,    88,    89,    93,
      94,    96,    98,   100,     0,     0,    38,   119,     0,    68,
      76,   112,     0,    56,    54,   103,   106,    36,     0,     0,
     121,    62,     0,     0,     0,   157,   157,   157,     0,     0,
       0,     0,     0,     0,   141,     0,    46,    37,     0,   138,
     125,   126,   137,   127,   128,   143,   129,   130,   131,     0,
       0,     0,     0,     0,   160,   159,     0,   113,     0,     0,
       0,   161,     0,   137,   142,   136,     0,   144,     0,   157,
       0,   153,     0,     0,     0,   134,   158,   162,     0,   139,
       0,   147,     0,     0,     0,   151,     0,   133,   132,   145,
       0,     0,   149,     0,     0,   146,   148,     0,     0,     0,
     137,     0,   155,     0,   150,     0,   152,   156,     0,     0,
     154
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -224,  -224,   288,  -224,  -224,  -224,  -159,   -29,  -224,     2,
    -224,  -224,   262,   -82,    75,  -224,   269,  -224,  -224,  -224,
     207,  -224,   210,  -224,  -224,  -224,   -49,  -224,   -59,   100,
     101,    60,    97,   170,   173,   179,   134,   135,  -224,  -224,
    -224,   111,   -27,  -224,   -60,  -224,  -224,  -224,  -224,   233,
    -224,   145,    22,    84,  -224,   236,  -224,  -223,  -224,  -204,
    -224,  -224,  -224,  -224,  -224,  -224,  -224,  -224,  -178,  -224
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,     7,     8,     9,    86,    37,    10,    11,    12,    13,
     104,    22,    23,    24,    25,    26,    27,   189,    66,    43,
      44,    91,    92,    67,    68,   154,    69,    70,    71,    72,
      73,    74,    75,    76,    77,    78,    79,    80,   174,    81,
     175,    82,   105,   114,   208,   228,    14,    15,    88,    89,
     140,   141,    49,   209,   210,   211,   176,   236,   212,   213,
     214,   250,   215,   260,   216,   269,   264,   254,   221,   217
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     106,    99,    42,   101,   102,   139,    19,    16,    83,    17,
     248,   116,     1,     2,     3,     4,   239,   187,   222,   223,
      29,   115,    45,   124,   125,    46,    19,    35,     5,    47,
     207,   126,   127,    28,     1,     2,     3,     4,   106,    20,
     106,    30,    87,     1,     2,     3,     4,   275,   261,    21,
       5,   149,   156,     1,     2,     3,     4,   184,   158,   159,
     160,   252,   103,    19,    93,    42,     6,    36,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   155,    41,    90,   157,     6,   180,
      87,    19,     1,     2,     3,     4,   139,     6,    19,   115,
     146,    94,   142,    38,    20,    95,    21,     6,     5,   149,
     107,   108,   109,   150,    47,   117,   118,   119,     1,     2,
       3,     4,   181,   182,    38,   115,   115,   183,   149,    33,
      34,   149,   251,    50,   110,   256,    51,    40,    52,    53,
     111,    31,   112,    32,   149,   232,     6,   188,   262,    54,
      55,    56,   115,    84,    96,   191,    85,    57,    58,   238,
     188,    59,    97,   149,   120,   121,   243,   273,    60,   149,
     122,   123,     6,   279,    61,    62,    63,    64,    65,    32,
     253,    47,   255,   130,   165,   166,   167,   168,   128,   129,
     177,   178,   234,   149,   192,   113,     1,     2,     3,     4,
     193,   268,   194,   195,   196,   197,   198,   199,   200,   201,
     202,    50,     5,   203,    51,   278,    52,    53,   247,   149,
     161,   162,   131,   163,   164,   169,   170,    54,    55,    56,
     132,   133,   135,   134,   136,    57,    58,   147,   137,    59,
      90,   151,   204,   148,   137,  -140,    60,   152,   179,   218,
       6,   205,   206,    62,    63,    64,    65,   192,   219,   220,
     224,   225,   226,   193,   229,   194,   195,   196,   197,   198,
     199,   200,   201,   202,    50,   233,   203,    51,   230,    52,
      53,   235,   237,   240,   242,   244,   263,   246,   270,   149,
      54,    55,    56,   280,   271,    18,    48,    39,    57,    58,
     171,   145,    59,   144,   172,   204,   241,   137,   185,    60,
     186,   173,   227,   245,   205,   206,    62,    63,    64,    65,
     249,   143,   138,   190,     0,     0,     0,     0,   257,     0,
       0,     0,   258,     0,   259,     0,     0,     0,     0,     0,
     265,     0,    50,     0,   266,    51,     0,    52,    53,     0,
       0,   272,     0,   274,     0,   276,     0,   277,    54,    55,
      56,     0,     0,     0,     0,     0,    57,    58,     0,     0,
      59,     0,     0,     0,     0,     0,    50,    60,   153,    51,
       0,    52,    53,    61,    62,    63,    64,    65,     0,     0,
       0,     0,    54,    55,    56,     0,     0,     0,     0,     0,
      57,    58,     0,     0,    59,     0,     0,   231,     0,    50,
       0,    60,    51,     0,    52,    53,     0,    61,    62,    63,
      64,    65,     0,     0,     0,    54,    55,    56,     0,     0,
       0,     0,     0,    57,    58,     0,     0,    59,     0,     0,
     204,     0,    50,     0,    60,    51,     0,    52,    53,     0,
      61,    62,    63,    64,    65,     0,     0,     0,    54,    55,
      56,     0,     0,     0,     0,     0,    57,    58,     0,     0,
      59,     0,     0,     0,     0,     0,    50,    60,   267,    51,
       0,    52,    53,    61,    62,    63,    64,    65,     0,     0,
       0,     0,    54,    55,    56,     0,     0,     0,     0,     0,
      57,    58,     0,     0,    59,     0,     0,    50,     0,     0,
      51,    60,    52,    53,     0,     0,     0,    61,    62,    63,
      64,    65,     0,    54,    55,    56,     0,     0,     0,     0,
       0,    57,    58,     0,     0,    59,     0,     0,    50,     0,
       0,    51,    98,    52,    53,     0,     0,     0,    61,    62,
      63,    64,    65,     0,    54,    55,    56,     0,     0,     0,
       0,     0,    57,    58,     0,     0,    59,     0,     0,     0,
       0,     0,     0,   100,     0,     0,     0,     0,     0,    61,
      62,    63,    64,    65
};

static const yytype_int16 yycheck[] =
{
      60,    50,    31,    52,    53,    87,    36,     5,    35,     0,
     233,    70,     3,     4,     5,     6,   220,   176,   196,   197,
      59,    70,    60,    32,    33,    63,    36,    39,    19,    59,
     189,    40,    41,    11,     3,     4,     5,     6,    98,    49,
     100,    19,    40,     3,     4,     5,     6,   270,   252,    59,
      19,    50,   112,     3,     4,     5,     6,    56,   117,   118,
     119,   239,    60,    36,    42,    94,    57,    55,   117,   118,
     119,   120,   121,   122,   123,   124,   125,   126,   127,   128,
     129,   130,   131,   132,   111,    54,    59,   114,    57,   148,
      88,    36,     3,     4,     5,     6,   178,    57,    36,   148,
      98,    50,    52,    28,    49,    54,    59,    57,    19,    50,
      23,    24,    25,    54,    59,    36,    37,    38,     3,     4,
       5,     6,   149,    50,    49,   174,   175,    54,    50,    49,
      50,    50,    54,    18,    47,    54,    21,    51,    23,    24,
      53,    53,    55,    55,    50,   205,    57,   176,    54,    34,
      35,    36,   201,    60,    56,   182,    63,    42,    43,   219,
     189,    46,    56,    50,    34,    35,   226,    54,    53,    50,
      26,    27,    57,    54,    59,    60,    61,    62,    63,    55,
     240,    59,   242,    43,   124,   125,   126,   127,    30,    31,
      49,    50,    49,    50,     1,    39,     3,     4,     5,     6,
       7,   261,     9,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    20,    21,   275,    23,    24,    49,    50,
     120,   121,    45,   122,   123,   128,   129,    34,    35,    36,
      44,    28,    56,    29,    56,    42,    43,    36,    51,    46,
      59,    59,    49,    54,    51,    52,    53,    59,    54,    49,
      57,    58,    59,    60,    61,    62,    63,     1,    53,    53,
      49,    49,    53,     7,    48,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    48,    20,    21,    59,    23,
      24,    52,     8,    53,    53,    48,    10,    49,    53,    50,
      34,    35,    36,    49,    54,     7,    34,    28,    42,    43,
     130,    94,    46,    93,   131,    49,   222,    51,   174,    53,
     175,   132,   201,   229,    58,    59,    60,    61,    62,    63,
     236,    88,    86,   178,    -1,    -1,    -1,    -1,   244,    -1,
      -1,    -1,   248,    -1,   250,    -1,    -1,    -1,    -1,    -1,
     256,    -1,    18,    -1,   260,    21,    -1,    23,    24,    -1,
      -1,   267,    -1,   269,    -1,   271,    -1,   273,    34,    35,
      36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,
      46,    -1,    -1,    -1,    -1,    -1,    18,    53,    54,    21,
      -1,    23,    24,    59,    60,    61,    62,    63,    -1,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    49,    -1,    18,
      -1,    53,    21,    -1,    23,    24,    -1,    59,    60,    61,
      62,    63,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      49,    -1,    18,    -1,    53,    21,    -1,    23,    24,    -1,
      59,    60,    61,    62,    63,    -1,    -1,    -1,    34,    35,
      36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,
      46,    -1,    -1,    -1,    -1,    -1,    18,    53,    54,    21,
      -1,    23,    24,    59,    60,    61,    62,    63,    -1,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    18,    -1,    -1,
      21,    53,    23,    24,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,
      -1,    42,    43,    -1,    -1,    46,    -1,    -1,    18,    -1,
      -1,    21,    53,    23,    24,    -1,    -1,    -1,    59,    60,
      61,    62,    63,    -1,    34,    35,    36,    -1,    -1,    -1,
      -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,    -1,
      -1,    -1,    -1,    53,    -1,    -1,    -1,    -1,    -1,    59,
      60,    61,    62,    63
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      70,    71,    72,    73,   110,   111,    73,     0,    66,    36,
      49,    59,    75,    76,    77,    78,    79,    80,   116,    59,
     116,    53,    55,    49,    50,    39,    55,    69,    78,    80,
      51,    54,    71,    83,    84,    60,    63,    59,    76,   116,
      18,    21,    23,    24,    34,    35,    36,    42,    43,    46,
      53,    59,    60,    61,    62,    63,    82,    87,    88,    90,
      91,    92,    93,    94,    95,    96,    97,    98,    99,   100,
     101,   103,   105,   106,    60,    63,    68,    73,   112,   113,
      59,    85,    86,   116,    50,    54,    56,    56,    53,    90,
      53,    90,    90,    73,    74,   106,   108,    23,    24,    25,
      47,    53,    55,    39,   107,    90,    92,    36,    37,    38,
      34,    35,    26,    27,    32,    33,    40,    41,    30,    31,
      43,    45,    44,    28,    29,    56,    56,    51,   119,    77,
     114,   115,    52,   113,    86,    84,    73,    36,    54,    50,
      54,    59,    59,    54,    89,   106,   108,   106,    92,    92,
      92,    93,    93,    94,    94,    95,    95,    95,    95,    96,
      96,    97,    98,    99,   102,   104,   120,    49,    50,    54,
      92,   106,    50,    54,    56,   100,   101,    70,    71,    81,
     115,   106,     1,     7,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    20,    49,    58,    59,    70,   108,   117,
     118,   119,   122,   123,   124,   126,   128,   133,    49,    53,
      53,   132,   132,   132,    49,    49,    53,   105,   109,    48,
      59,    49,   108,    48,    49,    52,   121,     8,   108,   123,
      53,   117,    53,   108,    48,   117,    49,    49,   121,   117,
     125,    54,   132,   108,   131,   108,    54,   117,   117,   117,
     127,   123,    54,    10,   130,   117,   117,    54,   108,   129,
      53,    54,   117,    54,   117,   121,   117,   117,   108,    54,
      49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    68,    67,    69,    70,
      70,    71,    72,    72,    73,    73,    73,    73,    73,    74,
      74,    75,    75,    76,    76,    77,    77,    78,    78,    78,
      78,    78,    79,    79,    80,    80,    81,    81,    81,    82,
      83,    83,    84,    85,    85,    86,    87,    87,    87,    87,
      87,    87,    87,    88,    88,    88,    88,    88,    88,    88,
      88,    89,    89,    90,    90,    90,    90,    90,    90,    91,
      91,    91,    91,    91,    91,    92,    92,    93,    93,    93,
      93,    94,    94,    94,    95,    95,    95,    96,    96,    96,
      96,    96,    97,    97,    97,    98,    98,    99,    99,   100,
     100,   101,   102,   101,   103,   104,   103,   105,   106,   106,
     107,   108,   108,   109,   110,   110,   111,   112,   112,   113,
     114,   114,   115,   116,   116,   117,   117,   117,   117,   117,
     117,   117,   118,   118,   118,   120,   119,   121,   122,   122,
     122,   123,   123,   124,   125,   124,   124,   127,   126,   129,
     128,   130,   128,   131,   128,   128,   128,   132,   133,   133,
     133,   133,   133
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     0,     5,     0,     2,
       3,     1,     1,     2,     1,     1,     1,     1,     1,     1,
       2,     1,     3,     1,     3,     2,     1,     1,     4,     4,
       4,     4,     2,     1,     4,     3,     1,     2,     0,     1,
       1,     3,     2,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     4,     3,     4,     3,     3,     2,
       2,     1,     3,     1,     2,     2,     2,     2,     4,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     0,     4,     1,     0,     4,     1,     1,     3,
       1,     1,     3,     1,     5,     2,     1,     1,     2,     3,
       1,     3,     1,     1,     2,     1,     1,     1,     1,     1,
       1,     2,     4,     4,     3,     0,     5,     0,     1,     3,
       0,     1,     2,     1,     0,     4,     5,     0,     6,     0,
       7,     0,     7,     0,    10,     7,     8,     0,     3,     2,
       2,     2,     3
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
#line 558 "parser.y"
                                                                       {
       (yyval.typeinfo) = (yyvsp[0].typeinfo);
       
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
#line 1635 "parser.tab.c"
    break;

  case 3: /* start: start global_declaration  */
#line 578 "parser.y"
                                                                                {
        // Append $2->code to $1->code
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        delete (yyvsp[0].typeinfo);
    }
#line 1646 "parser.tab.c"
    break;

  case 4: /* global_declaration: function_definition  */
#line 589 "parser.y"
                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 1654 "parser.tab.c"
    break;

  case 5: /* global_declaration: declaration  */
#line 592 "parser.y"
                          {
        (yyval.typeinfo) = new TypeInfo();
        // kyunki global declaration ka koi 3AC generate nahi hota
    }
#line 1663 "parser.tab.c"
    break;

  case 6: /* $@1: %empty  */
#line 599 "parser.y"
                                                       {
        // Generate function begin instruction
        string mangled_name = mangle_function_name((yyvsp[-1].declinfo)->name, (yyvsp[-1].declinfo)->paramTypes ? *(yyvsp[-1].declinfo)->paramTypes : vector<TypeInfo>());
        TACOperand* func_label = new_identifier(mangled_name);
        (yyvsp[0].typeinfo) = new TypeInfo();
         TACInstruction* func_begin = emit(TACOperator(TAC_OPERATOR_FUNC_BEGIN), 
                                       new_identifier((yyvsp[-1].declinfo)->name), 
                                       new_empty_var(), 
                                       new_empty_var(), 0);
        (yyvsp[0].typeinfo)->code.push_back(func_begin);

        // -------------------------- RETURN TYPE ------------------------------------------
        TypeInfo returnType = *(yyvsp[-2].typeinfo);
        returnType.pointerLevel = (yyvsp[-1].declinfo)->pointerLevel;  // Handle multi-level pointers
        current_function_return_type = new TypeInfo(returnType); // Store return type for return statements
    }
#line 1684 "parser.tab.c"
    break;

  case 7: /* function_definition: return_types fun_declarator marker_fun_begin $@1 compound_statement  */
#line 614 "parser.y"
                         {               /* e.g., int f() { ... } */
		// Register function definition
		TypeInfo returnType = *(yyvsp[-4].typeinfo);
		returnType.pointerLevel = (yyvsp[-3].declinfo)->pointerLevel;  // Handle multi-level pointers


		
		if ((yyvsp[-3].declinfo)->isFunction && (yyvsp[-3].declinfo)->paramTypes) {
			insert_function((yyvsp[-3].declinfo)->name, returnType, *(yyvsp[-3].declinfo)->paramTypes);
			cout << "Function definition: " << (yyvsp[-3].declinfo)->name << " registered\n";
		}

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
#line 1733 "parser.tab.c"
    break;

  case 9: /* declaration: return_types SEMICOLON  */
#line 666 "parser.y"
                                 { 
        (yyval.typeinfo) = new TypeInfo();
        delete (yyvsp[-1].typeinfo); 
    }
#line 1742 "parser.tab.c"
    break;

  case 10: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 670 "parser.y"
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
#line 1794 "parser.tab.c"
    break;

  case 11: /* return_types: declaration_specifiers  */
#line 722 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1800 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: type_specifier  */
#line 726 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1806 "parser.tab.c"
    break;

  case 13: /* declaration_specifiers: STATIC type_specifier  */
#line 727 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1815 "parser.tab.c"
    break;

  case 14: /* type_specifier: VOID  */
#line 734 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1824 "parser.tab.c"
    break;

  case 15: /* type_specifier: CHAR  */
#line 738 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1833 "parser.tab.c"
    break;

  case 16: /* type_specifier: INT  */
#line 742 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1842 "parser.tab.c"
    break;

  case 17: /* type_specifier: FLOAT  */
#line 746 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1851 "parser.tab.c"
    break;

  case 18: /* type_specifier: struct_specifier  */
#line 750 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1861 "parser.tab.c"
    break;

  case 19: /* cast_type_specifier: type_specifier  */
#line 759 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 1869 "parser.tab.c"
    break;

  case 20: /* cast_type_specifier: type_specifier STAR  */
#line 762 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
#line 1878 "parser.tab.c"
    break;

  case 21: /* init_declarator_list: init_declarator  */
#line 771 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1887 "parser.tab.c"
    break;

  case 22: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 775 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1896 "parser.tab.c"
    break;

  case 23: /* init_declarator: declarator  */
#line 783 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1902 "parser.tab.c"
    break;

  case 24: /* init_declarator: declarator ASSIGN initializer  */
#line 784 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1911 "parser.tab.c"
    break;

  case 25: /* declarator: pointer direct_declarator  */
#line 793 "parser.y"
                                    {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels from $1 to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 1921 "parser.tab.c"
    break;

  case 26: /* declarator: direct_declarator  */
#line 798 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1929 "parser.tab.c"
    break;

  case 27: /* direct_declarator: IDENTIFIER  */
#line 805 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1939 "parser.tab.c"
    break;

  case 28: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 810 "parser.y"
                                                          {     /* e.g., arr[10] or arr[10][20] */ 
		(yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 1952 "parser.tab.c"
    break;

  case 29: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 818 "parser.y"
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
#line 1967 "parser.tab.c"
    break;

  case 30: /* direct_declarator: IDENTIFIER LBRACKET CHAR_LITERAL RBRACKET  */
#line 827 "parser.y"
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
#line 1988 "parser.tab.c"
    break;

  case 31: /* direct_declarator: direct_declarator LBRACKET CHAR_LITERAL RBRACKET  */
#line 842 "parser.y"
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
#line 2007 "parser.tab.c"
    break;

  case 32: /* fun_declarator: pointer fun_direct_declarator  */
#line 858 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);  // Function returns a pointer (possibly multi-level)
  	}
#line 2016 "parser.tab.c"
    break;

  case 33: /* fun_declarator: fun_direct_declarator  */
#line 862 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2024 "parser.tab.c"
    break;

  case 34: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 869 "parser.y"
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
#line 2051 "parser.tab.c"
    break;

  case 35: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 891 "parser.y"
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
#line 2069 "parser.tab.c"
    break;

  case 36: /* declaration_list: declaration  */
#line 909 "parser.y"
                         {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[0].typeinfo)->code; // Carry forward the code from the declaration
        delete (yyvsp[0].typeinfo);
    }
#line 2079 "parser.tab.c"
    break;

  case 37: /* declaration_list: declaration_list declaration  */
#line 914 "parser.y"
                                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        // Append the code from the new declaration
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        delete (yyvsp[0].typeinfo);
    }
#line 2090 "parser.tab.c"
    break;

  case 38: /* declaration_list: %empty  */
#line 920 "parser.y"
                           {
        (yyval.typeinfo) = new TypeInfo(); // Empty declaration list
    }
#line 2098 "parser.tab.c"
    break;

  case 39: /* initializer: assignment_expression  */
#line 931 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2104 "parser.tab.c"
    break;

  case 40: /* parameter_list: parameter_declaration  */
#line 935 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2114 "parser.tab.c"
    break;

  case 41: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 940 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2124 "parser.tab.c"
    break;

  case 42: /* parameter_declaration: return_types parameter_declarator  */
#line 949 "parser.y"
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
#line 2145 "parser.tab.c"
    break;

  case 43: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 968 "parser.y"
                                              {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 2155 "parser.tab.c"
    break;

  case 44: /* parameter_declarator: parameter_direct_declarator  */
#line 973 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2163 "parser.tab.c"
    break;

  case 45: /* parameter_direct_declarator: IDENTIFIER  */
#line 980 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2173 "parser.tab.c"
    break;

  case 46: /* primary_expression: IDENTIFIER  */
#line 990 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
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
            // iske baad kuch nhi karna chahiye, 
        }
        // Otherwise, it's undefined
        else {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);
            (yyval.typeinfo)->isLvalue = false;
            type_error("Undefined variable: " + *(yyvsp[0].sval));
        }
        delete (yyvsp[0].sval);
    }
#line 2213 "parser.tab.c"
    break;

  case 47: /* primary_expression: INT_LITERAL  */
#line 1025 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";

        (yyval.typeinfo)->result = new_constant(to_string((yyvsp[0].ival)));


    }
#line 2229 "parser.tab.c"
    break;

  case 48: /* primary_expression: FLOAT_LITERAL  */
#line 1036 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";

        string floatStr = float_to_string_conversion((yyvsp[0].fval));
        (yyval.typeinfo)->result = new_constant(floatStr);

    }
#line 2245 "parser.tab.c"
    break;

  case 49: /* primary_expression: CHAR_LITERAL  */
#line 1047 "parser.y"
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
#line 2261 "parser.tab.c"
    break;

  case 50: /* primary_expression: STRING_LITERAL  */
#line 1058 "parser.y"
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
#line 2279 "parser.tab.c"
    break;

  case 51: /* primary_expression: NULL_LITERAL  */
#line 1071 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->pointerLevel = 1;  // NULL is a void pointer
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // NULL is not an lvalue
        cout << "NULL literal (type: void*)\n";
    }
#line 2292 "parser.tab.c"
    break;

  case 52: /* primary_expression: LPAREN expression RPAREN  */
#line 1079 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 2300 "parser.tab.c"
    break;

  case 53: /* postfix_expression: primary_expression  */
#line 1086 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2306 "parser.tab.c"
    break;

  case 54: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 1087 "parser.y"
                                                          {              /* e.g., arr[i] */
		// Array subscripting: arr[i] or ptr[i]
		TypeInfo* base = (yyvsp[-3].typeinfo);
		TypeInfo* index = (yyvsp[-1].typeinfo);

        //cout<<base->isArray<<" MEOW "<<base->pointerLevel<<"\n";
		
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
				if (base->arrayDimensions.size() > 1) {
					// Remove only the first dimension, keep the rest
					(yyval.typeinfo)->isArray = true;
					(yyval.typeinfo)->arrayDimensions = vector<int>(base->arrayDimensions.begin() + 1, base->arrayDimensions.end());
				} else {
					// Single dimension array becomes base type
					(yyval.typeinfo)->isArray = false;
					(yyval.typeinfo)->arrayDimensions.clear();
				}
			} else {
				// Handle pointers - only allow one level pointers for subscript
				if (base->pointerLevel > 1) {
					type_error("Subscript operator [] can only be applied to single-level pointers, not multi-level pointers like " + base->toString());
					(yyval.typeinfo)->baseType = "error";
				} else {
					// For single-level pointers, decrement pointer level
					(yyval.typeinfo)->pointerLevel = base->pointerLevel > 0 ? base->pointerLevel - 1 : 0;
					(yyval.typeinfo)->isArray = false;
					(yyval.typeinfo)->arrayDimensions.clear();
				}
			}
			
			(yyval.typeinfo)->isLiteral = false;
			// Array subscript result is an lvalue if the base is an lvalue
			(yyval.typeinfo)->isLvalue = base->isLvalue;
			cout << "Array subscript: " << base->toString() << "[" << index->toString() << "] -> " << (yyval.typeinfo)->toString() << "\n";

            int size_of_base = getSize(*base);
            
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
#line 2384 "parser.tab.c"
    break;

  case 55: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 1160 "parser.y"
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
#line 2414 "parser.tab.c"
    break;

  case 56: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 1185 "parser.y"
                                                                    {      /* e.g., func(a,b) */
		// Function call with arguments
		TypeInfo* base = (yyvsp[-3].typeinfo);
		vector<TypeInfo>* argTypes = (yyvsp[-1].typelist);
		
		if (!base->identifier.empty() && argTypes) {
			// Try to resolve function call
			FunctionEntry* func = lookup_function(base->identifier, *argTypes);
			
			if (func) {
				(yyval.typeinfo) = new TypeInfo(func->returnType);
				(yyval.typeinfo)->isLiteral = false;
				cout << "Function call: " << base->identifier << "(...) -> " << (yyval.typeinfo)->toString() << "\n";
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
#line 2454 "parser.tab.c"
    break;

  case 57: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 1220 "parser.y"
                                            {                            /* e.g., obj.field */
		// Struct member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2464 "parser.tab.c"
    break;

  case 58: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 1225 "parser.y"
                                              {                             /* e.g., ptr->field */
		// Struct pointer member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2474 "parser.tab.c"
    break;

  case 59: /* postfix_expression: postfix_expression INCREMENT  */
#line 1230 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 2483 "parser.tab.c"
    break;

  case 60: /* postfix_expression: postfix_expression DECREMENT  */
#line 1234 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--"); 
		delete (yyvsp[-1].typeinfo);
	}
#line 2492 "parser.tab.c"
    break;

  case 61: /* argument_expression_list: assignment_expression  */
#line 1241 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2503 "parser.tab.c"
    break;

  case 62: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 1247 "parser.y"
                                                               {           /* e.g., x, y */
		(yyval.typelist) = (yyvsp[-2].typelist);
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2514 "parser.tab.c"
    break;

  case 63: /* unary_expression: postfix_expression  */
#line 1256 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2520 "parser.tab.c"
    break;

  case 64: /* unary_expression: INCREMENT unary_expression  */
#line 1257 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");    
		delete (yyvsp[0].typeinfo);
	}
#line 2529 "parser.tab.c"
    break;

  case 65: /* unary_expression: DECREMENT unary_expression  */
#line 1261 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 2538 "parser.tab.c"
    break;

  case 66: /* unary_expression: unary_operator cast_expression  */
#line 1265 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
        delete (yyvsp[0].typeinfo);
	}
#line 2547 "parser.tab.c"
    break;

  case 67: /* unary_expression: SIZEOF unary_expression  */
#line 1269 "parser.y"
                                  { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof operation result type: int\n";
		delete (yyvsp[0].typeinfo);
	}
#line 2559 "parser.tab.c"
    break;

  case 68: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 1276 "parser.y"
                                              { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof(" << (yyvsp[-1].typeinfo)->toString() << ") result type: int\n";
		delete (yyvsp[-1].typeinfo);
	}
#line 2571 "parser.tab.c"
    break;

  case 69: /* unary_operator: BIT_AND  */
#line 1286 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 2577 "parser.tab.c"
    break;

  case 70: /* unary_operator: STAR  */
#line 1287 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 2583 "parser.tab.c"
    break;

  case 71: /* unary_operator: PLUS  */
#line 1288 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 2589 "parser.tab.c"
    break;

  case 72: /* unary_operator: MINUS  */
#line 1289 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 2595 "parser.tab.c"
    break;

  case 73: /* unary_operator: BIT_NOT  */
#line 1290 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 2601 "parser.tab.c"
    break;

  case 74: /* unary_operator: LOGICAL_NOT  */
#line 1291 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 2607 "parser.tab.c"
    break;

  case 75: /* cast_expression: unary_expression  */
#line 1295 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2613 "parser.tab.c"
    break;

  case 76: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 1296 "parser.y"
                                                            {                         /* e.g., (int) x, (int*) x */
		TypeInfo* target_type = (yyvsp[-2].typeinfo);
		TypeInfo* source_type = (yyvsp[0].typeinfo);
		
		// Type casting validation
		if (source_type->baseType == "error") {
			(yyval.typeinfo) = source_type;
		} else if (is_numeric_type(target_type->baseType) && is_numeric_type(source_type->baseType) 
		           && target_type->pointerLevel == 0 && !target_type->isArray 
		           && source_type->pointerLevel == 0 && !source_type->isArray) {
			// Numeric type casting is allowed (but not between pointers/arrays and numerics)
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = source_type->isLiteral;
			cout << "Cast: (" << target_type->toString() << ")" << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if (target_type->baseType == "void" && target_type->pointerLevel > 0 && !target_type->isArray) {
			// Casting to void* is allowed from any pointer type
			if (source_type->pointerLevel > 0 && !source_type->isArray) {
				(yyval.typeinfo) = new TypeInfo(*target_type);
				(yyval.typeinfo)->isLiteral = false;
				cout << "Cast to void*: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
			} else {
				type_error("Cannot cast non-pointer type " + source_type->toString() + " to void*");
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			}
		} else if (source_type->pointerLevel > 0 && target_type->pointerLevel > 0 
		           && !source_type->isArray && !target_type->isArray) {
			// Pointer to pointer casting (excluding arrays)
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = false;
			cout << "Pointer cast: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if ((source_type->pointerLevel > 0 || source_type->isArray) && is_numeric_type(target_type->baseType) && target_type->pointerLevel == 0 && !target_type->isArray) {
			// Pointer/array to integer cast (for address arithmetic, but warn)
			type_warning("Casting pointer/array " + source_type->toString() + " to numeric type " + target_type->toString());
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = false;
			cout << "Pointer-to-numeric cast: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if (is_numeric_type(source_type->baseType) && source_type->pointerLevel == 0 && !source_type->isArray && target_type->pointerLevel > 0 && !target_type->isArray) {
			// Integer to pointer cast (dangerous but allowed with warning)
			type_warning("Casting numeric type " + source_type->toString() + " to pointer " + target_type->toString());
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = false;
			cout << "Numeric-to-pointer cast: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else {
			type_error("Invalid cast from " + source_type->toString() + " to " + target_type->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		}
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2668 "parser.tab.c"
    break;

  case 77: /* multiplicative_expression: cast_expression  */
#line 1349 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2674 "parser.tab.c"
    break;

  case 78: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 1350 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2683 "parser.tab.c"
    break;

  case 79: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 1354 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2692 "parser.tab.c"
    break;

  case 80: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 1358 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2701 "parser.tab.c"
    break;

  case 81: /* additive_expression: multiplicative_expression  */
#line 1365 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2707 "parser.tab.c"
    break;

  case 82: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 1366 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2716 "parser.tab.c"
    break;

  case 83: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 1370 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2725 "parser.tab.c"
    break;

  case 84: /* shift_expression: additive_expression  */
#line 1378 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2731 "parser.tab.c"
    break;

  case 85: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 1379 "parser.y"
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
		}
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2750 "parser.tab.c"
    break;

  case 86: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 1393 "parser.y"
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
		}
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2769 "parser.tab.c"
    break;

  case 87: /* relational_expression: shift_expression  */
#line 1410 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2775 "parser.tab.c"
    break;

  case 88: /* relational_expression: relational_expression LT shift_expression  */
#line 1411 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2784 "parser.tab.c"
    break;

  case 89: /* relational_expression: relational_expression GT shift_expression  */
#line 1415 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2793 "parser.tab.c"
    break;

  case 90: /* relational_expression: relational_expression LE shift_expression  */
#line 1419 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2802 "parser.tab.c"
    break;

  case 91: /* relational_expression: relational_expression GE shift_expression  */
#line 1423 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2811 "parser.tab.c"
    break;

  case 92: /* equality_expression: relational_expression  */
#line 1430 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2817 "parser.tab.c"
    break;

  case 93: /* equality_expression: equality_expression EQ relational_expression  */
#line 1431 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2826 "parser.tab.c"
    break;

  case 94: /* equality_expression: equality_expression NEQ relational_expression  */
#line 1435 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2835 "parser.tab.c"
    break;

  case 95: /* and_expression: equality_expression  */
#line 1442 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2841 "parser.tab.c"
    break;

  case 96: /* and_expression: and_expression BIT_AND equality_expression  */
#line 1443 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2850 "parser.tab.c"
    break;

  case 97: /* exclusive_or_expression: and_expression  */
#line 1450 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2856 "parser.tab.c"
    break;

  case 98: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 1451 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2865 "parser.tab.c"
    break;

  case 99: /* inclusive_or_expression: exclusive_or_expression  */
#line 1458 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2871 "parser.tab.c"
    break;

  case 100: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 1459 "parser.y"
                                                                 { 
		
        (yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
        delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 2881 "parser.tab.c"
    break;

  case 101: /* logical_and_expression: inclusive_or_expression  */
#line 1466 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2887 "parser.tab.c"
    break;

  case 102: /* $@2: %empty  */
#line 1467 "parser.y"
                                             { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        (yyvsp[-1].typeinfo)->code.push_back(if_true);
        (yyvsp[-1].typeinfo)->code.push_back(goto_false);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_false);
    }
#line 2900 "parser.tab.c"
    break;

  case 103: /* logical_and_expression: logical_and_expression LOGICAL_AND $@2 inclusive_or_expression  */
#line 1474 "parser.y"
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
#line 2953 "parser.tab.c"
    break;

  case 104: /* logical_or_expression: logical_and_expression  */
#line 1525 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2959 "parser.tab.c"
    break;

  case 105: /* $@3: %empty  */
#line 1526 "parser.y"
                                           {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        (yyvsp[-1].typeinfo)->code.push_back(go_true);
        (yyvsp[-1].typeinfo)->true_list.insert(go_true);
    }
#line 2969 "parser.tab.c"
    break;

  case 106: /* logical_or_expression: logical_or_expression LOGICAL_OR $@3 logical_and_expression  */
#line 1530 "parser.y"
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
#line 3023 "parser.tab.c"
    break;

  case 107: /* conditional_expression: logical_or_expression  */
#line 1582 "parser.y"
                                                                                         {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // No conditional, just pass through
    }
#line 3031 "parser.tab.c"
    break;

  case 108: /* assignment_expression: conditional_expression  */
#line 1588 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3037 "parser.tab.c"
    break;

  case 109: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 1589 "parser.y"
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
#line 3088 "parser.tab.c"
    break;

  case 111: /* expression: assignment_expression  */
#line 1642 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3094 "parser.tab.c"
    break;

  case 112: /* expression: expression COMMA assignment_expression  */
#line 1643 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = new TypeInfo(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->isLvalue = false;  // Result of comma operator is not an
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
		delete (yyvsp[-2].typeinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 3108 "parser.tab.c"
    break;

  case 113: /* constant_expression: conditional_expression  */
#line 1655 "parser.y"
                                 { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
	}
#line 3116 "parser.tab.c"
    break;

  case 114: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 1663 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 3125 "parser.tab.c"
    break;

  case 115: /* struct_specifier: struct IDENTIFIER  */
#line 1667 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 3134 "parser.tab.c"
    break;

  case 116: /* struct: STRUCT  */
#line 1674 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 3140 "parser.tab.c"
    break;

  case 122: /* struct_declarator: declarator  */
#line 1692 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 3146 "parser.tab.c"
    break;

  case 123: /* pointer: STAR  */
#line 1698 "parser.y"
           {                                   /* e.g., * */
        (yyval.ival) = 1;  // Return pointer level instead of TypeInfo
    }
#line 3154 "parser.tab.c"
    break;

  case 124: /* pointer: STAR pointer  */
#line 1701 "parser.y"
                   {                           /* e.g., ** or *** etc. */
        (yyval.ival) = (yyvsp[0].ival) + 1;  // Increment pointer level for each * encountered
    }
#line 3162 "parser.tab.c"
    break;

  case 125: /* statement: labeled_statement  */
#line 1710 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3170 "parser.tab.c"
    break;

  case 126: /* statement: compound_statement  */
#line 1713 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3178 "parser.tab.c"
    break;

  case 127: /* statement: expression_statement  */
#line 1716 "parser.y"
                                                                                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3186 "parser.tab.c"
    break;

  case 128: /* statement: selection_statement  */
#line 1719 "parser.y"
                                                                                                        {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3194 "parser.tab.c"
    break;

  case 129: /* statement: iteration_statement  */
#line 1722 "parser.y"
                                                                                                           {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3202 "parser.tab.c"
    break;

  case 130: /* statement: jump_statement  */
#line 1725 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3210 "parser.tab.c"
    break;

  case 131: /* statement: error SEMICOLON  */
#line 1728 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 3219 "parser.tab.c"
    break;

  case 132: /* labeled_statement: IDENTIFIER COLON marker statement  */
#line 1736 "parser.y"
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
#line 3235 "parser.tab.c"
    break;

  case 135: /* $@4: %empty  */
#line 1752 "parser.y"
                 { enter_scope(); insert_current_function_parameters(); }
#line 3241 "parser.tab.c"
    break;

  case 136: /* compound_statement: LBRACE $@4 declaration_list statement_list RBRACE  */
#line 1752 "parser.y"
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
#line 3257 "parser.tab.c"
    break;

  case 137: /* marker: %empty  */
#line 1766 "parser.y"
                  {
        (yyval.opinfo) = new_label(0); // Create a label for the beginning of loops
    }
#line 3265 "parser.tab.c"
    break;

  case 138: /* statement_list: statement  */
#line 1772 "parser.y"
                                                                                               {
        (yyval.typeinfo)= (yyvsp[0].typeinfo);
        TACOperand* curr_inst = new_label(0);
        backpatch((yyval.typeinfo)->next_list,curr_inst);
    }
#line 3275 "parser.tab.c"
    break;

  case 139: /* statement_list: statement_list marker statement  */
#line 1777 "parser.y"
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
#line 3293 "parser.tab.c"
    break;

  case 140: /* statement_list: %empty  */
#line 1790 "parser.y"
                        {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 3302 "parser.tab.c"
    break;

  case 142: /* expression_statement: expression SEMICOLON  */
#line 1801 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
    }
#line 3310 "parser.tab.c"
    break;

  case 143: /* selection_statement: if_expression  */
#line 1809 "parser.y"
                                                                               {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        if (! (yyvsp[0].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[0].typeinfo)->false_list, curr_inst);
        }
    }
#line 3322 "parser.tab.c"
    break;

  case 144: /* $@5: %empty  */
#line 1816 "parser.y"
                             {        
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->next_list.insert(goto_inst);
        if (! (yyvsp[-1].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[-1].typeinfo)->false_list, curr_inst);
        }
    }
#line 3336 "parser.tab.c"
    break;

  case 145: /* selection_statement: if_expression ELSE $@5 statement  */
#line 1825 "parser.y"
    {
        (yyval.typeinfo) = (yyvsp[-3].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        (yyval.typeinfo)->break_list.insert((yyvsp[0].typeinfo)->break_list.begin(), (yyvsp[0].typeinfo)->break_list.end());
        (yyval.typeinfo)->continue_list.insert((yyvsp[0].typeinfo)->continue_list.begin(), (yyvsp[0].typeinfo)->continue_list.end());
        delete (yyvsp[0].typeinfo);
    }
#line 3349 "parser.tab.c"
    break;

  case 147: /* $@6: %empty  */
#line 1837 "parser.y"
                                   {
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); 
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);
    }
#line 3362 "parser.tab.c"
    break;

  case 148: /* if_expression: IF LPAREN expression RPAREN $@6 statement  */
#line 1844 "parser.y"
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
#line 3383 "parser.tab.c"
    break;

  case 149: /* $@7: %empty  */
#line 1865 "parser.y"
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
#line 3402 "parser.tab.c"
    break;

  case 150: /* iteration_statement: WHILE begin_marker LPAREN expression RPAREN $@7 statement  */
#line 1878 "parser.y"
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
#line 3429 "parser.tab.c"
    break;

  case 151: /* $@8: %empty  */
#line 1900 "parser.y"
                                               {
        // if E then goto___ -> next list
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[0].typeinfo)->result, new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        (yyvsp[0].typeinfo)->true_list.insert(if_inst);
    }
#line 3440 "parser.tab.c"
    break;

  case 152: /* iteration_statement: UNTIL begin_marker LPAREN expression $@8 RPAREN statement  */
#line 1905 "parser.y"
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
#line 3465 "parser.tab.c"
    break;

  case 153: /* $@9: %empty  */
#line 1925 "parser.y"
                                     {
        TACOperand* curr_inst = new_label(0);
        // seemss redundant but dont delete for now
        // krish
        //backpatch($3->next_list, curr_inst);
    }
#line 3476 "parser.tab.c"
    break;

  case 154: /* iteration_statement: DO begin_marker statement $@9 WHILE LPAREN marker expression RPAREN SEMICOLON  */
#line 1930 "parser.y"
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
#line 3500 "parser.tab.c"
    break;

  case 157: /* begin_marker: %empty  */
#line 1954 "parser.y"
                  {
        // Mark the beginning of a loop for backpatching
        (yyval.opinfo) = new_label(0);
    }
#line 3509 "parser.tab.c"
    break;

  case 158: /* jump_statement: GOTO IDENTIFIER SEMICOLON  */
#line 1961 "parser.y"
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
#line 3529 "parser.tab.c"
    break;

  case 159: /* jump_statement: CONTINUE SEMICOLON  */
#line 1976 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->continue_list.insert(goto_inst);
    }
#line 3541 "parser.tab.c"
    break;

  case 160: /* jump_statement: BREAK SEMICOLON  */
#line 1983 "parser.y"
                                                                                                   {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_inst);
        (yyval.typeinfo)->break_list.insert(goto_inst);
    }
#line 3553 "parser.tab.c"
    break;

  case 161: /* jump_statement: RETURN SEMICOLON  */
#line 1990 "parser.y"
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
#line 3571 "parser.tab.c"
    break;

  case 162: /* jump_statement: RETURN expression SEMICOLON  */
#line 2003 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->code = (yyvsp[-1].typeinfo)->code;
        // type check with current function return type
        if(!is_implicit_conversion_allowed(*(yyvsp[-1].typeinfo), *current_function_return_type)){
            type_error("Return type mismatch: function expects " + current_function_return_type->toString() + ", but returning " + (yyvsp[-1].typeinfo)->toString());
        }else{
            const TypeInfo lhs = *current_function_return_type;
            pair<vector<TACInstruction*>, pair<TACOperand*, TACOperand*>> cast_result = change_type_rhs_to_lhs(lhs,*(yyvsp[-1].typeinfo));
            (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), cast_result.first.begin(), cast_result.first.end());
            TACInstruction* ret_inst = emit(TACOperator(TAC_OPERATOR_RETURN), cast_result.second.second, new_empty_var(), new_empty_var(),0);
            (yyval.typeinfo)->code.push_back(ret_inst);
        }
        // generate TAC code 
        delete (yyvsp[-1].typeinfo);
    }
#line 3593 "parser.tab.c"
    break;


#line 3597 "parser.tab.c"

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

#line 2022 "parser.y"




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
