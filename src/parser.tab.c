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
#line 152 "parser.y"

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

#line 304 "parser.tab.c"

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
#define YYLAST   717

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  59
/* YYNRULES -- Number of rules.  */
#define YYNRULES  152
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  267

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
       0,   280,   280,   281,   287,   288,   292,   330,   331,   369,
     373,   374,   381,   385,   389,   393,   397,   406,   409,   418,
     422,   430,   431,   440,   445,   452,   457,   465,   495,   499,
     506,   515,   528,   529,   530,   539,   540,   545,   553,   564,
     588,   593,   601,   620,   625,   632,   667,   697,   704,   711,
     719,   727,   735,   742,   743,   794,   819,   854,   859,   864,
     868,   875,   881,   890,   891,   895,   899,   903,   910,   920,
     921,   922,   923,   924,   925,   929,   930,   983,   984,   988,
     992,   999,  1000,  1004,  1011,  1012,  1026,  1043,  1044,  1048,
    1052,  1056,  1063,  1064,  1068,  1075,  1076,  1083,  1084,  1091,
    1092,  1099,  1100,  1107,  1108,  1115,  1119,  1120,  1148,  1152,
    1153,  1161,  1176,  1180,  1187,  1191,  1192,  1197,  1201,  1202,
    1206,  1213,  1216,  1225,  1226,  1227,  1228,  1229,  1230,  1231,
    1239,  1240,  1241,  1248,  1248,  1252,  1253,  1254,  1258,  1259,
    1263,  1264,  1265,  1269,  1270,  1271,  1272,  1273,  1277,  1278,
    1279,  1280,  1281
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

