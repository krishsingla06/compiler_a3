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

/* Make sure yylex is visible as a C functi */
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
  YYSYMBOL_declaration = 68,               /* declaration  */
  YYSYMBOL_return_types = 69,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 70,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 71,            /* type_specifier  */
  YYSYMBOL_cast_type_specifier = 72,       /* cast_type_specifier  */
  YYSYMBOL_init_declarator_list = 73,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 74,           /* init_declarator  */
  YYSYMBOL_declarator = 75,                /* declarator  */
  YYSYMBOL_direct_declarator = 76,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 77,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 78,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 79,          /* declaration_list  */
  YYSYMBOL_initializer = 80,               /* initializer  */
  YYSYMBOL_parameter_list = 81,            /* parameter_list  */
  YYSYMBOL_parameter_declaration = 82,     /* parameter_declaration  */
  YYSYMBOL_parameter_declarator = 83,      /* parameter_declarator  */
  YYSYMBOL_parameter_direct_declarator = 84, /* parameter_direct_declarator  */
  YYSYMBOL_primary_expression = 85,        /* primary_expression  */
  YYSYMBOL_postfix_expression = 86,        /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 87,  /* argument_expression_list  */
  YYSYMBOL_unary_expression = 88,          /* unary_expression  */
  YYSYMBOL_unary_operator = 89,            /* unary_operator  */
  YYSYMBOL_cast_expression = 90,           /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 91, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 92,       /* additive_expression  */
  YYSYMBOL_shift_expression = 93,          /* shift_expression  */
  YYSYMBOL_relational_expression = 94,     /* relational_expression  */
  YYSYMBOL_equality_expression = 95,       /* equality_expression  */
  YYSYMBOL_and_expression = 96,            /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 97,   /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 98,   /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 99,    /* logical_and_expression  */
  YYSYMBOL_100_1 = 100,                    /* $@1  */
  YYSYMBOL_logical_or_expression = 101,    /* logical_or_expression  */
  YYSYMBOL_102_2 = 102,                    /* $@2  */
  YYSYMBOL_conditional_expression = 103,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 104,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 105,      /* assignment_operator  */
  YYSYMBOL_expression = 106,               /* expression  */
  YYSYMBOL_constant_expression = 107,      /* constant_expression  */
  YYSYMBOL_struct_specifier = 108,         /* struct_specifier  */
  YYSYMBOL_struct = 109,                   /* struct  */
  YYSYMBOL_struct_declaration_list = 110,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 111,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 112,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 113,        /* struct_declarator  */
  YYSYMBOL_pointer = 114,                  /* pointer  */
  YYSYMBOL_statement = 115,                /* statement  */
  YYSYMBOL_labeled_statement = 116,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 117,       /* compound_statement  */
  YYSYMBOL_118_3 = 118,                    /* $@3  */
  YYSYMBOL_marker = 119,                   /* marker  */
  YYSYMBOL_statement_list = 120,           /* statement_list  */
  YYSYMBOL_expression_statement = 121,     /* expression_statement  */
  YYSYMBOL_selection_statement = 122,      /* selection_statement  */
  YYSYMBOL_123_4 = 123,                    /* $@4  */
  YYSYMBOL_if_expression = 124,            /* if_expression  */
  YYSYMBOL_125_5 = 125,                    /* $@5  */
  YYSYMBOL_iteration_statement = 126,      /* iteration_statement  */
  YYSYMBOL_127_6 = 127,                    /* $@6  */
  YYSYMBOL_128_7 = 128,                    /* $@7  */
  YYSYMBOL_129_8 = 129,                    /* $@8  */
  YYSYMBOL_begin_marker = 130,             /* begin_marker  */
  YYSYMBOL_jump_statement = 131            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 342 "parser.y"

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
    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> change_types_lhs_to_rhs(const TypeInfo& from, const TypeInfo& to);

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


    

