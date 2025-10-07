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

static void yyerror(const char* s) {
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
  YYSYMBOL_initializer_list = 81,          /* initializer_list  */
  YYSYMBOL_parameter_list = 82,            /* parameter_list  */
  YYSYMBOL_parameter_declaration = 83,     /* parameter_declaration  */
  YYSYMBOL_parameter_declarator = 84,      /* parameter_declarator  */
  YYSYMBOL_parameter_direct_declarator = 85, /* parameter_direct_declarator  */
  YYSYMBOL_primary_expression = 86,        /* primary_expression  */
  YYSYMBOL_postfix_expression = 87,        /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 88,  /* argument_expression_list  */
  YYSYMBOL_unary_expression = 89,          /* unary_expression  */
  YYSYMBOL_unary_operator = 90,            /* unary_operator  */
  YYSYMBOL_cast_expression = 91,           /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 92, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 93,       /* additive_expression  */
  YYSYMBOL_shift_expression = 94,          /* shift_expression  */
  YYSYMBOL_relational_expression = 95,     /* relational_expression  */
  YYSYMBOL_equality_expression = 96,       /* equality_expression  */
  YYSYMBOL_and_expression = 97,            /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 98,   /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 99,   /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 100,   /* logical_and_expression  */
  YYSYMBOL_logical_or_expression = 101,    /* logical_or_expression  */
  YYSYMBOL_conditional_expression = 102,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 103,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 104,      /* assignment_operator  */
  YYSYMBOL_expression = 105,               /* expression  */
  YYSYMBOL_constant_expression = 106,      /* constant_expression  */
  YYSYMBOL_struct_specifier = 107,         /* struct_specifier  */
  YYSYMBOL_struct = 108,                   /* struct  */
  YYSYMBOL_struct_declaration_list = 109,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 110,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 111,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 112,        /* struct_declarator  */
  YYSYMBOL_pointer = 113,                  /* pointer  */
  YYSYMBOL_statement = 114,                /* statement  */
  YYSYMBOL_labeled_statement = 115,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 116,       /* compound_statement  */
  YYSYMBOL_117_1 = 117,                    /* $@1  */
  YYSYMBOL_statement_list = 118,           /* statement_list  */
  YYSYMBOL_expression_statement = 119,     /* expression_statement  */
  YYSYMBOL_selection_statement = 120,      /* selection_statement  */
  YYSYMBOL_iteration_statement = 121,      /* iteration_statement  */
  YYSYMBOL_jump_statement = 122            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 122 "parser.y"

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
    bool are_parameters_compatible(const vector<TypeInfo>& argTypes, const vector<FunctionParam>& params);
    void display_function_table();
    void insert_current_function_parameters();

#line 303 "parser.tab.c"

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
#define YYLAST   715

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  59
/* YYNRULES -- Number of rules.  */
#define YYNRULES  151
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  264

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
       0,   249,   249,   250,   256,   257,   261,   278,   298,   299,
     334,   338,   339,   346,   350,   354,   358,   362,   371,   374,
     383,   387,   395,   396,   405,   411,   418,   423,   432,   437,
     444,   453,   466,   467,   468,   477,   478,   483,   491,   501,
     524,   529,   537,   556,   562,   569,   580,   596,   602,   608,
     615,   622,   629,   636,   637,   662,   687,   714,   719,   724,
     728,   735,   741,   750,   751,   755,   759,   763,   770,   780,
     781,   782,   783,   784,   785,   789,   790,   843,   844,   848,
     852,   859,   860,   864,   871,   872,   886,   903,   904,   908,
     912,   916,   923,   924,   928,   935,   936,   943,   944,   951,
     952,   959,   960,   967,   968,   975,   979,   980,  1007,  1011,
    1012,  1020,  1035,  1039,  1046,  1050,  1051,  1056,  1060,  1061,
    1065,  1072,  1083,  1084,  1085,  1086,  1087,  1088,  1089,  1097,
    1098,  1099,  1106,  1106,  1110,  1111,  1112,  1116,  1117,  1121,
    1122,  1123,  1127,  1128,  1129,  1130,  1131,  1135,  1136,  1137,
    1138,  1139
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
  "initializer_list", "parameter_list", "parameter_declaration",
  "parameter_declarator", "parameter_direct_declarator",
  "primary_expression", "postfix_expression", "argument_expression_list",
  "unary_expression", "unary_operator", "cast_expression",
  "multiplicative_expression", "additive_expression", "shift_expression",
  "relational_expression", "equality_expression", "and_expression",
  "exclusive_or_expression", "inclusive_or_expression",
  "logical_and_expression", "logical_or_expression",
  "conditional_expression", "assignment_expression", "assignment_operator",
  "expression", "constant_expression", "struct_specifier", "struct",
  "struct_declaration_list", "struct_declaration",
  "struct_declarator_list", "struct_declarator", "pointer", "statement",
  "labeled_statement", "compound_statement", "$@1", "statement_list",
  "expression_statement", "selection_statement", "iteration_statement",
  "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-168)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-137)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     157,  -168,  -168,  -168,  -168,   168,  -168,     4,  -168,  -168,
    -168,   -11,  -168,  -168,  -168,   -54,  -168,  -168,  -168,  -168,
    -168,   -41,    96,  -168,     6,  -168,     1,  -168,   -19,     8,
      24,    19,  -168,   -20,   392,  -168,  -168,  -168,  -168,  -168,
     168,  -168,   -12,    -1,  -168,    49,    66,  -168,    76,   590,
    -168,   621,   621,  -168,  -168,  -168,  -168,  -168,  -168,   652,
     361,  -168,  -168,  -168,  -168,  -168,  -168,  -168,     9,   114,
     652,  -168,   106,   113,   123,   100,   127,   112,   121,   139,
     178,   163,  -168,  -168,   157,   -20,   164,  -168,  -168,  -168,
    -168,   154,   157,  -168,  -168,   361,  -168,   652,  -168,  -168,
      86,  -168,   179,   169,  -168,    13,  -168,  -168,   158,   165,
     423,   652,  -168,   652,  -168,  -168,   652,   652,   652,   652,
     652,   652,   652,   652,   652,   652,   652,   652,   652,   652,
     652,   652,   652,   652,  -168,    -5,   184,  -168,   115,  -168,
    -168,  -168,  -168,  -168,   174,   457,  -168,  -168,   652,   652,
    -168,  -168,  -168,  -168,    53,  -168,   -37,  -168,  -168,  -168,
    -168,   106,   106,   113,   113,   123,   123,   123,   123,   100,
     100,   127,   112,   121,   139,   178,   173,   176,   181,   185,
     310,   186,   182,   183,   187,   652,   201,   191,  -168,   490,
     203,  -168,   128,  -168,  -168,  -168,   247,  -168,  -168,  -168,
    -168,  -168,   -20,  -168,  -168,  -168,  -168,  -168,   652,  -168,
    -168,  -168,   652,   523,   652,   242,   652,  -168,  -168,   652,
    -168,   205,   310,   206,  -168,   130,   310,  -168,  -168,  -168,
    -168,  -168,    54,   523,    61,   213,    63,    70,   310,  -168,
    -168,  -168,  -168,   310,   556,   310,   652,   310,   310,  -168,
     261,   310,    72,  -168,    80,  -168,  -168,   310,  -168,   310,
     223,  -168,  -168,  -168
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    15,    16,    14,    13,     0,   114,     0,     2,     4,
       5,     0,    10,    11,    17,     0,    12,     1,     3,   121,
       8,    26,     0,    20,    22,    25,     0,    29,     0,   113,
       0,     0,     9,     0,     0,     7,   132,     6,    24,    28,
       0,    31,     0,     0,    40,     0,    26,    21,     0,     0,
      51,     0,     0,    71,    72,    70,    74,    69,    73,     0,
       0,    46,    47,    48,    50,    49,    23,    53,    63,    75,
       0,    77,    81,    84,    87,    92,    95,    97,    99,   101,
     103,   105,   106,    35,    34,     0,     0,   115,    45,    42,
      44,     0,     0,    30,    27,     0,    67,     0,    64,    65,
       0,    38,    18,     0,   109,     0,    59,    60,     0,     0,
       0,     0,   108,     0,    75,    66,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    32,     0,     0,   120,     0,   118,
     112,   116,    43,    41,     0,     0,    36,    19,     0,     0,
      52,    58,    57,    55,     0,    61,     0,   107,    78,    79,
      80,    82,    83,    85,    86,    90,    91,    88,    89,    93,
      94,    96,    98,   100,   102,   104,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   137,     0,
      46,    33,     0,   134,   122,   123,     0,   124,   125,   126,
     127,   117,     0,    68,    37,    39,    76,   110,     0,    56,
      54,   128,     0,     0,     0,     0,     0,   149,   148,     0,
     111,     0,     0,     0,   150,     0,     0,   138,   133,   135,
     119,    62,     0,     0,     0,     0,     0,     0,     0,   131,
     147,   151,   129,     0,     0,     0,     0,     0,     0,   130,
     139,     0,     0,   142,     0,   143,   141,     0,   145,     0,
       0,   140,   146,   144
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -168,  -168,   266,  -168,   -78,   -27,  -168,    15,  -168,  -168,
     241,   -83,    -7,  -168,   248,  -168,  -168,  -168,  -168,   188,
    -168,   193,  -168,  -168,  -168,   -34,  -168,   -48,    62,    88,
     -52,    84,   146,   147,   148,   153,   145,  -168,   101,   -33,
    -168,   -60,  -168,  -168,  -168,  -168,   202,  -168,    85,     0,
    -120,  -168,   265,  -168,  -168,  -167,  -168,  -168,  -168
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     7,     8,     9,    10,    11,    12,    13,   103,    22,
      23,    24,    25,    26,    27,   136,    66,   100,    43,    44,
      89,    90,    67,    68,   154,    69,    70,    71,    72,    73,
      74,    75,    76,    77,    78,    79,    80,    81,    82,   104,
     113,   192,   221,    14,    15,    86,    87,   138,   139,    48,
     193,   194,   195,    84,   196,   197,   198,   199,   200
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     105,    83,   137,    42,    17,    29,   134,     1,     2,     3,
       4,    28,    30,   149,    31,    96,    19,    98,    99,   210,
      16,    38,   115,     5,    19,    19,   101,     1,     2,     3,
       4,    19,   106,   107,   108,   105,   114,   105,    20,    46,
      21,    38,    91,     5,    20,    34,   233,    88,    21,    92,
      35,   156,    36,    93,    46,    85,   109,   135,   191,    40,
     215,     6,   110,   149,   111,    42,   244,   150,   158,   159,
     160,   165,   166,   167,   168,   102,   229,   155,    41,    45,
     157,     6,   114,   114,   114,   114,   114,   114,   114,   114,
     114,   114,   114,   114,   114,   114,   114,   114,   114,   114,
     206,    85,   239,   208,   149,    94,   242,   209,   243,   135,
     144,   149,   205,   149,   114,   245,   207,   247,   249,   137,
     149,    31,   149,   250,   248,   253,   259,   255,   256,   225,
     149,   258,   123,   124,   260,    46,   145,   261,   146,   262,
     125,   126,   116,   117,   118,    32,    33,   119,   120,   121,
     122,   114,   232,   112,   234,   129,   236,   127,   128,   237,
       1,     2,     3,     4,   201,   202,   130,     1,     2,     3,
       4,     1,     2,     3,     4,   231,     5,   227,   149,   241,
     149,   161,   162,   131,   252,   176,   254,     1,     2,     3,
       4,   177,   133,   178,   179,   180,   181,   182,   183,   184,
     185,   186,    49,     5,   187,    50,   132,    51,    52,   163,
     164,   169,   170,    88,     6,   147,   140,   151,    53,    54,
      55,     6,   211,   148,   152,     6,    56,    57,   203,   212,
      58,   217,   218,   188,   213,    36,  -136,    60,   214,   216,
     219,     6,   189,   190,    62,    63,    64,    65,   176,   222,
     223,   226,   235,   238,   177,   240,   178,   179,   180,   181,
     182,   183,   184,   185,   186,    49,   246,   187,    50,   257,
      51,    52,   263,    18,    47,   171,    39,   172,   175,   173,
     143,    53,    54,    55,   142,   174,   220,   230,   141,    56,
      57,    37,     0,    58,     0,     0,   188,     0,    36,   228,
      60,     0,     0,     0,     0,   189,   190,    62,    63,    64,
      65,   176,     0,     0,     0,     0,     0,   177,     0,   178,
     179,   180,   181,   182,   183,   184,   185,   186,    49,     0,
     187,    50,     0,    51,    52,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,   188,
       0,    36,     0,    60,     1,     2,     3,     4,   189,   190,
      62,    63,    64,    65,     0,     0,     0,     0,     0,    49,
       0,     0,    50,     0,    51,    52,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    53,    54,    55,     0,     0,
       0,     0,     0,    56,    57,     0,     0,    58,     0,     0,
      49,     0,     0,    50,    60,    51,    52,     0,     6,     0,
      61,    62,    63,    64,    65,     0,    53,    54,    55,     0,
       0,     0,     0,     0,    56,    57,     0,     0,    58,     0,
       0,    49,     0,    59,    50,    60,    51,    52,     0,     0,
       0,    61,    62,    63,    64,    65,     0,    53,    54,    55,
       0,     0,     0,     0,     0,    56,    57,     0,     0,    58,
       0,     0,     0,     0,     0,    49,    60,   153,    50,     0,
      51,    52,    61,    62,    63,    64,    65,     0,     0,     0,
       0,    53,    54,    55,     0,     0,     0,     0,     0,    56,
      57,     0,     0,    58,     0,     0,     0,     0,    49,   204,
      60,    50,     0,    51,    52,     0,    61,    62,    63,    64,
      65,     0,     0,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,   224,
       0,    49,     0,    60,    50,     0,    51,    52,     0,    61,
      62,    63,    64,    65,     0,     0,     0,    53,    54,    55,
       0,     0,     0,     0,     0,    56,    57,     0,     0,    58,
       0,     0,   188,     0,    49,     0,    60,    50,     0,    51,
      52,     0,    61,    62,    63,    64,    65,     0,     0,     0,
      53,    54,    55,     0,     0,     0,     0,     0,    56,    57,
       0,     0,    58,     0,     0,     0,     0,     0,    49,    60,
     251,    50,     0,    51,    52,    61,    62,    63,    64,    65,
       0,     0,     0,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,    49,
       0,     0,    50,    95,    51,    52,     0,     0,     0,    61,
      62,    63,    64,    65,     0,    53,    54,    55,     0,     0,
       0,     0,     0,    56,    57,     0,     0,    58,     0,     0,
      49,     0,     0,    50,    97,    51,    52,     0,     0,     0,
      61,    62,    63,    64,    65,     0,    53,    54,    55,     0,
       0,     0,     0,     0,    56,    57,     0,     0,    58,     0,
       0,     0,     0,     0,     0,    60,     0,     0,     0,     0,
       0,    61,    62,    63,    64,    65
};