#define YYPACT_NINF (-190)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-138)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
      45,  -190,  -190,  -190,  -190,   170,  -190,     5,  -190,  -190,
    -190,   -30,  -190,  -190,  -190,   -46,  -190,  -190,  -190,    -6,
    -190,     0,    86,  -190,    -2,    15,   -11,  -190,    21,    58,
    -190,   159,    65,  -190,   -14,   394,    79,  -190,  -190,    15,
    -190,   170,  -190,   -13,   -22,  -190,    60,    98,  -190,    63,
     592,  -190,   623,   623,  -190,  -190,  -190,  -190,  -190,  -190,
     654,   363,  -190,  -190,  -190,  -190,  -190,  -190,  -190,    18,
     116,   654,  -190,   109,   114,   124,    72,   129,   125,   112,
     141,   180,   165,  -190,  -190,   161,    45,   -14,   166,  -190,
    -190,  -190,  -190,   160,    45,  -190,  -190,   363,  -190,   654,
    -190,  -190,    56,  -190,   188,   171,  -190,     6,  -190,  -190,
     167,   172,   425,   654,  -190,   654,  -190,  -190,   654,   654,
     654,   654,   654,   654,   654,   654,   654,   654,   654,   654,
     654,   654,   654,   654,   654,   654,  -190,  -190,   -15,   186,
    -190,   117,  -190,  -190,  -190,  -190,  -190,   176,   459,  -190,
    -190,   654,   654,  -190,  -190,  -190,  -190,     9,  -190,   -25,
    -190,  -190,  -190,  -190,   109,   109,   114,   114,   124,   124,
     124,   124,    72,    72,   129,   125,   112,   141,   180,   184,
     181,   183,   187,   312,   189,   192,   202,   199,   654,   205,
     195,  -190,   492,   207,  -190,   130,  -190,  -190,  -190,   249,
    -190,  -190,  -190,  -190,  -190,   -14,  -190,  -190,  -190,  -190,
    -190,   654,  -190,  -190,  -190,   654,   525,   654,   247,   654,
    -190,  -190,   654,  -190,   220,   312,   222,  -190,   132,   312,
    -190,  -190,  -190,  -190,  -190,    22,   525,    25,   221,    67,
      73,   312,  -190,  -190,  -190,  -190,   312,   558,   312,   654,
     312,   312,  -190,   267,   312,    80,  -190,    83,  -190,  -190,
     312,  -190,   312,   227,  -190,  -190,  -190
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    14,    15,    13,    12,     0,   114,     0,     2,     4,
       5,     0,     9,    10,    16,     0,    11,     1,     3,   121,
       7,    25,     0,    19,    21,    24,     0,    29,     0,   113,
     122,     0,     0,     8,     0,     0,     0,   133,     6,    23,
      28,     0,    31,     0,     0,    40,     0,    25,    20,     0,
       0,    51,     0,     0,    71,    72,    70,    74,    69,    73,
       0,     0,    46,    47,    48,    50,    49,    22,    53,    63,
      75,     0,    77,    81,    84,    87,    92,    95,    97,    99,
     101,   103,   105,   106,    35,     0,    34,     0,     0,   115,
      45,    42,    44,     0,     0,    30,    27,     0,    67,     0,
      64,    65,     0,    38,    17,     0,   109,     0,    59,    60,
       0,     0,     0,     0,   108,     0,    75,    66,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    26,    32,     0,     0,
     120,     0,   118,   112,   116,    43,    41,     0,     0,    36,
      18,     0,     0,    52,    58,    57,    55,     0,    61,     0,
     107,    78,    79,    80,    82,    83,    85,    86,    90,    91,
      88,    89,    93,    94,    96,    98,   100,   102,   104,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   138,     0,    46,    33,     0,   135,   123,   124,     0,
     125,   126,   127,   128,   117,     0,    68,    37,    39,    76,
     110,     0,    56,    54,   129,     0,     0,     0,     0,     0,
     150,   149,     0,   111,     0,     0,     0,   151,     0,     0,
     139,   134,   136,   119,    62,     0,     0,     0,     0,     0,
       0,     0,   132,   148,   152,   130,     0,     0,     0,     0,
       0,     0,   131,   140,     0,     0,   143,     0,   144,   142,
       0,   146,     0,     0,   141,   147,   145
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -190,  -190,   270,  -190,   -82,   -28,  -190,    13,  -190,  -190,
     244,   -85,   -16,  -190,   251,  -190,  -190,  -190,  -190,   193,
    -190,   196,  -190,  -190,  -190,   -36,  -190,   -51,    62,    88,
      16,    85,   149,   150,   148,   152,   153,  -190,   102,   -34,
    -190,   -61,  -190,  -190,  -190,  -190,   206,  -190,    91,    -4,
    -122,  -190,   271,  -190,  -190,  -189,  -190,  -190,  -190
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     7,     8,     9,    10,    11,    12,    13,   105,    22,
      23,    24,    25,    26,    27,   139,    67,   102,    44,    45,
      91,    92,    68,    69,   157,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,    83,   106,
     115,   195,   224,    14,    15,    88,    89,   141,   142,    49,
     196,   197,   198,    86,   199,   200,   201,   202,   203
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     107,    84,   140,    43,   137,    17,    19,    28,     1,     2,
       3,     4,    39,    29,    98,    30,   100,   101,    16,    20,
     117,    19,    19,    19,     5,   152,   103,   236,    94,    21,
      19,   213,    95,    39,    20,   116,   107,    35,   107,    93,
      37,   108,   109,   110,    47,    47,    90,   247,     1,     2,
       3,     4,   159,    31,    87,    32,   152,   194,   138,   211,
     153,   218,     6,   212,     5,   111,    43,   161,   162,   163,
      36,   112,   152,   113,   104,   152,   246,   232,   158,   248,
      21,   160,   116,   116,   116,   116,   116,   116,   116,   116,
     116,   116,   116,   116,   116,   116,   116,   116,   116,   116,
     209,    87,     6,   242,   125,   126,   148,   245,   149,    41,
     147,   138,   127,   128,   208,   116,    96,   152,   210,   252,
     140,   250,    47,   152,   253,    46,   256,   251,   258,   259,
     152,   228,   261,   152,   262,    33,    34,   263,   264,    85,
     265,   168,   169,   170,   171,   118,   119,   120,   121,   122,
     123,   124,   116,    32,   235,   114,   237,   132,   239,   129,
     130,   240,     1,     2,     3,     4,   204,   205,   131,     1,
       2,     3,     4,     1,     2,     3,     4,   234,     5,   230,
     152,   244,   152,   164,   165,   133,   255,   179,   257,     1,
       2,     3,     4,   180,   135,   181,   182,   183,   184,   185,
     186,   187,   188,   189,    50,     5,   190,    51,   134,    52,
      53,   166,   167,    42,   172,   173,     6,   136,   143,    90,
      54,    55,    56,     6,   150,   151,   154,     6,    57,    58,
     206,   155,    59,   214,   215,   191,   216,    37,  -137,    61,
     217,   220,   219,     6,   192,   193,    63,    64,    65,    66,
     179,   221,   222,   225,   226,   229,   180,   238,   181,   182,
     183,   184,   185,   186,   187,   188,   189,    50,   241,   190,
      51,   243,    52,    53,   249,   260,   266,    18,    48,    40,
     174,   176,   175,    54,    55,    56,   177,   146,   178,   145,
     223,    57,    58,     0,   144,    59,   233,    38,   191,     0,
      37,   231,    61,     0,     0,     0,     0,   192,   193,    63,
      64,    65,    66,   179,     0,     0,     0,     0,     0,   180,
       0,   181,   182,   183,   184,   185,   186,   187,   188,   189,
      50,     0,   190,    51,     0,    52,    53,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    54,    55,    56,     0,
       0,     0,     0,     0,    57,    58,     0,     0,    59,     0,
       0,   191,     0,    37,     0,    61,     1,     2,     3,     4,
     192,   193,    63,    64,    65,    66,     0,     0,     0,     0,
       0,    50,     0,     0,    51,     0,    52,    53,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    54,    55,    56,
       0,     0,     0,     0,     0,    57,    58,     0,     0,    59,
       0,     0,    50,     0,     0,    51,    61,    52,    53,     0,
       6,     0,    62,    63,    64,    65,    66,     0,    54,    55,
      56,     0,     0,     0,     0,     0,    57,    58,     0,     0,
      59,     0,     0,    50,     0,    60,    51,    61,    52,    53,
       0,     0,     0,    62,    63,    64,    65,    66,     0,    54,
      55,    56,     0,     0,     0,     0,     0,    57,    58,     0,
       0,    59,     0,     0,     0,     0,     0,    50,    61,   156,
      51,     0,    52,    53,    62,    63,    64,    65,    66,     0,
       0,     0,     0,    54,    55,    56,     0,     0,     0,     0,
       0,    57,    58,     0,     0,    59,     0,     0,     0,     0,
      50,   207,    61,    51,     0,    52,    53,     0,    62,    63,
      64,    65,    66,     0,     0,     0,    54,    55,    56,     0,
       0,     0,     0,     0,    57,    58,     0,     0,    59,     0,
       0,   227,     0,    50,     0,    61,    51,     0,    52,    53,
       0,    62,    63,    64,    65,    66,     0,     0,     0,    54,
      55,    56,     0,     0,     0,     0,     0,    57,    58,     0,
       0,    59,     0,     0,   191,     0,    50,     0,    61,    51,
       0,    52,    53,     0,    62,    63,    64,    65,    66,     0,
       0,     0,    54,    55,    56,     0,     0,     0,     0,     0,
      57,    58,     0,     0,    59,     0,     0,     0,     0,     0,
      50,    61,   254,    51,     0,    52,    53,    62,    63,    64,
      65,    66,     0,     0,     0,     0,    54,    55,    56,     0,
       0,     0,     0,     0,    57,    58,     0,     0,    59,     0,
       0,    50,     0,     0,    51,    97,    52,    53,     0,     0,
       0,    62,    63,    64,    65,    66,     0,    54,    55,    56,
       0,     0,     0,     0,     0,    57,    58,     0,     0,    59,
       0,     0,    50,     0,     0,    51,    99,    52,    53,     0,
       0,     0,    62,    63,    64,    65,    66,     0,    54,    55,
      56,     0,     0,     0,     0,     0,    57,    58,     0,     0,
      59,     0,     0,     0,     0,     0,     0,    61,     0,     0,
       0,     0,     0,    62,    63,    64,    65,    66
};