#line 373 "parser.tab.c"

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
#define YYLAST   580

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  68
/* YYNRULES -- Number of rules.  */
#define YYNRULES  160
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  277

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
       0,   543,   543,   544,   550,   551,   555,   603,   607,   659,
     663,   664,   671,   675,   679,   683,   687,   696,   699,   708,
     712,   720,   721,   730,   735,   742,   747,   755,   764,   779,
     795,   799,   806,   828,   846,   851,   857,   868,   872,   877,
     886,   905,   910,   917,   927,   962,   973,   984,   995,  1008,
    1016,  1023,  1024,  1097,  1122,  1157,  1162,  1167,  1171,  1178,
    1184,  1193,  1194,  1198,  1202,  1206,  1213,  1223,  1224,  1225,
    1226,  1227,  1228,  1232,  1233,  1286,  1287,  1291,  1295,  1302,
    1303,  1307,  1315,  1316,  1330,  1347,  1348,  1352,  1356,  1360,
    1367,  1368,  1372,  1379,  1380,  1387,  1388,  1395,  1396,  1403,
    1404,  1404,  1462,  1463,  1463,  1519,  1525,  1526,  1575,  1579,
    1580,  1592,  1600,  1604,  1611,  1615,  1616,  1620,  1624,  1625,
    1629,  1635,  1638,  1647,  1650,  1653,  1656,  1659,  1662,  1665,
    1673,  1674,  1675,  1679,  1679,  1698,  1704,  1709,  1717,  1725,
    1726,  1732,  1739,  1739,  1754,  1758,  1758,  1777,  1777,  1801,
    1801,  1819,  1819,  1835,  1836,  1840,  1847,  1848,  1849,  1850,
    1851
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
  "global_declaration", "function_definition", "declaration",
  "return_types", "declaration_specifiers", "type_specifier",
  "cast_type_specifier", "init_declarator_list", "init_declarator",
  "declarator", "direct_declarator", "fun_declarator",
  "fun_direct_declarator", "declaration_list", "initializer",
  "parameter_list", "parameter_declaration", "parameter_declarator",
  "parameter_direct_declarator", "primary_expression",
  "postfix_expression", "argument_expression_list", "unary_expression",
  "unary_operator", "cast_expression", "multiplicative_expression",
  "additive_expression", "shift_expression", "relational_expression",
  "equality_expression", "and_expression", "exclusive_or_expression",
  "inclusive_or_expression", "logical_and_expression", "$@1",
  "logical_or_expression", "$@2", "conditional_expression",
  "assignment_expression", "assignment_operator", "expression",
  "constant_expression", "struct_specifier", "struct",
  "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "pointer", "statement",
  "labeled_statement", "compound_statement", "$@3", "marker",
  "statement_list", "expression_statement", "selection_statement", "$@4",
  "if_expression", "$@5", "iteration_statement", "$@6", "$@7", "$@8",
  "begin_marker", "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-188)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-139)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      43,  -188,  -188,  -188,  -188,   128,  -188,     4,  -188,  -188,
    -188,   -17,  -188,  -188,  -188,   -37,  -188,  -188,  -188,    -2,
    -188,    46,    19,  -188,     6,    -4,    24,  -188,    21,    53,
    -188,    22,   -30,  -188,   -23,   455,    14,  -188,  -188,    -4,
    -188,   128,  -188,   -20,    56,  -188,    73,    79,   107,  -188,
     106,   486,  -188,   517,   517,  -188,  -188,  -188,  -188,  -188,
    -188,   121,  -188,  -188,  -188,  -188,  -188,  -188,  -188,   113,
     134,   455,  -188,    85,   124,   160,    25,   158,   133,   151,
     154,   172,   191,  -188,  -188,   169,   175,    43,   -23,    50,
    -188,  -188,  -188,  -188,   176,    43,  -188,  -188,  -188,   121,
    -188,   455,  -188,  -188,   192,   182,  -188,    59,  -188,  -188,
     178,   179,   321,   455,  -188,   455,  -188,  -188,   455,   455,
     455,   455,   455,   455,   455,   455,   455,   455,   455,   455,
     455,   455,   455,   455,  -188,  -188,  -188,  -188,  -188,    69,
     198,  -188,   141,  -188,  -188,  -188,  -188,  -188,   185,  -188,
     455,   455,  -188,  -188,  -188,  -188,    61,  -188,   -19,  -188,
    -188,  -188,  -188,    85,    85,   124,   124,   160,   160,   160,
     160,    25,    25,   158,   133,   151,   455,   455,   193,   190,
     195,  -188,  -188,  -188,   196,   197,   199,   455,   205,   204,
    -188,   355,   206,  -188,   143,  -188,  -188,  -188,   212,  -188,
    -188,   257,  -188,  -188,  -188,   -23,  -188,  -188,  -188,   455,
    -188,  -188,   154,   172,  -188,   455,   388,   213,   261,   214,
    -188,  -188,   455,  -188,   221,   261,   231,  -188,   145,   261,
    -188,  -188,   261,  -188,  -188,  -188,    66,  -188,   455,  -188,
     455,    93,   261,  -188,  -188,  -188,  -188,  -188,   261,  -188,
     388,    96,   273,   236,   261,  -188,  -188,   261,   421,  -188,
     234,   235,  -188,  -188,   261,    98,   261,   455,   261,  -188,
     261,  -188,    99,  -188,  -188,   239,  -188
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    14,    15,    13,    12,     0,   114,     0,     2,     4,
       5,     0,     9,    10,    16,     0,    11,     1,     3,   121,
       7,    25,     0,    19,    21,    24,     0,    31,     0,   113,
     122,     0,     0,     8,     0,     0,     0,   133,     6,    23,
      30,     0,    33,     0,     0,    38,     0,     0,    25,    20,
       0,     0,    49,     0,     0,    69,    70,    68,    72,    67,
      71,     0,    44,    45,    46,    48,    47,    22,    51,    61,
      73,     0,    75,    79,    82,    85,    90,    93,    95,    97,
      99,   102,   105,   106,    37,     0,     0,    36,     0,     0,
     115,    43,    40,    42,     0,     0,    32,    27,    28,     0,
      65,     0,    62,    63,    17,     0,   109,     0,    57,    58,
       0,     0,     0,     0,   108,     0,    73,    64,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   100,   103,    26,    29,    34,     0,
       0,   120,     0,   118,   112,   116,    41,    39,     0,    18,
       0,     0,    50,    56,    55,    53,     0,    59,     0,   107,
      76,    77,    78,    80,    81,    83,    84,    88,    89,    86,
      87,    91,    92,    94,    96,    98,     0,     0,     0,     0,
       0,   155,   155,   155,     0,     0,     0,     0,     0,     0,
     139,     0,    44,    35,     0,   136,   123,   124,   135,   125,
     126,   141,   127,   128,   117,     0,    66,    74,   110,     0,
      54,    52,   101,   104,   129,     0,     0,     0,     0,     0,
     158,   157,     0,   111,     0,     0,     0,   159,     0,     0,
     140,   134,     0,   142,   119,    60,     0,   155,     0,   151,
       0,     0,     0,   132,   156,   160,   130,   137,     0,   145,
       0,     0,     0,   149,     0,   131,   143,     0,     0,   147,
       0,     0,   144,   146,     0,     0,     0,     0,     0,   153,
       0,   148,     0,   150,   154,     0,   152
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -188,  -188,   283,  -188,   -76,   -28,  -188,     9,  -188,  -188,
     258,   -86,    -7,  -188,   263,  -188,  -188,  -188,   203,  -188,
     200,  -188,  -188,  -188,   -36,  -188,   -47,   102,   103,    44,
     100,   162,   167,   168,   129,   123,  -188,  -188,  -188,   119,
     -34,  -188,   -61,  -188,  -188,  -188,  -188,   219,  -188,   110,
       1,    84,  -188,   285,  -188,  -188,  -188,  -187,  -188,  -188,
    -188,  -188,  -188,  -188,  -188,  -188,  -177,  -188
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_int16 yydefgoto[] =
{
       0,     7,     8,     9,    10,    11,    12,    13,   105,    22,
      23,    24,    25,    26,    27,   140,    67,    44,    45,    92,
      93,    68,    69,   156,    70,    71,    72,    73,    74,    75,
      76,    77,    78,    79,    80,    81,   176,    82,   177,    83,
     106,   115,   194,   224,    14,    15,    89,    90,   142,   143,
      50,   195,   196,   197,    87,   232,   198,   199,   200,   248,
     201,   257,   202,   266,   261,   252,   217,   203
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     107,    84,   141,    43,    17,   218,   219,     1,     2,     3,
       4,   138,    28,    19,    16,   100,    19,   102,   103,    19,
      30,    39,    29,     5,   117,     1,     2,     3,     4,   237,
      46,   151,    20,    47,    19,   116,    48,   211,   107,    91,
     107,     5,    21,    39,    94,    35,     1,     2,     3,     4,
      88,    36,   158,     1,     2,     3,     4,   125,   126,   139,
     250,     6,     5,   258,   193,   127,   128,    43,    33,    34,
     104,   160,   161,   162,    85,    37,    42,    86,   157,     6,
      21,   159,   116,   116,   116,   116,   116,   116,   116,   116,
     116,   116,   116,   116,   116,   116,   116,   116,    88,    31,
       6,    32,   144,   207,    41,    19,    95,     6,   148,   151,
      96,   209,   139,   152,   116,   210,   151,   208,    20,   141,
     249,   118,   119,   120,     1,     2,     3,     4,    48,    97,
     228,     1,     2,     3,     4,    98,   108,   109,   110,    51,
     116,   116,    52,   151,    53,    54,   151,   254,   151,   151,
     259,   116,   270,   275,   236,    55,    56,    57,   121,   122,
     111,   241,    32,    58,    59,    48,   112,    60,   113,   167,
     168,   169,   170,   114,    61,   235,   131,   251,     6,   253,
      62,    63,    64,    65,    66,     6,   123,   124,   129,   130,
     204,   205,   230,   151,   245,   151,   132,   265,   133,   178,
     134,     1,     2,     3,     4,   179,   272,   180,   181,   182,
     183,   184,   185,   186,   187,   188,    51,     5,   189,    52,
     135,    53,    54,   163,   164,   136,   165,   166,   149,   171,
     172,   137,    55,    56,    57,    91,   150,   153,   154,   206,
      58,    59,   214,   215,    60,   220,   221,   190,   216,    37,
    -138,    61,   222,   225,   229,     6,   191,   192,    63,    64,
      65,    66,   178,   226,   231,   233,   238,   240,   179,   242,
     180,   181,   182,   183,   184,   185,   186,   187,   188,    51,
     244,   189,    52,   260,    53,    54,   151,   267,   276,   268,
      18,    40,    49,   173,   146,    55,    56,    57,   147,   174,
     213,   175,   239,    58,    59,   212,   223,    60,   145,   243,
     190,    38,    37,   246,    61,   234,   247,     0,     0,   191,
     192,    63,    64,    65,    66,     0,   255,     0,     0,     0,
       0,     0,   256,     0,     0,     0,     0,     0,   262,    51,
       0,   263,    52,     0,    53,    54,     0,     0,   269,     0,
     271,     0,   273,     0,   274,    55,    56,    57,     0,     0,
       0,     0,     0,    58,    59,     0,     0,    60,     0,     0,
       0,     0,     0,    51,    61,   155,    52,     0,    53,    54,
      62,    63,    64,    65,    66,     0,     0,     0,     0,    55,
      56,    57,     0,     0,     0,     0,     0,    58,    59,     0,
       0,    60,     0,     0,   227,     0,    51,     0,    61,    52,
       0,    53,    54,     0,    62,    63,    64,    65,    66,     0,
       0,     0,    55,    56,    57,     0,     0,     0,     0,     0,
      58,    59,     0,     0,    60,     0,     0,   190,     0,    51,
       0,    61,    52,     0,    53,    54,     0,    62,    63,    64,
      65,    66,     0,     0,     0,    55,    56,    57,     0,     0,
       0,     0,     0,    58,    59,     0,     0,    60,     0,     0,
       0,     0,     0,    51,    61,   264,    52,     0,    53,    54,
      62,    63,    64,    65,    66,     0,     0,     0,     0,    55,
      56,    57,     0,     0,     0,     0,     0,    58,    59,     0,
       0,    60,     0,     0,    51,     0,     0,    52,    61,    53,
      54,     0,     0,     0,    62,    63,    64,    65,    66,     0,
      55,    56,    57,     0,     0,     0,     0,     0,    58,    59,
       0,     0,    60,     0,     0,    51,     0,     0,    52,    99,
      53,    54,     0,     0,     0,    62,    63,    64,    65,    66,
       0,    55,    56,    57,     0,     0,     0,     0,     0,    58,
      59,     0,     0,    60,     0,     0,     0,     0,     0,     0,
     101,     0,     0,     0,     0,     0,    62,    63,    64,    65,
      66
};