static const yytype_int16 yycheck[] =
{
      60,    34,    85,    30,     0,    59,    84,     3,     4,     5,
       6,    11,    53,    50,    55,    49,    36,    51,    52,    56,
       5,    28,    70,    19,    36,    36,    59,     3,     4,     5,
       6,    36,    23,    24,    25,    95,    70,    97,    49,    59,
      59,    48,    42,    19,    49,    39,   213,    59,    59,    50,
      49,   111,    51,    54,    59,    40,    47,    84,   136,    51,
     180,    57,    53,    50,    55,    92,   233,    54,   116,   117,
     118,   123,   124,   125,   126,    60,   196,   110,    54,    60,
     113,    57,   116,   117,   118,   119,   120,   121,   122,   123,
     124,   125,   126,   127,   128,   129,   130,   131,   132,   133,
     148,    86,   222,    50,    50,    56,   226,    54,    54,   136,
      95,    50,   145,    50,   148,    54,   149,    54,   238,   202,
      50,    55,    50,   243,    54,   245,    54,   247,   248,   189,
      50,   251,    32,    33,    54,    59,    50,   257,    52,   259,
      40,    41,    36,    37,    38,    49,    50,    34,    35,    26,
      27,   185,   212,    39,   214,    43,   216,    30,    31,   219,
       3,     4,     5,     6,    49,    50,    45,     3,     4,     5,
       6,     3,     4,     5,     6,   208,    19,    49,    50,    49,
      50,   119,   120,    44,   244,     1,   246,     3,     4,     5,
       6,     7,    29,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    28,    23,    24,   121,
     122,   127,   128,    59,    57,    36,    52,    59,    34,    35,
      36,    57,    49,    54,    59,    57,    42,    43,    54,    53,
      46,    49,    49,    49,    53,    51,    52,    53,    53,    53,
      53,    57,    58,    59,    60,    61,    62,    63,     1,    48,
      59,    48,    10,    48,     7,    49,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    53,    20,    21,     8,
      23,    24,    49,     7,    33,   129,    28,   130,   133,   131,
      92,    34,    35,    36,    91,   132,   185,   202,    86,    42,
      43,    26,    -1,    46,    -1,    -1,    49,    -1,    51,    52,
      53,    -1,    -1,    -1,    -1,    58,    59,    60,    61,    62,
      63,     1,    -1,    -1,    -1,    -1,    -1,     7,    -1,     9,
      10,    11,    12,    13,    14,    15,    16,    17,    18,    -1,
      20,    21,    -1,    23,    24,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,
      -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,    49,
      -1,    51,    -1,    53,     3,     4,     5,     6,    58,    59,
      60,    61,    62,    63,    -1,    -1,    -1,    -1,    -1,    18,
      -1,    -1,    21,    -1,    23,    24,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      18,    -1,    -1,    21,    53,    23,    24,    -1,    57,    -1,
      59,    60,    61,    62,    63,    -1,    34,    35,    36,    -1,
      -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,
      -1,    18,    -1,    51,    21,    53,    23,    24,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    -1,    -1,    -1,    18,    53,    54,    21,    -1,
      23,    24,    59,    60,    61,    62,    63,    -1,    -1,    -1,
      -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,    42,
      43,    -1,    -1,    46,    -1,    -1,    -1,    -1,    18,    52,
      53,    21,    -1,    23,    24,    -1,    59,    60,    61,    62,
      63,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,
      -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,    49,
      -1,    18,    -1,    53,    21,    -1,    23,    24,    -1,    59,
      60,    61,    62,    63,    -1,    -1,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    49,    -1,    18,    -1,    53,    21,    -1,    23,
      24,    -1,    59,    60,    61,    62,    63,    -1,    -1,    -1,
      34,    35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,
      -1,    -1,    46,    -1,    -1,    -1,    -1,    -1,    18,    53,
      54,    21,    -1,    23,    24,    59,    60,    61,    62,    63,
      -1,    -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,
      -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,    18,
      -1,    -1,    21,    53,    23,    24,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    -1,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      18,    -1,    -1,    21,    53,    23,    24,    -1,    -1,    -1,
      59,    60,    61,    62,    63,    -1,    34,    35,    36,    -1,
      -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,
      -1,    -1,    -1,    -1,    -1,    53,    -1,    -1,    -1,    -1,
      -1,    59,    60,    61,    62,    63
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      68,    69,    70,    71,   107,   108,    71,     0,    66,    36,
      49,    59,    73,    74,    75,    76,    77,    78,   113,    59,
      53,    55,    49,    50,    39,    49,    51,   116,    76,    78,
      51,    54,    69,    82,    83,    60,    59,    74,   113,    18,
      21,    23,    24,    34,    35,    36,    42,    43,    46,    51,
      53,    59,    60,    61,    62,    63,    80,    86,    87,    89,
      90,    91,    92,    93,    94,    95,    96,    97,    98,    99,
     100,   101,   102,   103,   117,    71,   109,   110,    59,    84,
      85,   113,    50,    54,    56,    53,    89,    53,    89,    89,
      81,   103,    71,    72,   103,   105,    23,    24,    25,    47,
      53,    55,    39,   104,    89,    91,    36,    37,    38,    34,
      35,    26,    27,    32,    33,    40,    41,    30,    31,    43,
      45,    44,    28,    29,    68,    69,    79,    75,   111,   112,
      52,   110,    85,    83,    71,    50,    52,    36,    54,    50,
      54,    59,    59,    54,    88,   103,   105,   103,    91,    91,
      91,    92,    92,    93,    93,    94,    94,    94,    94,    95,
      95,    96,    97,    98,    99,   100,     1,     7,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    20,    49,    58,
      59,    68,   105,   114,   115,   116,   118,   119,   120,   121,
     122,    49,    50,    54,    52,   103,    91,   103,    50,    54,
      56,    49,    53,    53,    53,   114,    53,    49,    49,    53,
     102,   106,    48,    59,    49,   105,    48,    49,    52,   114,
     112,   103,   105,   119,   105,    10,   105,   105,    48,   114,
      49,    49,   114,    54,   119,    54,    53,    54,    54,   114,
     114,    54,   105,   114,   105,   114,   114,     8,   114,    54,
      54,   114,   114,    49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    67,    67,    68,    68,
      69,    70,    70,    71,    71,    71,    71,    71,    72,    72,
      73,    73,    74,    74,    75,    75,    76,    76,    77,    77,
      78,    78,    79,    79,    79,    80,    80,    80,    81,    81,
      82,    82,    83,    84,    84,    85,    86,    86,    86,    86,
      86,    86,    86,    87,    87,    87,    87,    87,    87,    87,
      87,    88,    88,    89,    89,    89,    89,    89,    89,    90,
      90,    90,    90,    90,    90,    91,    91,    92,    92,    92,
      92,    93,    93,    93,    94,    94,    94,    95,    95,    95,
      95,    95,    96,    96,    96,    97,    97,    98,    98,    99,
      99,   100,   100,   101,   101,   102,   103,   103,   104,   105,
     105,   106,   107,   107,   108,   109,   109,   110,   111,   111,
     112,   113,   114,   114,   114,   114,   114,   114,   114,   115,
     115,   115,   117,   116,   118,   118,   118,   119,   119,   120,
     120,   120,   121,   121,   121,   121,   121,   122,   122,   122,
     122,   122
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     3,     2,     3,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     2,
       1,     3,     1,     3,     2,     1,     1,     4,     2,     1,
       4,     3,     1,     2,     0,     1,     3,     4,     1,     3,
       1,     3,     2,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     4,     3,     4,     3,     3,     2,
       2,     1,     3,     1,     2,     2,     2,     2,     4,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     3,     1,     3,     1,     1,     3,     1,     1,
       3,     1,     5,     2,     1,     1,     2,     3,     1,     3,
       1,     1,     1,     1,     1,     1,     1,     1,     2,     3,
       4,     3,     0,     5,     1,     2,     0,     1,     2,     5,
       7,     5,     5,     5,     7,     6,     7,     3,     2,     2,
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
  case 6: /* function_definition: return_types fun_declarator compound_statement  */
#line 261 "parser.y"
                                                         {               /* e.g., int f() { ... } */
		// Register function definition
		TypeInfo returnType = *(yyvsp[-2].typeinfo);
		if ((yyvsp[-1].declinfo)->isPointer) {
			returnType.isPointer = true;
		}
		
		if ((yyvsp[-1].declinfo)->isFunction && (yyvsp[-1].declinfo)->paramTypes) {
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes);
			cout << "Function definition: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}
		
		// Clean up
		if ((yyvsp[-1].declinfo)->paramTypes) delete (yyvsp[-1].declinfo)->paramTypes;
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].declinfo);
	}