static const yytype_int16 yycheck[] =
{
      61,    35,    87,    31,    86,     0,    36,    11,     3,     4,
       5,     6,    28,    59,    50,    19,    52,    53,     5,    49,
      71,    36,    36,    36,    19,    50,    60,   216,    50,    59,
      36,    56,    54,    49,    49,    71,    97,    39,    99,    43,
      51,    23,    24,    25,    59,    59,    59,   236,     3,     4,
       5,     6,   113,    53,    41,    55,    50,   139,    86,    50,
      54,   183,    57,    54,    19,    47,    94,   118,   119,   120,
      55,    53,    50,    55,    61,    50,    54,   199,   112,    54,
      59,   115,   118,   119,   120,   121,   122,   123,   124,   125,
     126,   127,   128,   129,   130,   131,   132,   133,   134,   135,
     151,    88,    57,   225,    32,    33,    50,   229,    52,    51,
      97,   139,    40,    41,   148,   151,    56,    50,   152,   241,
     205,    54,    59,    50,   246,    60,   248,    54,   250,   251,
      50,   192,   254,    50,    54,    49,    50,    54,   260,    60,
     262,   125,   126,   127,   128,    36,    37,    38,    34,    35,
      26,    27,   188,    55,   215,    39,   217,    45,   219,    30,
      31,   222,     3,     4,     5,     6,    49,    50,    43,     3,
       4,     5,     6,     3,     4,     5,     6,   211,    19,    49,
      50,    49,    50,   121,   122,    44,   247,     1,   249,     3,
       4,     5,     6,     7,    29,     9,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    20,    21,    28,    23,
      24,   123,   124,    54,   129,   130,    57,    56,    52,    59,
      34,    35,    36,    57,    36,    54,    59,    57,    42,    43,
      54,    59,    46,    49,    53,    49,    53,    51,    52,    53,
      53,    49,    53,    57,    58,    59,    60,    61,    62,    63,
       1,    49,    53,    48,    59,    48,     7,    10,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    48,    20,
      21,    49,    23,    24,    53,     8,    49,     7,    34,    28,
     131,   133,   132,    34,    35,    36,   134,    94,   135,    93,
     188,    42,    43,    -1,    88,    46,   205,    26,    49,    -1,
      51,    52,    53,    -1,    -1,    -1,    -1,    58,    59,    60,
      61,    62,    63,     1,    -1,    -1,    -1,    -1,    -1,     7,
      -1,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    -1,    20,    21,    -1,    23,    24,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    34,    35,    36,    -1,
      -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,
      -1,    49,    -1,    51,    -1,    53,     3,     4,     5,     6,
      58,    59,    60,    61,    62,    63,    -1,    -1,    -1,    -1,
      -1,    18,    -1,    -1,    21,    -1,    23,    24,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    18,    -1,    -1,    21,    53,    23,    24,    -1,
      57,    -1,    59,    60,    61,    62,    63,    -1,    34,    35,
      36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,
      46,    -1,    -1,    18,    -1,    51,    21,    53,    23,    24,
      -1,    -1,    -1,    59,    60,    61,    62,    63,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    -1,    -1,    -1,    18,    53,    54,
      21,    -1,    23,    24,    59,    60,    61,    62,    63,    -1,
      -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,
      -1,    42,    43,    -1,    -1,    46,    -1,    -1,    -1,    -1,
      18,    52,    53,    21,    -1,    23,    24,    -1,    59,    60,
      61,    62,    63,    -1,    -1,    -1,    34,    35,    36,    -1,
      -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,
      -1,    49,    -1,    18,    -1,    53,    21,    -1,    23,    24,
      -1,    59,    60,    61,    62,    63,    -1,    -1,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    49,    -1,    18,    -1,    53,    21,
      -1,    23,    24,    -1,    59,    60,    61,    62,    63,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    -1,    -1,    -1,
      18,    53,    54,    21,    -1,    23,    24,    59,    60,    61,
      62,    63,    -1,    -1,    -1,    -1,    34,    35,    36,    -1,
      -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,
      -1,    18,    -1,    -1,    21,    53,    23,    24,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    18,    -1,    -1,    21,    53,    23,    24,    -1,
      -1,    -1,    59,    60,    61,    62,    63,    -1,    34,    35,
      36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,
      46,    -1,    -1,    -1,    -1,    -1,    -1,    53,    -1,    -1,
      -1,    -1,    -1,    59,    60,    61,    62,    63
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      68,    69,    70,    71,   107,   108,    71,     0,    66,    36,
      49,    59,    73,    74,    75,    76,    77,    78,   113,    59,
     113,    53,    55,    49,    50,    39,    55,    51,   116,    76,
      78,    51,    54,    69,    82,    83,    60,    59,    74,   113,
      18,    21,    23,    24,    34,    35,    36,    42,    43,    46,
      51,    53,    59,    60,    61,    62,    63,    80,    86,    87,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,   103,    60,   117,    71,   109,   110,
      59,    84,    85,   113,    50,    54,    56,    53,    89,    53,
      89,    89,    81,   103,    71,    72,   103,   105,    23,    24,
      25,    47,    53,    55,    39,   104,    89,    91,    36,    37,
      38,    34,    35,    26,    27,    32,    33,    40,    41,    30,
      31,    43,    45,    44,    28,    29,    56,    68,    69,    79,
      75,   111,   112,    52,   110,    85,    83,    71,    50,    52,
      36,    54,    50,    54,    59,    59,    54,    88,   103,   105,
     103,    91,    91,    91,    92,    92,    93,    93,    94,    94,
      94,    94,    95,    95,    96,    97,    98,    99,   100,     1,
       7,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      20,    49,    58,    59,    68,   105,   114,   115,   116,   118,
     119,   120,   121,   122,    49,    50,    54,    52,   103,    91,
     103,    50,    54,    56,    49,    53,    53,    53,   114,    53,
      49,    49,    53,   102,   106,    48,    59,    49,   105,    48,
      49,    52,   114,   112,   103,   105,   119,   105,    10,   105,
     105,    48,   114,    49,    49,   114,    54,   119,    54,    53,
      54,    54,   114,   114,    54,   105,   114,   105,   114,   114,
       8,   114,    54,    54,   114,   114,    49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    67,    68,    68,    69,
      70,    70,    71,    71,    71,    71,    71,    72,    72,    73,
      73,    74,    74,    75,    75,    76,    76,    76,    77,    77,
      78,    78,    79,    79,    79,    80,    80,    80,    81,    81,
      82,    82,    83,    84,    84,    85,    86,    86,    86,    86,
      86,    86,    86,    87,    87,    87,    87,    87,    87,    87,
      87,    88,    88,    89,    89,    89,    89,    89,    89,    90,
      90,    90,    90,    90,    90,    91,    91,    92,    92,    92,
      92,    93,    93,    93,    94,    94,    94,    95,    95,    95,
      95,    95,    96,    96,    96,    97,    97,    98,    98,    99,
      99,   100,   100,   101,   101,   102,   103,   103,   104,   105,
     105,   106,   107,   107,   108,   109,   109,   110,   111,   111,
     112,   113,   113,   114,   114,   114,   114,   114,   114,   114,
     115,   115,   115,   117,   116,   118,   118,   118,   119,   119,
     120,   120,   120,   121,   121,   121,   121,   121,   122,   122,
     122,   122,   122
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     2,     3,     1,
       1,     2,     1,     1,     1,     1,     1,     1,     2,     1,
       3,     1,     3,     2,     1,     1,     4,     4,     2,     1,
       4,     3,     1,     2,     0,     1,     3,     4,     1,     3,
       1,     3,     2,     2,     1,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     4,     3,     4,     3,     3,     2,
       2,     1,     3,     1,     2,     2,     2,     2,     4,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     3,     1,     3,     1,     1,     3,     1,     1,
       3,     1,     5,     2,     1,     1,     2,     3,     1,     3,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     2,
       3,     4,     3,     0,     5,     1,     2,     0,     1,     2,
       5,     7,     5,     5,     5,     7,     6,     7,     3,     2,
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
  case 6: /* function_definition: return_types fun_declarator compound_statement  */
#line 292 "parser.y"
                                                         {               /* e.g., int f() { ... } */
		// Register function definition
		TypeInfo returnType = *(yyvsp[-2].typeinfo);
		returnType.pointerLevel = (yyvsp[-1].declinfo)->pointerLevel;  // Handle multi-level pointers
		
		if ((yyvsp[-1].declinfo)->isFunction && (yyvsp[-1].declinfo)->paramTypes) {
			insert_function((yyvsp[-1].declinfo)->name, returnType, *(yyvsp[-1].declinfo)->paramTypes);
			cout << "Function definition: " << (yyvsp[-1].declinfo)->name << " registered\n";
		}
		
		// Clean up
		if ((yyvsp[-1].declinfo)->paramTypes) delete (yyvsp[-1].declinfo)->paramTypes;
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].declinfo);
	}