static const yytype_int16 yycheck[] =
{
      61,    35,    88,    31,     0,   182,   183,     3,     4,     5,
       6,    87,    11,    36,     5,    51,    36,    53,    54,    36,
      19,    28,    59,    19,    71,     3,     4,     5,     6,   216,
      60,    50,    49,    63,    36,    71,    59,    56,    99,    59,
     101,    19,    59,    50,    43,    39,     3,     4,     5,     6,
      41,    55,   113,     3,     4,     5,     6,    32,    33,    87,
     237,    57,    19,   250,   140,    40,    41,    95,    49,    50,
      61,   118,   119,   120,    60,    51,    54,    63,   112,    57,
      59,   115,   118,   119,   120,   121,   122,   123,   124,   125,
     126,   127,   128,   129,   130,   131,   132,   133,    89,    53,
      57,    55,    52,   150,    51,    36,    50,    57,    99,    50,
      54,    50,   140,    54,   150,    54,    50,   151,    49,   205,
      54,    36,    37,    38,     3,     4,     5,     6,    59,    56,
     191,     3,     4,     5,     6,    56,    23,    24,    25,    18,
     176,   177,    21,    50,    23,    24,    50,    54,    50,    50,
      54,   187,    54,    54,   215,    34,    35,    36,    34,    35,
      47,   222,    55,    42,    43,    59,    53,    46,    55,   125,
     126,   127,   128,    39,    53,   209,    43,   238,    57,   240,
      59,    60,    61,    62,    63,    57,    26,    27,    30,    31,
      49,    50,    49,    50,    49,    50,    45,   258,    44,     1,
      28,     3,     4,     5,     6,     7,   267,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    20,    21,
      29,    23,    24,   121,   122,    56,   123,   124,    36,   129,
     130,    56,    34,    35,    36,    59,    54,    59,    59,    54,
      42,    43,    49,    53,    46,    49,    49,    49,    53,    51,
      52,    53,    53,    48,    48,    57,    58,    59,    60,    61,
      62,    63,     1,    59,    52,     8,    53,    53,     7,    48,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      49,    20,    21,    10,    23,    24,    50,    53,    49,    54,
       7,    28,    34,   131,    94,    34,    35,    36,    95,   132,
     177,   133,   218,    42,    43,   176,   187,    46,    89,   225,
      49,    26,    51,   229,    53,   205,   232,    -1,    -1,    58,
      59,    60,    61,    62,    63,    -1,   242,    -1,    -1,    -1,
      -1,    -1,   248,    -1,    -1,    -1,    -1,    -1,   254,    18,
      -1,   257,    21,    -1,    23,    24,    -1,    -1,   264,    -1,
     266,    -1,   268,    -1,   270,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      -1,    -1,    -1,    18,    53,    54,    21,    -1,    23,    24,
      59,    60,    61,    62,    63,    -1,    -1,    -1,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    49,    -1,    18,    -1,    53,    21,
      -1,    23,    24,    -1,    59,    60,    61,    62,    63,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    49,    -1,    18,
      -1,    53,    21,    -1,    23,    24,    -1,    59,    60,    61,
      62,    63,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      -1,    -1,    -1,    18,    53,    54,    21,    -1,    23,    24,
      59,    60,    61,    62,    63,    -1,    -1,    -1,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    18,    -1,    -1,    21,    53,    23,
      24,    -1,    -1,    -1,    59,    60,    61,    62,    63,    -1,
      34,    35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,
      -1,    -1,    46,    -1,    -1,    18,    -1,    -1,    21,    53,
      23,    24,    -1,    -1,    -1,    59,    60,    61,    62,    63,
      -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,    42,
      43,    -1,    -1,    46,    -1,    -1,    -1,    -1,    -1,    -1,
      53,    -1,    -1,    -1,    -1,    -1,    59,    60,    61,    62,
      63
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      68,    69,    70,    71,   108,   109,    71,     0,    66,    36,
      49,    59,    73,    74,    75,    76,    77,    78,   114,    59,
     114,    53,    55,    49,    50,    39,    55,    51,   117,    76,
      78,    51,    54,    69,    81,    82,    60,    63,    59,    74,
     114,    18,    21,    23,    24,    34,    35,    36,    42,    43,
      46,    53,    59,    60,    61,    62,    63,    80,    85,    86,
      88,    89,    90,    91,    92,    93,    94,    95,    96,    97,
      98,    99,   101,   103,   104,    60,    63,   118,    71,   110,
     111,    59,    83,    84,   114,    50,    54,    56,    56,    53,
      88,    53,    88,    88,    71,    72,   104,   106,    23,    24,
      25,    47,    53,    55,    39,   105,    88,    90,    36,    37,
      38,    34,    35,    26,    27,    32,    33,    40,    41,    30,
      31,    43,    45,    44,    28,    29,    56,    56,    68,    69,
      79,    75,   112,   113,    52,   111,    84,    82,    71,    36,
      54,    50,    54,    59,    59,    54,    87,   104,   106,   104,
      90,    90,    90,    91,    91,    92,    92,    93,    93,    93,
      93,    94,    94,    95,    96,    97,   100,   102,     1,     7,
       9,    10,    11,    12,    13,    14,    15,    16,    17,    20,
      49,    58,    59,    68,   106,   115,   116,   117,   120,   121,
     122,   124,   126,   131,    49,    50,    54,    90,   104,    50,
      54,    56,    98,    99,    49,    53,    53,   130,   130,   130,
      49,    49,    53,   103,   107,    48,    59,    49,   106,    48,
      49,    52,   119,     8,   113,   104,   106,   121,    53,   115,
      53,   106,    48,   115,    49,    49,   115,   115,   123,    54,
     130,   106,   129,   106,    54,   115,   115,   125,   121,    54,
      10,   128,   115,   115,    54,   106,   127,    53,    54,   115,
      54,   115,   106,   115,   115,    54,    49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    67,    68,    68,    69,
      70,    70,    71,    71,    71,    71,    71,    72,    72,    73,
      73,    74,    74,    75,    75,    76,    76,    76,    76,    76,
      77,    77,    78,    78,    79,    79,    79,    80,    81,    81,
      82,    83,    83,    84,    85,    85,    85,    85,    85,    85,
      85,    86,    86,    86,    86,    86,    86,    86,    86,    87,
      87,    88,    88,    88,    88,    88,    88,    89,    89,    89,
      89,    89,    89,    90,    90,    91,    91,    91,    91,    92,
      92,    92,    93,    93,    93,    94,    94,    94,    94,    94,
      95,    95,    95,    96,    96,    97,    97,    98,    98,    99,
     100,    99,   101,   102,   101,   103,   104,   104,   105,   106,
     106,   107,   108,   108,   109,   110,   110,   111,   112,   112,
     113,   114,   114,   115,   115,   115,   115,   115,   115,   115,
     116,   116,   116,   118,   117,   119,   120,   120,   120,   121,
     121,   122,   123,   122,   122,   125,   124,   127,   126,   128,
     126,   129,   126,   126,   126,   130,   131,   131,   131,   131,
     131
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     2,     3,     1,
       1,     2,     1,     1,     1,     1,     1,     1,     2,     1,
       3,     1,     3,     2,     1,     1,     4,     4,     4,     4,
       2,     1,     4,     3,     1,     2,     0,     1,     1,     3,
       2,     2,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     1,     4,     3,     4,     3,     3,     2,     2,     1,
       3,     1,     2,     2,     2,     2,     4,     1,     1,     1,
       1,     1,     1,     1,     4,     1,     3,     3,     3,     1,
       3,     3,     1,     3,     3,     1,     3,     3,     3,     3,
       1,     3,     3,     1,     3,     1,     3,     1,     3,     1,
       0,     4,     1,     0,     4,     1,     1,     3,     1,     1,
       3,     1,     5,     2,     1,     1,     2,     3,     1,     3,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     2,
       3,     4,     3,     0,     5,     0,     1,     3,     0,     1,
       2,     1,     0,     4,     5,     0,     6,     0,     7,     0,
       7,     0,     9,     7,     8,     0,     3,     2,     2,     2,
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
  case 6: /* function_definition: return_types fun_declarator compound_statement  */
#line 555 "parser.y"
                                                         {               /* e.g., int f() { ... } */
		// Register function definition
		TypeInfo returnType = *(yyvsp[-2].typeinfo);
		returnType.pointerLevel = (yyvsp[-1].declinfo)->pointerLevel;  // Handle multi-level pointers
		
		if ((yyvsp[-1].declinfo)->isFunction && (yyvsp[-1].declinfo)->paramTypes) {
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes);
			cout << "Function definition: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}
		
		// Reset the current function context after function definition completes
		current_function_name = "";
		current_function_signature = "";

        //print compound statement code
        // Open a file for TAC output
        string tac_filename = (yyvsp[-1].declinfo)->name + "_tac.txt";
        ofstream tac_file(tac_filename);
        
        if (tac_file.is_open()) {
            tac_file << "--------------------------------\n";
            tac_file << "Function " << (yyvsp[-1].declinfo)->name << " TAC code:\n";
            for (TACInstruction* instr : (yyvsp[0].typeinfo)->code) {
            tac_file << get_TAC_instruction_string(instr) << "\n";
            }
            tac_file << "--------------------------------\n";
            tac_file.close();
            
            cout << "TAC code for function " << (yyvsp[-1].declinfo)->name << " written to " << tac_filename << endl;
        } else {
            cout << "Failed to open file for TAC output: " << tac_filename << endl;
        }
        
        // Also print to console for debugging
        cout << "Function " << (yyvsp[-1].declinfo)->name << " TAC code (also written to " << tac_filename << "):\n";
        for (TACInstruction* instr : (yyvsp[0].typeinfo)->code) {
            print_TAC_instruction(instr);
        }
		
		// Clean up
		if ((yyvsp[-1].declinfo)->paramTypes) delete (yyvsp[-1].declinfo)->paramTypes;
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].declinfo);
	}