#line 1568 "parser.tab.c"
    break;

  case 7: /* function_definition: return_types fun_declarator SEMICOLON  */
#line 278 "parser.y"
                                                {				/* e.g., int f(); */
		// Register function declaration
		TypeInfo returnType = *(yyvsp[-2].typeinfo);
		if ((yyvsp[-1].declinfo)->isPointer) {
			returnType.isPointer = true;
		}
		
		if ((yyvsp[-1].declinfo)->isFunction && (yyvsp[-1].declinfo)->paramTypes) {
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes);
			cout << "Function declaration: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}
		
		// Clean up
		if ((yyvsp[-1].declinfo)->paramTypes) delete (yyvsp[-1].declinfo)->paramTypes;
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].declinfo);
	}
#line 1590 "parser.tab.c"
    break;

  case 8: /* declaration: return_types SEMICOLON  */
#line 298 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1596 "parser.tab.c"
    break;

  case 9: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 299 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.isPointer = declInfo->isPointer;
			combinedType.isArray = declInfo->isArray;
			combinedType.arraySize = declInfo->arraySize;
			
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
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
	}
#line 1630 "parser.tab.c"
    break;

  case 10: /* return_types: declaration_specifiers  */
#line 334 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1636 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: type_specifier  */
#line 338 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1642 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: STATIC type_specifier  */
#line 339 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1651 "parser.tab.c"
    break;

  case 13: /* type_specifier: VOID  */