#line 1567 "parser.tab.c"
    break;

  case 7: /* declaration: return_types SEMICOLON  */
#line 330 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1573 "parser.tab.c"
    break;

  case 8: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 331 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.pointerLevel = declInfo->pointerLevel;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			
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
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
	}
#line 1611 "parser.tab.c"
    break;

  case 9: /* return_types: declaration_specifiers  */
#line 369 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1617 "parser.tab.c"
    break;

  case 10: /* declaration_specifiers: type_specifier  */
#line 373 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1623 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: STATIC type_specifier  */
#line 374 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1632 "parser.tab.c"
    break;

  case 12: /* type_specifier: VOID  */
#line 381 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1641 "parser.tab.c"
    break;

  case 13: /* type_specifier: CHAR  */
#line 385 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1650 "parser.tab.c"
    break;

  case 14: /* type_specifier: INT  */
#line 389 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1659 "parser.tab.c"
    break;

  case 15: /* type_specifier: FLOAT  */
#line 393 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1668 "parser.tab.c"
    break;

  case 16: /* type_specifier: struct_specifier  */
#line 397 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1678 "parser.tab.c"
    break;

  case 17: /* cast_type_specifier: type_specifier  */
#line 406 "parser.y"
                     {
        (yyval.typeinfo) = (yyvsp[0].typeinfo);  // Just a base type like int, float, etc.
    }
#line 1686 "parser.tab.c"
    break;

  case 18: /* cast_type_specifier: type_specifier STAR  */
#line 409 "parser.y"
                          {
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->pointerLevel = 1;  // Pointer type like int*, float*, etc.
    }
#line 1695 "parser.tab.c"
    break;

  case 19: /* init_declarator_list: init_declarator  */
#line 418 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1704 "parser.tab.c"
    break;

  case 20: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 422 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1713 "parser.tab.c"
    break;

  case 21: /* init_declarator: declarator  */
#line 430 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1719 "parser.tab.c"
    break;

  case 22: /* init_declarator: declarator ASSIGN initializer  */
#line 431 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1728 "parser.tab.c"
    break;

  case 23: /* declarator: pointer direct_declarator  */
#line 440 "parser.y"
                                    {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels from $1 to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 1738 "parser.tab.c"
    break;

  case 24: /* declarator: direct_declarator  */
#line 445 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1746 "parser.tab.c"
    break;

  case 25: /* direct_declarator: IDENTIFIER  */
#line 452 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1756 "parser.tab.c"
    break;

  case 26: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 457 "parser.y"
                                                          {     /* e.g., arr[10] or arr[10][20] */ 
		(yyval.declinfo) = (yyvsp[-3].declinfo);
        if((yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival)); // Support multidimensional arrays by adding each dimension
    }
#line 1769 "parser.tab.c"
    break;

  case 27: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 465 "parser.y"
                                               {     /* e.g., arr[10] */ 
		(yyval.declinfo) = new DeclaratorInfo();
        if( (yyvsp[-1].ival) <= 0 ){
            yyerror("Array size must be a positive integer");
        }
        (yyval.declinfo)->name = *(yyvsp[-3].sval);
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->addArrayDimension((yyvsp[-1].ival));
        delete (yyvsp[-3].sval);}
#line 1783 "parser.tab.c"
    break;

  case 28: /* fun_declarator: pointer fun_direct_declarator  */
#line 495 "parser.y"
                                        {
  		(yyval.declinfo) = (yyvsp[0].declinfo);
  		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);  // Function returns a pointer (possibly multi-level)
  	}
#line 1792 "parser.tab.c"
    break;

  case 29: /* fun_declarator: fun_direct_declarator  */