#line 1648 "parser.tab.c"
    break;

  case 7: /* declaration: return_types SEMICOLON  */
#line 603 "parser.y"
                                 { 
        (yyval.typeinfo) = new TypeInfo();
        delete (yyvsp[-1].typeinfo); 
    }
#line 1657 "parser.tab.c"
    break;

  case 8: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 607 "parser.y"
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
                    
                    pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> promo = change_types_lhs_to_rhs(combinedType, *declInfo->initType);
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
#line 1709 "parser.tab.c"
    break;

  case 9: /* return_types: declaration_specifiers  */
#line 659 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1715 "parser.tab.c"
    break;

  case 10: /* declaration_specifiers: type_specifier  */
#line 663 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1721 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: STATIC type_specifier  */
#line 664 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1730 "parser.tab.c"
    break;

  case 12: /* type_specifier: VOID  */
#line 671 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1739 "parser.tab.c"
    break;

  case 13: /* type_specifier: CHAR  */
#line 675 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1748 "parser.tab.c"
    break;

  case 14: /* type_specifier: INT  */
#line 679 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1757 "parser.tab.c"
    break;

  case 15: /* type_specifier: FLOAT  */
#line 683 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1766 "parser.tab.c"
    break;

  case 16: /* type_specifier: struct_specifier  */