#line 346 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1660 "parser.tab.c"
    break;

  case 14: /* type_specifier: CHAR  */
#line 350 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1669 "parser.tab.c"
    break;

  case 15: /* type_specifier: INT  */
#line 354 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1678 "parser.tab.c"
    break;

  case 16: /* type_specifier: FLOAT  */
#line 358 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1687 "parser.tab.c"
    break;

  case 17: /* type_specifier: struct_specifier  */
#line 362 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1697 "parser.tab.c"
    break;

  case 18: /* cast_type_specifier: type_specifier  */
#line 371 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 1705 "parser.tab.c"
    break;

  case 19: /* cast_type_specifier: type_specifier STAR  */
#line 374 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->isPointer = true;  // Pointer type like int*, float*, etc.
    }
#line 1714 "parser.tab.c"
    break;

  case 20: /* init_declarator_list: init_declarator  */
#line 383 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1723 "parser.tab.c"
    break;

  case 21: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 387 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1732 "parser.tab.c"
    break;

  case 22: /* init_declarator: declarator  */
#line 395 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1738 "parser.tab.c"
    break;

  case 23: /* init_declarator: declarator ASSIGN initializer  */
#line 396 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1747 "parser.tab.c"
    break;

  case 24: /* declarator: pointer direct_declarator  */