#line 499 "parser.y"
                                {
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1800 "parser.tab.c"
    break;

  case 30: /* fun_direct_declarator: IDENTIFIER LPAREN parameter_list RPAREN  */
#line 506 "parser.y"
                                                  {          		/* e.g., f(int a, float b) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-3].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>(*(yyvsp[-1].typelist));  // Copy parameter types
		cout << "Function declarator: " << (yyval.declinfo)->name << " with " << (yyval.declinfo)->paramTypes->size() << " parameters\n";
		delete (yyvsp[-3].sval);
		delete (yyvsp[-1].typelist);
	}
#line 1814 "parser.tab.c"
    break;

  case 31: /* fun_direct_declarator: IDENTIFIER LPAREN RPAREN  */
#line 515 "parser.y"
                                   {                               /* e.g., f() (function with no params) */
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[-2].sval);
		(yyval.declinfo)->isFunction = true;
		(yyval.declinfo)->paramTypes = new vector<TypeInfo>();  // Empty parameter list
		cout << "Function declarator: " << (yyval.declinfo)->name << " with no parameters\n";
		delete (yyvsp[-2].sval);
	}
#line 1827 "parser.tab.c"
    break;

  case 35: /* initializer: assignment_expression  */
#line 539 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1833 "parser.tab.c"
    break;

  case 36: /* initializer: LBRACE initializer_list RBRACE  */
#line 540 "parser.y"
                                         {  //KRISH - pending alloca
		// For array initializers, create a placeholder type
		(yyval.typeinfo) = (yyvsp[-1].typeinfo);
        (yyval.typeinfo)->isArray = true;
	}
#line 1843 "parser.tab.c"
    break;

  case 37: /* initializer: LBRACE initializer_list COMMA RBRACE  */
#line 545 "parser.y"
                                               { 
		// For array initializers with trailing comma
        (yyval.typeinfo) = (yyvsp[-2].typeinfo);
        (yyval.typeinfo)->isArray = true;
	}
#line 1853 "parser.tab.c"
    break;

  case 38: /* initializer_list: assignment_expression  */
#line 553 "parser.y"
                                                                                                     {
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = (yyvsp[0].typeinfo)->baseType;
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( (yyvsp[0].typeinfo)->isArray || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->baseType=="string" || (yyvsp[0].typeinfo)->baseType=="void" ){
            yyerror("Array initializer can only contain primitive types");
        }
        (yyval.typeinfo)->isArray = true;
        (yyval.typeinfo)->arrayDimensions.push_back(1); // Single element
        delete (yyvsp[0].typeinfo);
    }
#line 1869 "parser.tab.c"
    break;

  case 39: /* initializer_list: initializer_list COMMA assignment_expression  */
#line 564 "parser.y"
                                                                                                         {
        (yyval.typeinfo) = (yyvsp[-2].typeinfo);
        //if assigment expression is array/pointer/address/string literal then error, we are only allowing arrays of primitive types
        if( (yyvsp[0].typeinfo)->isArray || (yyvsp[0].typeinfo)->pointerLevel > 0 || (yyvsp[0].typeinfo)->baseType=="string" || (yyvsp[0].typeinfo)->baseType=="void" ){
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
        (yyval.typeinfo)->isArray = true;
        (yyval.typeinfo)->arrayDimensions.push_back(1); // Add another dimension
        delete (yyvsp[0].typeinfo);
    }
#line 1894 "parser.tab.c"
    break;

  case 40: /* parameter_list: parameter_declaration  */
#line 588 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1904 "parser.tab.c"
    break;

  case 41: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 593 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1914 "parser.tab.c"
    break;

  case 42: /* parameter_declaration: return_types parameter_declarator  */
#line 601 "parser.y"
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
#line 1935 "parser.tab.c"
    break;

  case 43: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 620 "parser.y"
                                              {                                 /* e.g., *p or **p or ***p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Add pointer levels to the declarator
		(yyval.declinfo)->pointerLevel = (yyvsp[-1].ival);
	}
#line 1945 "parser.tab.c"
    break;

  case 44: /* parameter_declarator: parameter_direct_declarator  */
#line 625 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1953 "parser.tab.c"
    break;

  case 45: /* parameter_direct_declarator: IDENTIFIER  */
#line 632 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1963 "parser.tab.c"
    break;

  case 46: /* primary_expression: IDENTIFIER  */
#line 667 "parser.y"
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
        } 
        // If not a variable, check if it might be a function
        else if (is_function_name(*(yyvsp[0].sval))) {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "function";  // Mark as function type
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);       // Store function name
            (yyval.typeinfo)->isLiteral = false;
            (yyval.typeinfo)->isLvalue = false;       // Function names are not lvalues
            cout << "Found function name: " << *(yyvsp[0].sval) << "\n";
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
#line 1998 "parser.tab.c"
    break;

  case 47: /* primary_expression: INT_LITERAL  */
#line 697 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Integer literal: " << (yyvsp[0].ival) << " (type: int)\n";
    }
#line 2010 "parser.tab.c"
    break;

  case 48: /* primary_expression: FLOAT_LITERAL  */
#line 704 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Float literal: " << (yyvsp[0].fval) << " (type: float)\n";
    }
#line 2022 "parser.tab.c"
    break;

  case 49: /* primary_expression: CHAR_LITERAL  */
#line 711 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues
        cout << "Char literal: " << *(yyvsp[0].sval) << " (type: char)\n";
        delete (yyvsp[0].sval);
    }
#line 2035 "parser.tab.c"
    break;

  case 50: /* primary_expression: STRING_LITERAL  */
#line 719 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "string";
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // Literals are not lvalues (even though string literals are somewhat special in C)
        cout << "String literal: " << *(yyvsp[0].sval) << " (type: string)\n";
        delete (yyvsp[0].sval);
    }
#line 2048 "parser.tab.c"
    break;

  case 51: /* primary_expression: NULL_LITERAL  */
#line 727 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "void";
        (yyval.typeinfo)->pointerLevel = 1;  // NULL is a void pointer
        (yyval.typeinfo)->isLiteral = true;
        (yyval.typeinfo)->isLvalue = false;  // NULL is not an lvalue
        cout << "NULL literal (type: void*)\n";
    }
#line 2061 "parser.tab.c"
    break;

  case 52: /* primary_expression: LPAREN expression RPAREN  */
#line 735 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 2069 "parser.tab.c"
    break;

  case 53: /* postfix_expression: primary_expression  */
#line 742 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2075 "parser.tab.c"
    break;

  case 54: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 743 "parser.y"
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
		}
		delete (yyvsp[-3].typeinfo); delete (yyvsp[-1].typeinfo);
	}