#line 687 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1776 "parser.tab.c"
    break;

  case 17: /* cast_type_specifier: type_specifier  */
#line 696 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 1784 "parser.tab.c"
    break;

  case 18: /* cast_type_specifier: type_specifier STAR  */
#line 699 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
#line 1793 "parser.tab.c"
    break;

  case 19: /* init_declarator_list: init_declarator  */
#line 708 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1802 "parser.tab.c"
    break;

  case 20: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 712 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1811 "parser.tab.c"
    break;

  case 21: /* init_declarator: declarator  */
#line 720 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1817 "parser.tab.c"
    break;

  case 22: /* init_declarator: declarator ASSIGN initializer  */
#line 721 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1826 "parser.tab.c"
    break;

  case 23: /* declarator: pointer direct_declarator  */
#line 730 "parser.y"
                                    {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels from $1 to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 1836 "parser.tab.c"
    break;

  case 24: /* declarator: direct_declarator  */
#line 735 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1844 "parser.tab.c"
    break;

  case 25: /* direct_declarator: IDENTIFIER  */
#line 742 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1854 "parser.tab.c"
    break;

  case 26: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 747 "parser.y"
                                                          {     /* e.g., arr[10] or arr[10][20] */ 
		(yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 1867 "parser.tab.c"
    break;

  case 27: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 755 "parser.y"
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
#line 1882 "parser.tab.c"
    break;

  case 28: /* direct_declarator: IDENTIFIER LBRACKET CHAR_LITERAL RBRACKET  */
#line 764 "parser.y"
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
#line 1903 "parser.tab.c"
    break;

  case 29: /* direct_declarator: direct_declarator LBRACKET CHAR_LITERAL RBRACKET  */
#line 779 "parser.y"
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
#line 1922 "parser.tab.c"
    break;

  case 30: /* fun_declarator: pointer fun_direct_declarator  */
#line 795 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);  // Function returns a pointer (possibly multi-level)
  	}
#line 1931 "parser.tab.c"
    break;

  case 31: /* fun_declarator: fun_direct_declarator  */
#line 799 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1939 "parser.tab.c"
    break;

  case 32: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 806 "parser.y"
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
#line 1966 "parser.tab.c"
    break;

  case 33: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 828 "parser.y"
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
#line 1984 "parser.tab.c"
    break;

  case 34: /* declaration_list: declaration  */
#line 846 "parser.y"
                         {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[0].typeinfo)->code; // Carry forward the code from the declaration
        delete (yyvsp[0].typeinfo);
    }
#line 1994 "parser.tab.c"
    break;

  case 35: /* declaration_list: declaration_list declaration  */
#line 851 "parser.y"
                                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        // Append the code from the new declaration
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        delete (yyvsp[0].typeinfo);
    }
#line 2005 "parser.tab.c"
    break;

  case 36: /* declaration_list: %empty  */
#line 857 "parser.y"
                           {
        (yyval.typeinfo) = new TypeInfo(); // Empty declaration list
    }
#line 2013 "parser.tab.c"
    break;

  case 37: /* initializer: assignment_expression  */
#line 868 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2019 "parser.tab.c"
    break;

  case 38: /* parameter_list: parameter_declaration  */
#line 872 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2029 "parser.tab.c"
    break;

  case 39: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 877 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 2039 "parser.tab.c"
    break;

  case 40: /* parameter_declaration: return_types parameter_declarator  */
#line 886 "parser.y"
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
#line 2060 "parser.tab.c"
    break;

  case 41: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 905 "parser.y"
                                              {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 2070 "parser.tab.c"
    break;

  case 42: /* parameter_declarator: parameter_direct_declarator  */
#line 910 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 2078 "parser.tab.c"
    break;

  case 43: /* parameter_direct_declarator: IDENTIFIER  */
#line 917 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 2088 "parser.tab.c"
    break;

  case 44: /* primary_expression: IDENTIFIER  */
#line 927 "parser.y"
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
#line 2128 "parser.tab.c"
    break;

  case 45: /* primary_expression: INT_LITERAL  */
#line 962 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";

        (yyval.typeinfo)->result = new_constant(to_string((yyvsp[0].ival)));


    }
#line 2144 "parser.tab.c"
    break;

  case 46: /* primary_expression: FLOAT_LITERAL  */