#line 405 "parser.y"
                                    {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = 1;
		delete (yyvsp[-1].typeinfo);
	}
#line 1758 "parser.tab.c"
    break;

  case 25: /* declarator: direct_declarator  */
#line 411 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1766 "parser.tab.c"
    break;

  case 26: /* direct_declarator: IDENTIFIER  */
#line 418 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1776 "parser.tab.c"
    break;

  case 27: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 423 "parser.y"
                                                   {     /* e.g., arr[10] */ //Single dimensional array only
		(yyval.declinfo) = new DeclaratorInfo();
        (yyval.declinfo)->name = *(yyvsp[-3].sval);
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->arraySize = (yyvsp[-1].ival);
        delete (yyvsp[-3].sval);
    }
#line 1788 "parser.tab.c"
    break;

  case 28: /* fun_declarator: pointer fun_direct_declarator  */
#line 432 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->isPointer = true;  // Function returns a pointer
  		delete (yyvsp[-1].typeinfo);
  	}
#line 1798 "parser.tab.c"
    break;

  case 29: /* fun_declarator: fun_direct_declarator  */
#line 437 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1806 "parser.tab.c"
    break;

  case 30: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 444 "parser.y"
                                                  {          		/* e.g., f(int a, float b) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-3].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>(*(yyvsp[-1].typelist));  // Copy parameter types
		cout << "Function declarator: " << (yyval.declinfo)->name << " with " << (yyval.declinfo)->paramTypes->size() << " parameters\n";
		delete (yyvsp[-3].sval);
		delete (yyvsp[-1].typelist);
	}
#line 1820 "parser.tab.c"
    break;

  case 31: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 453 "parser.y"
                                   {                               /* e.g., f() (function with no params) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-2].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>();  // Empty parameter list
		cout << "Function declarator: " << (yyval.declinfo)->name << " with no parameters\n";
		delete (yyvsp[-2].sval);
	}
#line 1833 "parser.tab.c"
    break;

  case 35: /* initializer: assignment_expression  */
#line 477 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1839 "parser.tab.c"
    break;

  case 36: /* initializer: LBRACE initializer_list RBRACE  */
#line 478 "parser.y"
                                         {  //KRISH - pending alloca
		// For array initializers, create a placeholder type
		(yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->isArray = true;
	}
#line 1849 "parser.tab.c"
    break;

  case 37: /* initializer: LBRACE initializer_list COMMA RBRACE  */
#line 483 "parser.y"
                                               { 
		// For array initializers with trailing comma
        (yyval.typeinfo) = (yyvsp[-2].typeinfo);
        (yyval.typeinfo)->isArray = true;
	}
#line 1859 "parser.tab.c"
    break;

  case 38: /* initializer_list: assignment_expression  */
#line 491 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = (yyvsp[0].typeinfo)->baseType;
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( (yyvsp[0].typeinfo)->isArray || (yyvsp[0].typeinfo)->isPointer || (yyvsp[0].typeinfo)->baseType=="string" || (yyvsp[0].typeinfo)->baseType=="void" ){
            yyerror("Array initializer can only contain primitive types");
        }
        (yyval.typeinfo)->arraySize = 1; // Single element
        delete (yyvsp[0].typeinfo);
    }
#line 1874 "parser.tab.c"
    break;

  case 39: /* initializer_list: initializer_list COMMA assignment_expression  */
#line 501 "parser.y"
                                                                                                         {
        (yyval.typeinfo) = (yyvsp[-2].typeinfo);
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( (yyvsp[0].typeinfo)->isArray || (yyvsp[0].typeinfo)->isPointer || (yyvsp[0].typeinfo)->baseType=="string" || (yyvsp[0].typeinfo)->baseType=="void" ){
            yyerror("Array initializer can only contain primitive types");
        }
        // Base type is max of both that is if one is int andd one is float ,then overall is float
        if( (yyval.typeinfo)->baseType=="float" || (yyvsp[0].typeinfo)->baseType=="float" ){
            (yyval.typeinfo)->baseType="float";
        }
        else if( (yyval.typeinfo)->baseType=="int" || (yyvsp[0].typeinfo)->baseType=="int" ){
            (yyval.typeinfo)->baseType="int";
        }
        else if( (yyval.typeinfo)->baseType=="char" || (yyvsp[0].typeinfo)->baseType=="char" ){
            (yyval.typeinfo)->baseType="char";
        }
        (yyval.typeinfo)->arraySize += 1; // Increment array size
        delete (yyvsp[0].typeinfo);
    }
#line 1898 "parser.tab.c"
    break;

  case 40: /* parameter_list: parameter_declaration  */
#line 524 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1908 "parser.tab.c"
    break;

  case 41: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 529 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1918 "parser.tab.c"
    break;

  case 42: /* parameter_declaration: return_types parameter_declarator  */
#line 537 "parser.y"
                                                                                                          {
        // Combine base type with declarator-specific type info
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));  // Start with base type
        
        // Add declarator-specific type information
        combinedType->isPointer = (yyvsp[0].declinfo)->isPointer;
        combinedType->isArray = (yyvsp[0].declinfo)->isArray;
        combinedType->arraySize = (yyvsp[0].declinfo)->arraySize;
        
        // Store parameter information for later insertion into function scope
        current_function_parameters.push_back(make_pair((yyvsp[0].declinfo)->name, *combinedType));
        
        (yyval.typeinfo) = combinedType;
        delete (yyvsp[-1].typeinfo);
        delete (yyvsp[0].declinfo);
    }