#line 2131 "parser.tab.c"
    break;

  case 55: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 794 "parser.y"
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
#line 2161 "parser.tab.c"
    break;

  case 56: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 819 "parser.y"
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
#line 2201 "parser.tab.c"
    break;

  case 57: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 854 "parser.y"
                                            {                            /* e.g., obj.field */
		// Struct member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2211 "parser.tab.c"
    break;

  case 58: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 859 "parser.y"
                                              {                             /* e.g., ptr->field */
		// Struct pointer member access - skip for now as requested
		(yyval.typeinfo) = (yyvsp[-2].typeinfo);
		delete (yyvsp[0].sval);
	}
#line 2221 "parser.tab.c"
    break;

  case 59: /* postfix_expression: postfix_expression INCREMENT  */
#line 864 "parser.y"
                                       {                                  /* e.g., x++ */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "++");
		delete (yyvsp[-1].typeinfo);
	}
#line 2230 "parser.tab.c"
    break;

  case 60: /* postfix_expression: postfix_expression DECREMENT  */
#line 868 "parser.y"
                                       {                                 /* e.g., x-- */
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[-1].typeinfo), "--");
		delete (yyvsp[-1].typeinfo);
	}
#line 2239 "parser.tab.c"
    break;

  case 61: /* argument_expression_list: assignment_expression  */
#line 875 "parser.y"
                                {                                         /* e.g., x */
		(yyval.typelist) = new vector<TypeInfo>();
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2250 "parser.tab.c"
    break;

  case 62: /* argument_expression_list: argument_expression_list COMMA assignment_expression  */
#line 881 "parser.y"
                                                               {           /* e.g., x, y */
		(yyval.typelist) = (yyvsp[-2].typelist);
		TypeInfo argType = array_to_pointer_conversion(*(yyvsp[0].typeinfo));
		(yyval.typelist)->push_back(argType);
		delete (yyvsp[0].typeinfo);
	}
#line 2261 "parser.tab.c"
    break;

  case 63: /* unary_expression: postfix_expression  */
#line 890 "parser.y"
                             { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2267 "parser.tab.c"
    break;

  case 64: /* unary_expression: INCREMENT unary_expression  */
#line 891 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "++");
		delete (yyvsp[0].typeinfo);
	}
#line 2276 "parser.tab.c"
    break;

  case 65: /* unary_expression: DECREMENT unary_expression  */
#line 895 "parser.y"
                                     { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), "--");
		delete (yyvsp[0].typeinfo);
	}
#line 2285 "parser.tab.c"
    break;

  case 66: /* unary_expression: unary_operator cast_expression  */
#line 899 "parser.y"
                                         { 
		(yyval.typeinfo) = perform_unary_operation(*(yyvsp[0].typeinfo), *(yyvsp[-1].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].typeinfo);
	}
#line 2294 "parser.tab.c"
    break;

  case 67: /* unary_expression: SIZEOF unary_expression  */
#line 903 "parser.y"
                                  { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof operation result type: int\n";
		delete (yyvsp[0].typeinfo);
	}
#line 2306 "parser.tab.c"
    break;

  case 68: /* unary_expression: SIZEOF LPAREN type_specifier RPAREN  */
#line 910 "parser.y"
                                              { 
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "int";  // sizeof always returns int
		(yyval.typeinfo)->isLiteral = true;
		cout << "sizeof(" << (yyvsp[-1].typeinfo)->toString() << ") result type: int\n";
		delete (yyvsp[-1].typeinfo);
	}
#line 2318 "parser.tab.c"
    break;

  case 69: /* unary_operator: BIT_AND  */
#line 920 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 2324 "parser.tab.c"
    break;

  case 70: /* unary_operator: STAR  */
#line 921 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 2330 "parser.tab.c"
    break;

  case 71: /* unary_operator: PLUS  */
#line 922 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 2336 "parser.tab.c"
    break;

  case 72: /* unary_operator: MINUS  */
#line 923 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 2342 "parser.tab.c"
    break;

  case 73: /* unary_operator: BIT_NOT  */
#line 924 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 2348 "parser.tab.c"
    break;

  case 74: /* unary_operator: LOGICAL_NOT  */
#line 925 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 2354 "parser.tab.c"
    break;

  case 75: /* cast_expression: unary_expression  */
#line 929 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2360 "parser.tab.c"
    break;

  case 76: /* cast_expression: LPAREN cast_type_specifier RPAREN cast_expression  */
#line 930 "parser.y"
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
#line 2415 "parser.tab.c"
    break;

  case 77: /* multiplicative_expression: cast_expression  */
#line 983 "parser.y"
                          { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2421 "parser.tab.c"
    break;

  case 78: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 984 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "*");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2430 "parser.tab.c"
    break;

  case 79: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 988 "parser.y"
                                                           { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "/");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2439 "parser.tab.c"
    break;

  case 80: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 992 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "%");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2448 "parser.tab.c"
    break;

  case 81: /* additive_expression: multiplicative_expression  */