#line 973 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";

        string floatStr = float_to_string_conversion((yyvsp[0].fval));
        (yyval.typeinfo)->result = new_constant(floatStr);

    }
#line 2160 "parser.tab.c"
    break;

  case 47: /* primary_expression: CHAR_LITERAL  */
#line 984 "parser.y"
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
#line 2176 "parser.tab.c"
    break;

  case 48: /* primary_expression: STRING_LITERAL  */
#line 995 "parser.y"
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
#line 2194 "parser.tab.c"
    break;

  case 49: /* primary_expression: NULL_LITERAL  */
#line 1008 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->pointerLevel = 1;  // NULL is a void pointer
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // NULL is not an lvalue
        cout << "NULL literal (type: void*)\n";
    }
#line 2207 "parser.tab.c"
    break;

  case 50: /* primary_expression: LPAREN expression RPAREN  */
#line 1016 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 2215 "parser.tab.c"
    break;

  case 51: /* postfix_expression: primary_expression  */
#line 1023 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2221 "parser.tab.c"
    break;

  case 52: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 1024 "parser.y"
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
#line 2299 "parser.tab.c"
    break;

  case 53: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 1097 "parser.y"
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
#line 2329 "parser.tab.c"
    break;

  case 54: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 1122 "parser.y"
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
#line 2369 "parser.tab.c"
    break;

  case 55: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 1157 "parser.y"
                                            {                            /* e.g., obj.field */
		// Struct member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2379 "parser.tab.c"
    break;

  case 56: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 1162 "parser.y"
                                              {                             /* e.g., ptr->field */
		// Struct pointer member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2389 "parser.tab.c"
    break;

  case 57: /* postfix_expression: postfix_expression INCREMENT  */
#line 1167 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 2398 "parser.tab.c"
    break;

  case 58: /* postfix_expression: postfix_expression DECREMENT  */
#line 1171 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--"); 
		delete (yyvsp[-1].typeinfo);
	}
#line 2407 "parser.tab.c"
    break;

  case 59: /* argument_expression_list: assignment_expression  */
#line 1178 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2418 "parser.tab.c"
    break;

  case 60: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 1184 "parser.y"
                                                               {           /* e.g., x, y */
		(yyval.typelist) = (yyvsp[-2].typelist);
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2429 "parser.tab.c"
    break;

  case 61: /* unary_expression: postfix_expression  */
#line 1193 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2435 "parser.tab.c"
    break;

  case 62: /* unary_expression: INCREMENT unary_expression  */
#line 1194 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");    
		delete (yyvsp[0].typeinfo);
	}
#line 2444 "parser.tab.c"
    break;

  case 63: /* unary_expression: DECREMENT unary_expression  */
#line 1198 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 2453 "parser.tab.c"
    break;

  case 64: /* unary_expression: unary_operator cast_expression  */
#line 1202 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
        delete (yyvsp[0].typeinfo);
	}
#line 2462 "parser.tab.c"
    break;

  case 65: /* unary_expression: SIZEOF unary_expression  */
#line 1206 "parser.y"
                                  { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof operation result type: int\n";
		delete (yyvsp[0].typeinfo);
	}
#line 2474 "parser.tab.c"
    break;

  case 66: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 1213 "parser.y"
                                              { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof(" << (yyvsp[-1].typeinfo)->toString() << ") result type: int\n";
		delete (yyvsp[-1].typeinfo);
	}
#line 2486 "parser.tab.c"
    break;

  case 67: /* unary_operator: BIT_AND  */
#line 1223 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 2492 "parser.tab.c"
    break;

  case 68: /* unary_operator: STAR  */
#line 1224 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 2498 "parser.tab.c"
    break;

  case 69: /* unary_operator: PLUS  */
#line 1225 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 2504 "parser.tab.c"
    break;

  case 70: /* unary_operator: MINUS  */
#line 1226 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 2510 "parser.tab.c"
    break;

  case 71: /* unary_operator: BIT_NOT  */
#line 1227 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 2516 "parser.tab.c"
    break;

  case 72: /* unary_operator: LOGICAL_NOT  */
#line 1228 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 2522 "parser.tab.c"
    break;

  case 73: /* cast_expression: unary_expression  */
#line 1232 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2528 "parser.tab.c"
    break;

  case 74: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 1233 "parser.y"
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
#line 2583 "parser.tab.c"
    break;

  case 75: /* multiplicative_expression: cast_expression  */
#line 1286 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2589 "parser.tab.c"
    break;

  case 76: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 1287 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2598 "parser.tab.c"
    break;

  case 77: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 1291 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2607 "parser.tab.c"
    break;

  case 78: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 1295 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2616 "parser.tab.c"
    break;

  case 79: /* additive_expression: multiplicative_expression  */
#line 1302 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2622 "parser.tab.c"
    break;

  case 80: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 1303 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2631 "parser.tab.c"
    break;

  case 81: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 1307 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2640 "parser.tab.c"
    break;

  case 82: /* shift_expression: additive_expression  */
#line 1315 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2646 "parser.tab.c"
    break;

  case 83: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 1316 "parser.y"
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
#line 2665 "parser.tab.c"
    break;

  case 84: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 1330 "parser.y"
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
#line 2684 "parser.tab.c"
    break;

  case 85: /* relational_expression: shift_expression  */
#line 1347 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2690 "parser.tab.c"
    break;

  case 86: /* relational_expression: relational_expression LT shift_expression  */
#line 1348 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2699 "parser.tab.c"
    break;

  case 87: /* relational_expression: relational_expression GT shift_expression  */
#line 1352 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2708 "parser.tab.c"
    break;

  case 88: /* relational_expression: relational_expression LE shift_expression  */
#line 1356 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2717 "parser.tab.c"
    break;

  case 89: /* relational_expression: relational_expression GE shift_expression  */
#line 1360 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2726 "parser.tab.c"
    break;

  case 90: /* equality_expression: relational_expression  */
#line 1367 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2732 "parser.tab.c"
    break;

  case 91: /* equality_expression: equality_expression EQ relational_expression  */
#line 1368 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2741 "parser.tab.c"
    break;

  case 92: /* equality_expression: equality_expression NEQ relational_expression  */
#line 1372 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2750 "parser.tab.c"
    break;

  case 93: /* and_expression: equality_expression  */
#line 1379 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2756 "parser.tab.c"
    break;

  case 94: /* and_expression: and_expression BIT_AND equality_expression  */
#line 1380 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2765 "parser.tab.c"
    break;

  case 95: /* exclusive_or_expression: and_expression  */