#line 1939 "parser.tab.c"
    break;

  case 43: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 556 "parser.y"
                                              {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = 1;
		delete (yyvsp[-1].typeinfo);
	}
#line 1950 "parser.tab.c"
    break;

  case 44: /* parameter_declarator: parameter_direct_declarator  */
#line 562 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1958 "parser.tab.c"
    break;

  case 45: /* parameter_direct_declarator: IDENTIFIER  */
#line 569 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1968 "parser.tab.c"
    break;

  case 46: /* primary_expression: IDENTIFIER  */
#line 580 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
        SymbolEntry entry;
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);  // Store identifier name
            (yyval.typeinfo)->isLiteral = false;
            cout << "Found variable: " << *(yyvsp[0].sval) << " of type " << (yyval.typeinfo)->toString() << "\n";
        } else {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);
            type_error("Undefined variable: " + *(yyvsp[0].sval));
        }
        delete (yyvsp[0].sval);
    }
#line 1989 "parser.tab.c"
    break;

  case 47: /* primary_expression: INT_LITERAL  */
#line 596 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";
    }
#line 2000 "parser.tab.c"
    break;

  case 48: /* primary_expression: FLOAT_LITERAL  */
#line 602 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";
    }
#line 2011 "parser.tab.c"
    break;

  case 49: /* primary_expression: CHAR_LITERAL  */
#line 608 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->isLiteral = true;
        cout << "Char literal: " << *(yyvsp[0].sval) << " (type: char)\n";
        delete (yyvsp[0].sval);
    }
#line 2023 "parser.tab.c"
    break;

  case 50: /* primary_expression: STRING_LITERAL  */
#line 615 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "string";
        (yyval.typeinfo)->isLiteral = true;
        cout << "String literal: " << *(yyvsp[0].sval) << " (type: string)\n";
        delete (yyvsp[0].sval);
    }
#line 2035 "parser.tab.c"
    break;

  case 51: /* primary_expression: NULL_LITERAL  */
#line 622 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->isPointer = true;  // NULL is a void pointer
        (yyval.typeinfo)->isLiteral = true;
        cout << "NULL literal (type: void*)\n";
    }
#line 2047 "parser.tab.c"
    break;

  case 52: /* primary_expression: LPAREN expression RPAREN  */
#line 629 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 2055 "parser.tab.c"
    break;

  case 53: /* postfix_expression: primary_expression  */