#line 999 "parser.y"
                                    { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2454 "parser.tab.c"
    break;

  case 82: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 1000 "parser.y"
                                                             { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "+");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2463 "parser.tab.c"
    break;

  case 83: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 1004 "parser.y"
                                                              { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "-");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2472 "parser.tab.c"
    break;

  case 84: /* shift_expression: additive_expression  */
#line 1011 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2478 "parser.tab.c"
    break;

  case 85: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 1012 "parser.y"
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
#line 2497 "parser.tab.c"
    break;

  case 86: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 1026 "parser.y"
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
#line 2516 "parser.tab.c"
    break;

  case 87: /* relational_expression: shift_expression  */
#line 1043 "parser.y"
                           { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2522 "parser.tab.c"
    break;

  case 88: /* relational_expression: relational_expression LT shift_expression  */
#line 1044 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2531 "parser.tab.c"
    break;

  case 89: /* relational_expression: relational_expression GT shift_expression  */
#line 1048 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2540 "parser.tab.c"
    break;

  case 90: /* relational_expression: relational_expression LE shift_expression  */
#line 1052 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "<=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2549 "parser.tab.c"
    break;

  case 91: /* relational_expression: relational_expression GE shift_expression  */
#line 1056 "parser.y"
                                                    { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), ">=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2558 "parser.tab.c"
    break;

  case 92: /* equality_expression: relational_expression  */
#line 1063 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2564 "parser.tab.c"
    break;

  case 93: /* equality_expression: equality_expression EQ relational_expression  */
#line 1064 "parser.y"
                                                       { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "==");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2573 "parser.tab.c"
    break;

  case 94: /* equality_expression: equality_expression NEQ relational_expression  */
#line 1068 "parser.y"
                                                        { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "!=");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2582 "parser.tab.c"
    break;

  case 95: /* and_expression: equality_expression  */
#line 1075 "parser.y"
                              { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2588 "parser.tab.c"
    break;

  case 96: /* and_expression: and_expression BIT_AND equality_expression  */
#line 1076 "parser.y"
                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2597 "parser.tab.c"
    break;

  case 97: /* exclusive_or_expression: and_expression  */
#line 1083 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2603 "parser.tab.c"
    break;

  case 98: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 1084 "parser.y"
                                                         { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "^");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2612 "parser.tab.c"
    break;

  case 99: /* inclusive_or_expression: exclusive_or_expression  */
#line 1091 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2618 "parser.tab.c"
    break;

  case 100: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 1092 "parser.y"
                                                                 { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "|");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2627 "parser.tab.c"
    break;

  case 101: /* logical_and_expression: inclusive_or_expression  */
#line 1099 "parser.y"
                                  { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2633 "parser.tab.c"
    break;

  case 102: /* logical_and_expression: logical_and_expression LOGICAL_AND inclusive_or_expression  */
#line 1100 "parser.y"
                                                                     { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "&&");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2642 "parser.tab.c"
    break;

  case 103: /* logical_or_expression: logical_and_expression  */
#line 1107 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2648 "parser.tab.c"
    break;

  case 104: /* logical_or_expression: logical_or_expression LOGICAL_OR logical_and_expression  */
#line 1108 "parser.y"
                                                                  { 
		(yyval.typeinfo) = perform_binary_operation(*(yyvsp[-2].typeinfo), *(yyvsp[0].typeinfo), "||");
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2657 "parser.tab.c"
    break;

  case 106: /* assignment_expression: conditional_expression  */
#line 1119 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2663 "parser.tab.c"
    break;

  case 107: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 1120 "parser.y"
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
			(yyval.typeinfo)->isLvalue = false;  // Result of assignment is not an lvalue in C
		}
		
		cout << "Assignment: " << lhs_type->toString() << " = " << rhs_type->toString() << "\n";
		delete (yyvsp[-2].typeinfo); delete (yyvsp[0].typeinfo);
	}
#line 2693 "parser.tab.c"
    break;

  case 109: /* expression: assignment_expression  */
#line 1152 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 2699 "parser.tab.c"
    break;

  case 110: /* expression: expression COMMA assignment_expression  */
#line 1153 "parser.y"
                                                 { 
		// Comma operator returns the type of the right operand
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		delete (yyvsp[-2].typeinfo);
	}
#line 2709 "parser.tab.c"
    break;

  case 111: /* constant_expression: conditional_expression  */
#line 1161 "parser.y"
                                 { 
		// For constant expressions, we need to return an integer value
		// For now, return 0 as a placeholder
		(yyval.ival) = 0;
		delete (yyvsp[0].typeinfo);
	}
#line 2720 "parser.tab.c"
    break;

  case 112: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 1176 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 2729 "parser.tab.c"
    break;

  case 113: /* struct_specifier: struct IDENTIFIER  */
#line 1180 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 2738 "parser.tab.c"
    break;

  case 114: /* struct: STRUCT  */
#line 1187 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 2744 "parser.tab.c"
    break;

  case 120: /* struct_declarator: declarator  */
#line 1206 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 2750 "parser.tab.c"
    break;

  case 121: /* pointer: STAR  */
#line 1213 "parser.y"
           {                                   /* e.g., * */
        (yyval.ival) = 1;  // Return pointer level instead of TypeInfo
    }
#line 2758 "parser.tab.c"
    break;

  case 122: /* pointer: STAR pointer  */
#line 1216 "parser.y"
                   {                           /* e.g., ** or *** etc. */
        (yyval.ival) = (yyvsp[0].ival) + 1;  // Increment pointer level for each * encountered
    }
#line 2766 "parser.tab.c"
    break;

  case 129: /* statement: error SEMICOLON  */
#line 1231 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 2775 "parser.tab.c"
    break;

  case 133: /* $@1: %empty  */
#line 1248 "parser.y"
                 { enter_scope(); insert_current_function_parameters(); }
#line 2781 "parser.tab.c"
    break;

  case 134: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 1248 "parser.y"
                                                                                                                 { exit_scope(); }
#line 2787 "parser.tab.c"
    break;


#line 2791 "parser.tab.c"

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

#line 1284 "parser.y"


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

TypeInfo* promote_types(const TypeInfo& left, const TypeInfo& right) {
    TypeInfo* result = new TypeInfo();
    result->isLvalue = false;  // Result of type promotion is never an lvalue
    
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
    
    // Note: All binary operation results are rvalues (not lvalues)
    // Binary operations generate temporary values that cannot be assigned to
    
    // Addition and subtraction with pointer arithmetic
    if (op == "+" || op == "-") {
        // Case 1: Both are numeric types (regular arithmetic)
        if (is_numeric_type(left.baseType) && is_numeric_type(right.baseType) && 
            left.pointerLevel == 0 && right.pointerLevel == 0 && !left.isArray && !right.isArray) {
            TypeInfo* result = promote_types(left, right);
            result->isLvalue = false; // Result is not an lvalue
            cout << " -> " << result->toString() << " (arithmetic)\n";
            return result;
        }
        
        // Case 2: Pointer + integer or Array + integer (only for addition)
        if (op == "+" && ((left.pointerLevel > 0 || left.isArray) && is_integer_type(right.baseType) && 
                        right.pointerLevel == 0 && !right.isArray)) { // Ensure right is a plain integer
            TypeInfo* result = new TypeInfo(left);
            result->isArray = false;  // Result is always a pointer, not array
            result->pointerLevel = left.pointerLevel > 0 ? left.pointerLevel : 1;
            result->isLvalue = false; // Result is not an lvalue
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 3: Integer + pointer (commutative for addition)
        if (op == "+" && (is_integer_type(left.baseType) && left.pointerLevel == 0 && !left.isArray && 
                        (right.pointerLevel > 0 || right.isArray))) { // Ensure left is a plain integer
            TypeInfo* result = new TypeInfo(right);
            result->isArray = false;  // Result is always a pointer, not array
            result->pointerLevel = right.pointerLevel > 0 ? right.pointerLevel : 1;
            result->isLvalue = false; // Result is not an lvalue
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 4: Pointer - integer
        if (op == "-" && (left.pointerLevel > 0 || left.isArray) && is_integer_type(right.baseType)) {
            TypeInfo* result = new TypeInfo(left);
            result->isArray = false;  // Result is always a pointer, not array
            result->pointerLevel = left.pointerLevel > 0 ? left.pointerLevel : 1;
            result->isLvalue = false; // Result is not an lvalue
            cout << " -> " << result->toString() << " (pointer arithmetic)\n";
            return result;
        }
        
        // Case 5: Pointer - pointer (results in integer representing distance)
        if (op == "-" && (left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            if (left.baseType != right.baseType) {
                type_error("Pointer subtraction requires pointers to same type");
                TypeInfo* result = new TypeInfo();
                result->baseType = "error";
                return result;
            }
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";  // ptrdiff_t is typically int
            result->isLvalue = false; // Result is not an lvalue
            cout << " -> " << result->toString() << " (pointer difference)\n";
            return result;
        }
        
        // Case 6: Invalid pointer + pointer
        if (op == "+" && (left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            type_error("Cannot add two pointers");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            result->isLvalue = false;
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
            left.pointerLevel > 0 || right.pointerLevel > 0 || left.isArray || right.isArray) {
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
            left.pointerLevel == 0 && right.pointerLevel == 0 && !left.isArray && !right.isArray) {
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";  // In C, no bool type, so relational ops return int
            result->isLvalue = false;  // Result is not an lvalue
            cout << " -> " << result->toString() << " (numeric comparison)\n";
            return result;
        }
        
        // Allow pointer comparisons
        if ((left.pointerLevel > 0 || left.isArray) && (right.pointerLevel > 0 || right.isArray)) {
            // For == and !=, allow comparing pointers of different types with warning
            if (left.baseType != right.baseType) {
                if (op == "==" || op == "!=") {
                    type_warning("Comparing pointers to different types");
                } else {
                    // For <, >, <=, >= comparisons, require same base type
                    type_error("Relational comparison (<, >, <=, >=) between pointers to different types is not allowed");
                    TypeInfo* result = new TypeInfo();
                    result->baseType = "error";
                    return result;
                }
            }
            
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";
            result->isLvalue = false;  // Result is not an lvalue
            cout << " -> " << result->toString() << " (pointer comparison)\n";
            return result;
        }
        
        // Allow comparison of pointer with NULL (void*)
        if ((left.pointerLevel > 0 || left.isArray) && 
            right.baseType == "void" && right.pointerLevel > 0) {
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";
            result->isLvalue = false;
            cout << " -> " << result->toString() << " (pointer to NULL comparison)\n";
            return result;
        }
        
        // Also allow NULL to pointer comparison (reverse order)
        if (left.baseType == "void" && left.pointerLevel > 0 && 
            (right.pointerLevel > 0 || right.isArray)) {
            TypeInfo* result = new TypeInfo();
            result->baseType = "int";
            result->isLvalue = false;
            cout << " -> " << result->toString() << " (NULL to pointer comparison)\n";
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
            left.pointerLevel > 0 || right.pointerLevel > 0 || left.isArray || right.isArray) {
            type_error("Bitwise operations require integer operands only");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";
        result->isLvalue = false;  // Result is not an lvalue
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Logical operations
    if (op == "&&" || op == "||") {
        // Check for void type which cannot be used in logical operations
        if (left.baseType == "void" || right.baseType == "void") {
            type_error("Void type cannot be used in logical operations");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        // All other types can be converted to a truth value in C
        // This includes pointers, arrays, and all scalar types
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";  // Logical operations return int in C
        result->isLvalue = false;  // Result is not an lvalue
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
        // Result of unary +/- is not an lvalue
        result->isLvalue = false;
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
        
        // Check if operand is an lvalue
        if (!operand.isLvalue) {
            type_error("Increment/decrement requires an lvalue operand");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        // Result is not an lvalue for postfix operations, but we handle both cases here
        result->isLvalue = false;
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Logical NOT
    if (op == "!") {
        TypeInfo* result = new TypeInfo();
        result->baseType = "int";  // Logical NOT returns int in C
        result->isLvalue = false;  // Result is not an lvalue
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
        result->isLvalue = false;  // Result is not an lvalue
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
        
        // Check if operand is an lvalue
        if (!operand.isLvalue) {
            type_error("Cannot take address of a temporary");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        result->pointerLevel++;
        result->isLvalue = false; // Result of & operator is not an lvalue
        cout << " -> " << result->toString() << "\n";
        return result;
    }
    
    // Dereference operator
    if (op == "*") {
        if (operand.pointerLevel == 0) {
            type_error("Cannot dereference non-pointer type");
            TypeInfo* result = new TypeInfo();
            result->baseType = "error";
            return result;
        }
        
        TypeInfo* result = new TypeInfo(operand);
        result->pointerLevel--;
        // Result of dereference is an lvalue (you can assign to *p)
        result->isLvalue = true;
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
        if (param.pointerLevel > 0) mangledName += "p" + to_string(param.pointerLevel);
    }
    
    return mangledName;
}

TypeInfo array_to_pointer_conversion(const TypeInfo& type) {
    TypeInfo result = type;
    if (result.isArray) {
        // For multidimensional arrays, we only decay the first dimension
        // int[3][4][5] -> int(*)[4][5]
        if (result.arrayDimensions.size() > 1) {
            // Create a pointer to the remaining array dimensions
            vector<int> remainingDimensions(result.arrayDimensions.begin() + 1, result.arrayDimensions.end());
            result.arrayDimensions = remainingDimensions;
            result.pointerLevel += 1;
        } else {
            // Simple case: array decays to pointer
            result.isArray = false;
            result.pointerLevel += 1;
            result.arrayDimensions.clear();
        }
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