#line 1387 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2771 "parser.tab.c"
    break;

  case 96: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 1388 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2780 "parser.tab.c"
    break;

  case 97: /* inclusive_or_expression: exclusive_or_expression  */
#line 1395 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2786 "parser.tab.c"
    break;

  case 98: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 1396 "parser.y"
                                                                 { 
		
        (yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
        delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 2796 "parser.tab.c"
    break;

  case 99: /* logical_and_expression: inclusive_or_expression  */
#line 1403 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2802 "parser.tab.c"
    break;

  case 100: /* $@1: %empty  */
#line 1404 "parser.y"
                                             { 
        TACOperand* true_label = new_label(2);
        TACInstruction* if_true = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        TACInstruction* goto_false = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1); // TAC -> goto ___
        (yyvsp[-1].typeinfo)->code.push_back(if_true);
        (yyvsp[-1].typeinfo)->code.push_back(goto_false);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_false);
    }
#line 2815 "parser.tab.c"
    break;

  case 101: /* logical_and_expression: logical_and_expression LOGICAL_AND $@1 inclusive_or_expression  */
#line 1411 "parser.y"
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
#line 2868 "parser.tab.c"
    break;

  case 102: /* logical_or_expression: logical_and_expression  */
#line 1462 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2874 "parser.tab.c"
    break;

  case 103: /* $@2: %empty  */
#line 1463 "parser.y"
                                           {
        TACInstruction* go_true = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); // TAC -> if E1->result nop ___ goto ___
        (yyvsp[-1].typeinfo)->code.push_back(go_true);
        (yyvsp[-1].typeinfo)->true_list.insert(go_true);
    }
#line 2884 "parser.tab.c"
    break;

  case 104: /* logical_or_expression: logical_or_expression LOGICAL_OR $@2 logical_and_expression  */
#line 1467 "parser.y"
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
#line 2938 "parser.tab.c"
    break;

  case 105: /* conditional_expression: logical_or_expression  */
#line 1519 "parser.y"
                                                                                         {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // No conditional, just pass through
    }
#line 2946 "parser.tab.c"
    break;

  case 106: /* assignment_expression: conditional_expression  */
#line 1525 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2952 "parser.tab.c"
    break;

  case 107: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 1526 "parser.y"
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
#line 3003 "parser.tab.c"
    break;

  case 109: /* expression: assignment_expression  */
#line 1579 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 3009 "parser.tab.c"
    break;

  case 110: /* expression: expression COMMA assignment_expression  */
#line 1580 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = new TypeInfo(*(yyvsp[0].typeinfo));
        (yyval.typeinfo)->isLvalue = false;  // Result of comma operator is not an
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
		delete (yyvsp[-2].typeinfo);
        delete (yyvsp[0].typeinfo);
	}
#line 3023 "parser.tab.c"
    break;

  case 111: /* constant_expression: conditional_expression  */
#line 1592 "parser.y"
                                 { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
	}
#line 3031 "parser.tab.c"
    break;

  case 112: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 1600 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 3040 "parser.tab.c"
    break;

  case 113: /* struct_specifier: struct IDENTIFIER  */
#line 1604 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 3049 "parser.tab.c"
    break;

  case 114: /* struct: STRUCT  */
#line 1611 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 3055 "parser.tab.c"
    break;

  case 120: /* struct_declarator: declarator  */
#line 1629 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 3061 "parser.tab.c"
    break;

  case 121: /* pointer: STAR  */
#line 1635 "parser.y"
           {                                   /* e.g., * */
        (yyval.ival) = 1;  // Return pointer level instead of TypeInfo
    }
#line 3069 "parser.tab.c"
    break;

  case 122: /* pointer: STAR pointer  */
#line 1638 "parser.y"
                   {                           /* e.g., ** or *** etc. */
        (yyval.ival) = (yyvsp[0].ival) + 1;  // Increment pointer level for each * encountered
    }
#line 3077 "parser.tab.c"
    break;

  case 123: /* statement: labeled_statement  */
#line 1647 "parser.y"
                                                                                                      {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3085 "parser.tab.c"
    break;

  case 124: /* statement: compound_statement  */
#line 1650 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3093 "parser.tab.c"
    break;

  case 125: /* statement: expression_statement  */
#line 1653 "parser.y"
                                                                                                 {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3101 "parser.tab.c"
    break;

  case 126: /* statement: selection_statement  */
#line 1656 "parser.y"
                                                                                                        {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3109 "parser.tab.c"
    break;

  case 127: /* statement: iteration_statement  */
#line 1659 "parser.y"
                                                                                                           {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3117 "parser.tab.c"
    break;

  case 128: /* statement: jump_statement  */
#line 1662 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
    }
#line 3125 "parser.tab.c"
    break;

  case 129: /* statement: error SEMICOLON  */
#line 1665 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 3134 "parser.tab.c"
    break;

  case 133: /* $@3: %empty  */
#line 1679 "parser.y"
                 { enter_scope(); insert_current_function_parameters(); }
#line 3140 "parser.tab.c"
    break;

  case 134: /* compound_statement: LBRACE $@3 declaration_list statement_list RBRACE  */
#line 1679 "parser.y"
                                                                                                                 {
        (yyval.typeinfo) = new TypeInfo();
        if((yyvsp[-2].typeinfo)){
            //print
            cout<<"hehe\n"; 
            for(TACInstruction* inst : (yyvsp[-2].typeinfo)->code){
                print_TAC_instruction(inst);
            }
        }
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-1].typeinfo)->code.begin(), (yyvsp[-1].typeinfo)->code.end());
        (yyval.typeinfo)->next_list = (yyvsp[-1].typeinfo)->next_list;
        delete (yyvsp[-2].typeinfo);
        delete (yyvsp[-1].typeinfo);
        exit_scope(); 
    }
#line 3161 "parser.tab.c"
    break;

  case 135: /* marker: %empty  */
#line 1698 "parser.y"
                  {
        (yyval.opinfo) = new_label(0); // Create a label for the beginning of loops
    }
#line 3169 "parser.tab.c"
    break;

  case 136: /* statement_list: statement  */
#line 1704 "parser.y"
                                                                                               {
        (yyval.typeinfo)= (yyvsp[0].typeinfo);
        TACOperand* curr_inst = new_label(0);
        backpatch((yyval.typeinfo)->next_list,curr_inst);
    }
#line 3179 "parser.tab.c"
    break;

  case 137: /* statement_list: statement_list marker statement  */