#line 636 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2061 "parser.tab.c"
    break;

  case 54: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 637 "parser.y"
                                                          {              /* e.g., arr[i] */
		// Array subscripting: arr[i] or ptr[i]
		TypeInfo* base = (yyvsp[-3].typeinfo);
		TypeInfo* index = (yyvsp[-1].typeinfo);
		
		// Check if base is array or pointer
		if (!base->isArray && !base->isPointer) {
			type_error("Subscript operator [] can only be applied to arrays or pointers");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (!is_integer_type(index->baseType)) {
			type_error("Array index must be an integer type, got " + index->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else {
			// Result is the base type without array/pointer modifier
			(yyval.typeinfo) = new TypeInfo(*base);
			(yyval.typeinfo)->isArray = false;
			(yyval.typeinfo)->isPointer = false;
			(yyval.typeinfo)->arraySize = 0;
			(yyval.typeinfo)->isLiteral = false;
			cout << "Array subscript: " << base->toString() << "[" << index->toString() << "] -> " << (yyval.typeinfo)->toString() << "\n";
		}
		delete (yyvsp[-3].typeinfo); delete (yyvsp[-1].typeinfo);
	}
#line 2091 "parser.tab.c"
    break;

  case 55: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 662 "parser.y"
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
				type_error("Function '" + base->identifier + "' not found or argument mismatch");
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
#line 2121 "parser.tab.c"
    break;

  case 56: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 687 "parser.y"
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
				type_error("Function '" + base->identifier + "' not found or argument type mismatch");
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
#line 2153 "parser.tab.c"
    break;

  case 57: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 714 "parser.y"
                                            {                            /* e.g., obj.field */
		// Struct member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2163 "parser.tab.c"
    break;

  case 58: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 719 "parser.y"
                                              {                             /* e.g., ptr->field */
		// Struct pointer member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2173 "parser.tab.c"
    break;

  case 59: /* postfix_expression: postfix_expression INCREMENT  */
#line 724 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 2182 "parser.tab.c"
    break;

  case 60: /* postfix_expression: postfix_expression DECREMENT  */
#line 728 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--");
		delete (yyvsp[-1].typeinfo);
	}
#line 2191 "parser.tab.c"
    break;

  case 61: /* argument_expression_list: assignment_expression  */
#line 735 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2202 "parser.tab.c"
    break;

  case 62: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 741 "parser.y"
                                                               {           /* e.g., x, y */
		(yyval.typelist) = (yyvsp[-2].typelist);
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2213 "parser.tab.c"
    break;

  case 63: /* unary_expression: postfix_expression  */
#line 750 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2219 "parser.tab.c"
    break;

  case 64: /* unary_expression: INCREMENT unary_expression  */
#line 751 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");
		delete (yyvsp[0].typeinfo);
	}
#line 2228 "parser.tab.c"
    break;

  case 65: /* unary_expression: DECREMENT unary_expression  */
#line 755 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 2237 "parser.tab.c"
    break;

  case 66: /* unary_expression: unary_operator cast_expression  */
#line 759 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].typeinfo);
	}
#line 2246 "parser.tab.c"
    break;

  case 67: /* unary_expression: SIZEOF unary_expression  */
#line 763 "parser.y"
                                  { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof operation result type: int\n";
		delete (yyvsp[0].typeinfo);
	}
#line 2258 "parser.tab.c"
    break;

  case 68: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 770 "parser.y"
                                              { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof(" << (yyvsp[-1].typeinfo)->toString() << ") result type: int\n";
		delete (yyvsp[-1].typeinfo);
	}
#line 2270 "parser.tab.c"
    break;

  case 69: /* unary_operator: BIT_AND  */
#line 780 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 2276 "parser.tab.c"
    break;

  case 70: /* unary_operator: STAR  */
#line 781 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 2282 "parser.tab.c"
    break;

  case 71: /* unary_operator: PLUS  */
#line 782 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 2288 "parser.tab.c"
    break;

  case 72: /* unary_operator: MINUS  */
#line 783 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 2294 "parser.tab.c"
    break;

  case 73: /* unary_operator: BIT_NOT  */
#line 784 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 2300 "parser.tab.c"
    break;

  case 74: /* unary_operator: LOGICAL_NOT  */
#line 785 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 2306 "parser.tab.c"
    break;

  case 75: /* cast_expression: unary_expression  */
#line 789 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2312 "parser.tab.c"
    break;

  case 76: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 790 "parser.y"
                                                            {                         /* e.g., (int) x, (int*) x */
		TypeInfo* target_type = (yyvsp[-2].typeinfo);
		TypeInfo* source_type = (yyvsp[0].typeinfo);
		
		// Type casting validation
		if (source_type->baseType == "error") {
			(yyval.typeinfo) = source_type;
		} else if (is_numeric_type(target_type->baseType) && is_numeric_type(source_type->baseType) 
		           && !target_type->isPointer && !target_type->isArray 
		           && !source_type->isPointer && !source_type->isArray) {
			// Numeric type casting is allowed (but not between pointers/arrays and numerics)
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = source_type->isLiteral;
			cout << "Cast: (" << target_type->toString() << ")" << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if (target_type->baseType == "void" && target_type->isPointer && !target_type->isArray) {
			// Casting to void* is allowed from any pointer type
			if (source_type->isPointer && !source_type->isArray) {
				(yyval.typeinfo) = new TypeInfo(*target_type);
				(yyval.typeinfo)->isLiteral = false;
				cout << "Cast to void*: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
			} else {
				type_error("Cannot cast non-pointer type " + source_type->toString() + " to void*");
				(yyval.typeinfo) = new TypeInfo();
				(yyval.typeinfo)->baseType = "error";
			}
		} else if (source_type->isPointer && target_type->isPointer 
		           && !source_type->isArray && !target_type->isArray) {
			// Pointer to pointer casting (excluding arrays)
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = false;
			cout << "Pointer cast: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if ((source_type->isPointer || source_type->isArray) && is_numeric_type(target_type->baseType) && !target_type->isPointer && !target_type->isArray) {
			// Pointer/array to integer cast (for address arithmetic, but warn)
			type_warning("Casting pointer/array " + source_type->toString() + " to numeric type " + target_type->toString());
			(yyval.typeinfo) = new TypeInfo(*target_type);
			(yyval.typeinfo)->isLiteral = false;
			cout << "Pointer-to-numeric cast: " << source_type->toString() << " -> " << (yyval.typeinfo)->toString() << "\n";
		} else if (is_numeric_type(source_type->baseType) && !source_type->isPointer && !source_type->isArray && target_type->isPointer && !target_type->isArray) {
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
#line 2367 "parser.tab.c"
    break;

  case 77: /* multiplicative_expression: cast_expression  */
#line 843 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2373 "parser.tab.c"
    break;

  case 78: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 844 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2382 "parser.tab.c"
    break;

  case 79: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 848 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2391 "parser.tab.c"
    break;

  case 80: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 852 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2400 "parser.tab.c"
    break;

  case 81: /* additive_expression: multiplicative_expression  */
#line 859 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2406 "parser.tab.c"
    break;

  case 82: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 860 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2415 "parser.tab.c"
    break;

  case 83: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 864 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2424 "parser.tab.c"
    break;

  case 84: /* shift_expression: additive_expression  */
#line 871 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2430 "parser.tab.c"
    break;

  case 85: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 872 "parser.y"
                                                          {                     /* e.g., a << b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type((yyvsp[-2].typeinfo)->baseType) || (yyvsp[-2].typeinfo)->isPointer || (yyvsp[-2].typeinfo)->isArray ||
		    !is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->isPointer || (yyvsp[0].typeinfo)->isArray) {
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
#line 2449 "parser.tab.c"
    break;

  case 86: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 886 "parser.y"
                                                           {                     /* e.g., a >> b */
		// Shift operations require integer types (no pointers or arrays)
		if (!is_integer_type((yyvsp[-2].typeinfo)->baseType) || (yyvsp[-2].typeinfo)->isPointer || (yyvsp[-2].typeinfo)->isArray ||
		    !is_integer_type((yyvsp[0].typeinfo)->baseType) || (yyvsp[0].typeinfo)->isPointer || (yyvsp[0].typeinfo)->isArray) {
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
#line 2468 "parser.tab.c"
    break;

  case 87: /* relational_expression: shift_expression  */
#line 903 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2474 "parser.tab.c"
    break;

  case 88: /* relational_expression: relational_expression LT shift_expression  */
#line 904 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2483 "parser.tab.c"
    break;

  case 89: /* relational_expression: relational_expression GT shift_expression  */
#line 908 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2492 "parser.tab.c"
    break;

  case 90: /* relational_expression: relational_expression LE shift_expression  */
#line 912 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2501 "parser.tab.c"
    break;

  case 91: /* relational_expression: relational_expression GE shift_expression  */
#line 916 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2510 "parser.tab.c"
    break;

  case 92: /* equality_expression: relational_expression  */
#line 923 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2516 "parser.tab.c"
    break;

  case 93: /* equality_expression: equality_expression EQ relational_expression  */
#line 924 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2525 "parser.tab.c"
    break;

  case 94: /* equality_expression: equality_expression NEQ relational_expression  */
#line 928 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2534 "parser.tab.c"
    break;

  case 95: /* and_expression: equality_expression  */
#line 935 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2540 "parser.tab.c"
    break;

  case 96: /* and_expression: and_expression BIT_AND equality_expression  */
#line 936 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2549 "parser.tab.c"
    break;

  case 97: /* exclusive_or_expression: and_expression  */
#line 943 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2555 "parser.tab.c"
    break;

  case 98: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 944 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2564 "parser.tab.c"
    break;

  case 99: /* inclusive_or_expression: exclusive_or_expression  */
#line 951 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2570 "parser.tab.c"
    break;

  case 100: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 952 "parser.y"
                                                                 { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2579 "parser.tab.c"
    break;

  case 101: /* logical_and_expression: inclusive_or_expression  */
#line 959 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2585 "parser.tab.c"
    break;

  case 102: /* logical_and_expression: logical_and_expression LOGICAL_AND inclusive_or_expression  */
#line 960 "parser.y"
                                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2594 "parser.tab.c"
    break;

  case 103: /* logical_or_expression: logical_and_expression  */
#line 967 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2600 "parser.tab.c"
    break;

  case 104: /* logical_or_expression: logical_or_expression LOGICAL_OR logical_and_expression  */
#line 968 "parser.y"
                                                                  { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "||");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2609 "parser.tab.c"
    break;

  case 106: /* assignment_expression: conditional_expression  */
#line 979 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2615 "parser.tab.c"
    break;

  case 107: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 980 "parser.y"
                                                                     { 
		// Type checking for assignment
		TypeInfo* lhs_type = (yyvsp[-2].typeinfo);
		TypeInfo* rhs_type = (yyvsp[0].typeinfo);
		
		// Check if left-hand side is a valid lvalue
		if (!is_lvalue(*lhs_type)) {
			type_error("Cannot assign to " + lhs_type->toString() + " - not an lvalue");
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (!is_implicit_conversion_allowed(*rhs_type, *lhs_type)) {
			type_error("Cannot assign " + rhs_type->toString() + " to " + lhs_type->toString());
			(yyval.typeinfo) = new TypeInfo();
			(yyval.typeinfo)->baseType = "error";
		} else if (is_narrowing_conversion(*rhs_type, *lhs_type)) {
			type_warning("Narrowing conversion from " + rhs_type->toString() + " to " + lhs_type->toString());
			(yyval.typeinfo) = new TypeInfo(*lhs_type);  // Result type is the LHS type
		} else {
			(yyval.typeinfo) = new TypeInfo(*lhs_type);  // Result type is the LHS type
		}
		
		cout << "Assignment: " << lhs_type->toString() << " = " << rhs_type->toString() << "\n";
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2644 "parser.tab.c"
    break;

  case 109: /* expression: assignment_expression  */
#line 1011 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2650 "parser.tab.c"
    break;

  case 110: /* expression: expression COMMA assignment_expression  */
#line 1012 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		delete (yyvsp[-2].typeinfo);
	}
#line 2660 "parser.tab.c"
    break;

  case 111: /* constant_expression: conditional_expression  */
#line 1020 "parser.y"
                                 { 
		// For constant expressions, we need to return an integer value
		// For now, return 0 as a placeholder
		(yyval.ival) = 0;
		delete (yyvsp[0].typeinfo);
	}
#line 2671 "parser.tab.c"
    break;

  case 112: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 1035 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 2680 "parser.tab.c"
    break;

  case 113: /* struct_specifier: struct IDENTIFIER  */
#line 1039 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 2689 "parser.tab.c"
    break;

  case 114: /* struct: STRUCT  */
#line 1046 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 2695 "parser.tab.c"
    break;

  case 120: /* struct_declarator: declarator  */
#line 1065 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 2701 "parser.tab.c"
    break;

  case 121: /* pointer: STAR  */
#line 1072 "parser.y"
           {                                   /* e.g., * */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
    }
#line 2710 "parser.tab.c"
    break;

  case 128: /* statement: error SEMICOLON  */
#line 1089 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 2719 "parser.tab.c"
    break;

  case 132: /* $@1: %empty  */
#line 1106 "parser.y"
                 { enter_scope(); insert_current_function_parameters(); }
#line 2725 "parser.tab.c"
    break;

  case 133: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 1106 "parser.y"
                                                                                                                 { exit_scope(); }
#line 2731 "parser.tab.c"
    break;


#line 2735 "parser.tab.c"

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

#line 1142 "parser.y"


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
        string error_msg = "Error at line " + to_string(yylineno) + ": Variable '" + name + "' used but not declared";
        cerr << error_msg << "\n";
        log_error(error_msg);
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
    // For primary expressions (as requested), check basic compatibility
    return types_compatible(var_type, init_type);
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
    // Allow conversions between numeric types
    if (is_numeric_type(from.baseType) && is_numeric_type(to.baseType)) {
        return true;
    }
    
    // Allow exact type matches
    if (types_compatible(from, to)) {
        return true;
    }
    
    // Allow NULL to pointer conversions
    if (from.baseType == "void" && from.isPointer && to.isPointer) {
        return true;
    }
    
    return false;
}

bool is_narrowing_conversion(const TypeInfo& from, const TypeInfo& to) {
    // float to int is narrowing
    if (from.baseType == "float" && to.baseType == "int") {
        return true;
    }
    
    // int to char is narrowing
    if (from.baseType == "int" && to.baseType == "char") {
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
    
    // Try to find compatible function with implicit conversions
    for (auto& entry : function_table) {
        FunctionEntry& func = entry.second;
        if (func.originalName == name && are_parameters_compatible(convertedArgs, func.parameters)) {
            cout << "Found compatible function: " << func.mangledName << " for " << name << "\n";
            return &func;
        }
    }
    
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