#line 1709 "parser.y"
                                                                                                               {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-2].typeinfo)->code;
        backpatch((yyvsp[-2].typeinfo)->next_list, (yyvsp[-1].opinfo));
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->next_list = (yyvsp[0].typeinfo)->next_list;
        delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 3192 "parser.tab.c"
    break;

  case 138: /* statement_list: %empty  */
#line 1717 "parser.y"
                        {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
    }
#line 3201 "parser.tab.c"
    break;

  case 140: /* expression_statement: expression SEMICOLON  */
#line 1726 "parser.y"
                                                                                                  {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
    }
#line 3209 "parser.tab.c"
    break;

  case 141: /* selection_statement: if_expression  */
#line 1732 "parser.y"
                                                                               {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        if (! (yyvsp[0].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[0].typeinfo)->false_list, curr_inst);
        }
    }
#line 3221 "parser.tab.c"
    break;

  case 142: /* $@4: %empty  */
#line 1739 "parser.y"
                             {        
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->next_list.insert(goto_inst);
        if (! (yyvsp[-1].typeinfo)->false_list.empty()) {
            TACOperand* curr_inst = new_label(0);
            backpatch((yyvsp[-1].typeinfo)->false_list, curr_inst);
        }
    }
#line 3235 "parser.tab.c"
    break;

  case 143: /* selection_statement: if_expression ELSE $@4 statement  */
#line 1748 "parser.y"
    {
        (yyval.typeinfo) = (yyvsp[-3].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        (yyval.typeinfo)->next_list.insert((yyvsp[0].typeinfo)->next_list.begin(), (yyvsp[0].typeinfo)->next_list.end());
        delete (yyvsp[0].typeinfo);
    }
#line 3246 "parser.tab.c"
    break;

  case 145: /* $@5: %empty  */
#line 1758 "parser.y"
                                   {
        TACOperand* true_label = new_label(2);
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), true_label, (yyvsp[-1].typeinfo)->result, new_empty_var(), 2); 
        (yyvsp[-1].typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyvsp[-1].typeinfo)->code.push_back(goto_inst);
        (yyvsp[-1].typeinfo)->false_list.insert(goto_inst);
    }
#line 3259 "parser.tab.c"
    break;

  case 146: /* if_expression: IF LPAREN expression RPAREN $@5 statement  */
#line 1765 "parser.y"
                 {
        (yyval.typeinfo) = (yyvsp[-3].typeinfo);
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        TACOperand* curr_inst = new_label(0);
        backpatch((yyvsp[0].typeinfo)->next_list, curr_inst);
        delete (yyvsp[0].typeinfo);
    }
#line 3271 "parser.tab.c"
    break;

  case 147: /* $@6: %empty  */
#line 1777 "parser.y"
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
#line 3290 "parser.tab.c"
    break;

  case 148: /* iteration_statement: WHILE begin_marker LPAREN expression RPAREN $@6 statement  */
#line 1790 "parser.y"
                                            {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-3].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        TACOperand* curr_inst = new_label(0);
        backpatch((yyvsp[0].typeinfo)->next_list, curr_inst);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-5].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_begin);
        (yyval.typeinfo)->next_list.insert((yyvsp[-3].typeinfo)->false_list.begin(), (yyvsp[-3].typeinfo)->false_list.end());
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 3306 "parser.tab.c"
    break;

  case 149: /* $@7: %empty  */
#line 1801 "parser.y"
                                               {
        // if E then goto___ -> next list
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), (yyvsp[0].typeinfo)->result, new_empty_var(), 1);
        (yyvsp[0].typeinfo)->code.push_back(if_inst);
        (yyvsp[0].typeinfo)->true_list.insert(if_inst);
    }
#line 3317 "parser.tab.c"
    break;

  case 150: /* iteration_statement: UNTIL begin_marker LPAREN expression $@7 RPAREN statement  */
#line 1806 "parser.y"
                                                    {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-3].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[0].typeinfo)->code.begin(), (yyvsp[0].typeinfo)->code.end());
        // at the end of the loop body, add a goto to the beginning of the loop
        TACOperand* curr_inst = new_label(0);
        backpatch((yyvsp[0].typeinfo)->next_list, curr_inst);
        TACInstruction* goto_begin = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-5].opinfo), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_begin);
        // next_list of the loop statement is the true_list of the condition expression
        (yyval.typeinfo)->next_list = (yyvsp[-3].typeinfo)->true_list;
        delete (yyvsp[-3].typeinfo); delete (yyvsp[0].typeinfo);
    }
#line 3335 "parser.tab.c"
    break;

  case 151: /* $@8: %empty  */
#line 1819 "parser.y"
                                     {
        TACOperand* curr_inst = new_label(0);
        backpatch((yyvsp[0].typeinfo)->next_list, curr_inst);
    }
#line 3344 "parser.tab.c"
    break;

  case 152: /* iteration_statement: DO begin_marker statement $@8 WHILE LPAREN expression RPAREN SEMICOLON  */
#line 1822 "parser.y"
                                              {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->code = (yyvsp[-6].typeinfo)->code;
        (yyval.typeinfo)->code.insert((yyval.typeinfo)->code.end(), (yyvsp[-2].typeinfo)->code.begin(), (yyvsp[-2].typeinfo)->code.end());
        TACInstruction* if_inst = emit(TACOperator(TAC_OPERATOR_NOP), (yyvsp[-7].opinfo), (yyvsp[-2].typeinfo)->result, new_empty_var(), 2);
        (yyval.typeinfo)->code.push_back(if_inst);
        TACInstruction* goto_end = emit(TACOperator(TAC_OPERATOR_NOP), new_empty_var(), new_empty_var(), new_empty_var(), 1);
        (yyval.typeinfo)->code.push_back(goto_end);
        (yyvsp[-2].typeinfo)->false_list.insert(goto_end);
        // next_list of the loop statement is the false_list of the condition expression
        (yyval.typeinfo)->next_list = (yyvsp[-2].typeinfo)->false_list;

    }
#line 3362 "parser.tab.c"
    break;

  case 155: /* begin_marker: %empty  */
#line 1840 "parser.y"
                  {
        // Mark the beginning of a loop for backpatching
        (yyval.opinfo) = new_label(0);
    }
#line 3371 "parser.tab.c"
    break;


#line 3375 "parser.tab.c"

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

#line 1854 "parser.y"




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


pair<vector<TACInstruction*>,pair<TACOperand*,TACOperand*>> change_types_lhs_to_rhs(const TypeInfo& left, const TypeInfo& right) {
    
    
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
