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

static void yyerror(const char* s) {
    cerr << "Parse error at line " << yylineno << ": " << s << "\n";
}


#line 87 "parser.tab.c"

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
  YYSYMBOL_init_declarator_list = 72,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 73,           /* init_declarator  */
  YYSYMBOL_declarator = 74,                /* declarator  */
  YYSYMBOL_direct_declarator = 75,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 76,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 77,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 78,          /* declaration_list  */
  YYSYMBOL_initializer = 79,               /* initializer  */
  YYSYMBOL_initializer_list = 80,          /* initializer_list  */
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
  YYSYMBOL_logical_or_expression = 100,    /* logical_or_expression  */
  YYSYMBOL_conditional_expression = 101,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 102,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 103,      /* assignment_operator  */
  YYSYMBOL_expression = 104,               /* expression  */
  YYSYMBOL_constant_expression = 105,      /* constant_expression  */
  YYSYMBOL_struct_specifier = 106,         /* struct_specifier  */
  YYSYMBOL_struct = 107,                   /* struct  */
  YYSYMBOL_struct_declaration_list = 108,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 109,       /* struct_declaration  */
  YYSYMBOL_struct_declarator_list = 110,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 111,        /* struct_declarator  */
  YYSYMBOL_pointer = 112,                  /* pointer  */
  YYSYMBOL_statement = 113,                /* statement  */
  YYSYMBOL_labeled_statement = 114,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 115,       /* compound_statement  */
  YYSYMBOL_116_1 = 116,                    /* $@1  */
  YYSYMBOL_statement_list = 117,           /* statement_list  */
  YYSYMBOL_expression_statement = 118,     /* expression_statement  */
  YYSYMBOL_selection_statement = 119,      /* selection_statement  */
  YYSYMBOL_iteration_statement = 120,      /* iteration_statement  */
  YYSYMBOL_jump_statement = 121            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 86 "parser.y"

    // Stack of scope contexts for different scopes
    vector<ScopeContext> scope_stack;
    int current_scope_level = 0;

    // Function declarations for scope management
    void enter_scope();
    void exit_scope();
    void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType = nullptr);
    bool lookup_symbol(const string& name, SymbolEntry& entry);
    bool lookup_symbol_current_scope(const string& name);
    void check_variable_declaration(const string& name);
    TypeInfo* lookup_typeinfo_by_name(const string& name);
    
    // Type checking functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    TypeInfo* get_expression_type(const string& expr_value);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    bool check_literal_type(const string& value, const string& expected_base_type);

#line 264 "parser.tab.c"

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
#define YYLAST   713

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  58
/* YYNRULES -- Number of rules.  */
#define YYNRULES  149
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  262

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
       0,   186,   186,   187,   193,   194,   198,   199,   203,   204,
     239,   243,   244,   251,   255,   259,   263,   267,   278,   282,
     290,   291,   300,   306,   313,   318,   327,   328,   333,   334,
     340,   341,   342,   351,   352,   357,   365,   366,   371,   376,
     384,   402,   408,   415,   426,   441,   445,   449,   454,   459,
     463,   469,   470,   471,   472,   473,   474,   475,   476,   480,
     481,   485,   486,   487,   488,   489,   490,   494,   495,   496,
     497,   498,   499,   503,   504,   508,   509,   510,   511,   515,
     516,   517,   521,   522,   523,   527,   528,   529,   530,   531,
     535,   536,   537,   541,   542,   546,   547,   551,   552,   556,
     557,   561,   562,   566,   570,   571,   584,   588,   589,   593,
     603,   607,   614,   618,   619,   624,   628,   629,   633,   643,
     660,   661,   662,   663,   664,   665,   666,   674,   675,   676,
     683,   683,   687,   688,   689,   693,   694,   698,   699,   700,
     704,   705,   706,   707,   708,   712,   713,   714,   715,   716
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
  "init_declarator_list", "init_declarator", "declarator",
  "direct_declarator", "fun_declarator", "fun_direct_declarator",
  "declaration_list", "initializer", "initializer_list", "parameter_list",
  "parameter_declaration", "parameter_declarator",
  "parameter_direct_declarator", "primary_expression",
  "postfix_expression", "argument_expression_list", "unary_expression",
  "unary_operator", "cast_expression", "multiplicative_expression",
  "additive_expression", "shift_expression", "relational_expression",
  "equality_expression", "and_expression", "exclusive_or_expression",
  "inclusive_or_expression", "logical_and_expression",
  "logical_or_expression", "conditional_expression",
  "assignment_expression", "assignment_operator", "expression",
  "constant_expression", "struct_specifier", "struct",
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

#define YYPACT_NINF (-199)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-135)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     156,  -199,  -199,  -199,  -199,   173,  -199,     5,  -199,  -199,
    -199,   -20,  -199,  -199,  -199,   -53,  -199,  -199,  -199,  -199,
    -199,   -13,   -28,  -199,    -5,  -199,    -2,  -199,     7,    53,
     117,   -14,  -199,   -11,   390,  -199,  -199,  -199,  -199,  -199,
     173,  -199,    -6,   -23,  -199,    54,    58,  -199,    59,   588,
    -199,   619,   619,  -199,  -199,  -199,  -199,  -199,  -199,   650,
     359,  -199,  -199,  -199,  -199,  -199,  -199,  -199,    20,    86,
     650,  -199,    22,   112,   129,    31,   133,    99,   103,   107,
     116,   124,  -199,  -199,   156,   -11,   162,  -199,  -199,  -199,
    -199,   113,   156,  -199,  -199,   359,  -199,   650,  -199,  -199,
      28,  -199,   104,  -199,     2,  -199,  -199,   145,   167,   421,
     650,  -199,   650,  -199,  -199,   650,   650,   650,   650,   650,
     650,   650,   650,   650,   650,   650,   650,   650,   650,   650,
     650,   650,   650,  -199,    -8,   182,  -199,    66,  -199,  -199,
    -199,  -199,  -199,   136,   455,  -199,   650,   650,  -199,  -199,
    -199,  -199,    51,  -199,   -36,  -199,  -199,  -199,  -199,    22,
      22,   112,   112,   129,   129,   129,   129,    31,    31,   133,
      99,   103,   107,   116,   166,   174,   176,   179,   308,   183,
     188,   189,   194,   650,   200,   190,  -199,   488,   202,  -199,
     120,  -199,  -199,  -199,   245,  -199,  -199,  -199,  -199,  -199,
     -11,  -199,  -199,  -199,  -199,  -199,   650,  -199,  -199,  -199,
     650,   521,   650,   241,   650,  -199,  -199,   650,  -199,   205,
     308,   215,  -199,   131,   308,  -199,  -199,  -199,  -199,  -199,
      52,   521,    80,   214,    81,    83,   308,  -199,  -199,  -199,
    -199,   308,   554,   308,   650,   308,   308,  -199,   262,   308,
      89,  -199,    91,  -199,  -199,   308,  -199,   308,   222,  -199,
    -199,  -199
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    15,    16,    14,    13,     0,   112,     0,     2,     4,
       5,     0,    10,    11,    17,     0,    12,     1,     3,   119,
       8,    24,     0,    18,    20,    23,     0,    27,     0,   111,
       0,     0,     9,     0,     0,     7,   130,     6,    22,    26,
       0,    29,     0,     0,    38,     0,    24,    19,     0,     0,
      49,     0,     0,    69,    70,    68,    72,    67,    71,     0,
       0,    44,    45,    46,    48,    47,    21,    51,    61,    73,
       0,    75,    79,    82,    85,    90,    93,    95,    97,    99,
     101,   103,   104,    33,    32,     0,     0,   113,    43,    40,
      42,     0,     0,    28,    25,     0,    65,     0,    62,    63,
       0,    36,     0,   107,     0,    57,    58,     0,     0,     0,
       0,   106,     0,    73,    64,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    30,     0,     0,   118,     0,   116,   110,
     114,    41,    39,     0,     0,    34,     0,     0,    50,    56,
      55,    53,     0,    59,     0,   105,    76,    77,    78,    80,
      81,    83,    84,    88,    89,    86,    87,    91,    92,    94,
      96,    98,   100,   102,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   135,     0,    44,    31,
       0,   132,   120,   121,     0,   122,   123,   124,   125,   115,
       0,    66,    35,    37,    74,   108,     0,    54,    52,   126,
       0,     0,     0,     0,     0,   147,   146,     0,   109,     0,
       0,     0,   148,     0,     0,   136,   131,   133,   117,    60,
       0,     0,     0,     0,     0,     0,     0,   129,   145,   149,
     127,     0,     0,     0,     0,     0,     0,   128,   137,     0,
       0,   140,     0,   141,   139,     0,   143,     0,     0,   138,
     144,   142
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -199,  -199,   265,  -199,   -80,   -27,  -199,    14,  -199,   240,
     -83,   -16,  -199,   246,  -199,  -199,  -199,  -199,   184,  -199,
     186,  -199,  -199,  -199,   -34,  -199,   -47,    93,   100,    85,
      96,   147,   149,   152,   153,   151,  -199,   102,   -33,  -199,
     -60,  -199,  -199,  -199,  -199,   203,  -199,    90,    -4,  -117,
    -199,   260,  -199,  -199,  -198,  -199,  -199,  -199
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     7,     8,     9,    10,    11,    12,    13,    22,    23,
      24,    25,    26,    27,   135,    66,   100,    43,    44,    89,
      90,    67,    68,   152,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,   103,   112,
     190,   219,    14,    15,    86,    87,   137,   138,    48,   191,
     192,   193,    84,   194,   195,   196,   197,   198
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     104,    83,   136,    42,   133,    17,    29,    28,     1,     2,
       3,     4,    38,   231,   147,    96,    19,    98,    99,    16,
     208,    32,    33,   114,     5,    19,   101,    92,    19,    20,
      19,    93,    38,   242,    34,   104,   113,   104,    91,    21,
      30,    20,    31,   105,   106,   107,    45,    35,    46,    36,
     154,    46,   147,    88,    85,   189,   148,   134,   115,   116,
     117,   213,     6,   122,   123,    42,    21,   108,   156,   157,
     158,   124,   125,   109,   102,   110,   153,   227,   144,   155,
     145,   113,   113,   113,   113,   113,   113,   113,   113,   113,
     113,   113,   113,   113,   113,   113,   113,   113,   113,   204,
      85,   206,   147,   237,    40,   207,   241,   240,   134,   143,
      94,   203,   113,    31,   205,   199,   200,   136,    46,   247,
       1,     2,     3,     4,   248,   111,   251,   223,   253,   254,
     147,   147,   256,   147,   243,   245,     5,   246,   259,   147,
     260,   147,   128,   257,   131,   258,   118,   119,   129,   113,
     230,   130,   232,   132,   234,   120,   121,   235,   146,     1,
       2,     3,     4,   126,   127,     1,     2,     3,     4,   225,
     147,    41,    88,   229,     6,     5,     1,     2,     3,     4,
     239,   147,   250,   174,   252,     1,     2,     3,     4,   175,
     201,   176,   177,   178,   179,   180,   181,   182,   183,   184,
      49,     5,   185,    50,   149,    51,    52,   163,   164,   165,
     166,   159,   160,     6,   139,   209,    53,    54,    55,     6,
     161,   162,   167,   168,    56,    57,   150,   210,    58,   211,
       6,   186,   212,    36,  -134,    60,   214,   215,   216,     6,
     187,   188,    62,    63,    64,    65,   174,   217,   220,   221,
     224,   233,   175,   236,   176,   177,   178,   179,   180,   181,
     182,   183,   184,    49,   238,   185,    50,   244,    51,    52,
     255,   261,    18,    47,    39,   169,   142,   141,   170,    53,
      54,    55,   171,   173,   172,   218,    37,    56,    57,   140,
     228,    58,     0,     0,   186,     0,    36,   226,    60,     0,
       0,     0,     0,   187,   188,    62,    63,    64,    65,   174,
       0,     0,     0,     0,     0,   175,     0,   176,   177,   178,
     179,   180,   181,   182,   183,   184,    49,     0,   185,    50,
       0,    51,    52,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    53,    54,    55,     0,     0,     0,     0,     0,
      56,    57,     0,     0,    58,     0,     0,   186,     0,    36,
       0,    60,     1,     2,     3,     4,   187,   188,    62,    63,
      64,    65,     0,     0,     0,     0,     0,    49,     0,     0,
      50,     0,    51,    52,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    53,    54,    55,     0,     0,     0,     0,
       0,    56,    57,     0,     0,    58,     0,     0,    49,     0,
       0,    50,    60,    51,    52,     0,     6,     0,    61,    62,
      63,    64,    65,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,    49,
       0,    59,    50,    60,    51,    52,     0,     0,     0,    61,
      62,    63,    64,    65,     0,    53,    54,    55,     0,     0,
       0,     0,     0,    56,    57,     0,     0,    58,     0,     0,
       0,     0,     0,    49,    60,   151,    50,     0,    51,    52,
      61,    62,    63,    64,    65,     0,     0,     0,     0,    53,
      54,    55,     0,     0,     0,     0,     0,    56,    57,     0,
       0,    58,     0,     0,     0,     0,    49,   202,    60,    50,
       0,    51,    52,     0,    61,    62,    63,    64,    65,     0,
       0,     0,    53,    54,    55,     0,     0,     0,     0,     0,
      56,    57,     0,     0,    58,     0,     0,   222,     0,    49,
       0,    60,    50,     0,    51,    52,     0,    61,    62,    63,
      64,    65,     0,     0,     0,    53,    54,    55,     0,     0,
       0,     0,     0,    56,    57,     0,     0,    58,     0,     0,
     186,     0,    49,     0,    60,    50,     0,    51,    52,     0,
      61,    62,    63,    64,    65,     0,     0,     0,    53,    54,
      55,     0,     0,     0,     0,     0,    56,    57,     0,     0,
      58,     0,     0,     0,     0,     0,    49,    60,   249,    50,
       0,    51,    52,    61,    62,    63,    64,    65,     0,     0,
       0,     0,    53,    54,    55,     0,     0,     0,     0,     0,
      56,    57,     0,     0,    58,     0,     0,    49,     0,     0,
      50,    95,    51,    52,     0,     0,     0,    61,    62,    63,
      64,    65,     0,    53,    54,    55,     0,     0,     0,     0,
       0,    56,    57,     0,     0,    58,     0,     0,    49,     0,
       0,    50,    97,    51,    52,     0,     0,     0,    61,    62,
      63,    64,    65,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,     0,
       0,     0,     0,    60,     0,     0,     0,     0,     0,    61,
      62,    63,    64,    65
};

static const yytype_int16 yycheck[] =
{
      60,    34,    85,    30,    84,     0,    59,    11,     3,     4,
       5,     6,    28,   211,    50,    49,    36,    51,    52,     5,
      56,    49,    50,    70,    19,    36,    59,    50,    36,    49,
      36,    54,    48,   231,    39,    95,    70,    97,    42,    59,
      53,    49,    55,    23,    24,    25,    60,    49,    59,    51,
     110,    59,    50,    59,    40,   135,    54,    84,    36,    37,
      38,   178,    57,    32,    33,    92,    59,    47,   115,   116,
     117,    40,    41,    53,    60,    55,   109,   194,    50,   112,
      52,   115,   116,   117,   118,   119,   120,   121,   122,   123,
     124,   125,   126,   127,   128,   129,   130,   131,   132,   146,
      86,    50,    50,   220,    51,    54,    54,   224,   135,    95,
      56,   144,   146,    55,   147,    49,    50,   200,    59,   236,
       3,     4,     5,     6,   241,    39,   243,   187,   245,   246,
      50,    50,   249,    50,    54,    54,    19,    54,   255,    50,
     257,    50,    43,    54,    28,    54,    34,    35,    45,   183,
     210,    44,   212,    29,   214,    26,    27,   217,    54,     3,
       4,     5,     6,    30,    31,     3,     4,     5,     6,    49,
      50,    54,    59,   206,    57,    19,     3,     4,     5,     6,
      49,    50,   242,     1,   244,     3,     4,     5,     6,     7,
      54,     9,    10,    11,    12,    13,    14,    15,    16,    17,
      18,    19,    20,    21,    59,    23,    24,   122,   123,   124,
     125,   118,   119,    57,    52,    49,    34,    35,    36,    57,
     120,   121,   126,   127,    42,    43,    59,    53,    46,    53,
      57,    49,    53,    51,    52,    53,    53,    49,    49,    57,
      58,    59,    60,    61,    62,    63,     1,    53,    48,    59,
      48,    10,     7,    48,     9,    10,    11,    12,    13,    14,
      15,    16,    17,    18,    49,    20,    21,    53,    23,    24,
       8,    49,     7,    33,    28,   128,    92,    91,   129,    34,
      35,    36,   130,   132,   131,   183,    26,    42,    43,    86,
     200,    46,    -1,    -1,    49,    -1,    51,    52,    53,    -1,
      -1,    -1,    -1,    58,    59,    60,    61,    62,    63,     1,
      -1,    -1,    -1,    -1,    -1,     7,    -1,     9,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    -1,    20,    21,
      -1,    23,    24,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    49,    -1,    51,
      -1,    53,     3,     4,     5,     6,    58,    59,    60,    61,
      62,    63,    -1,    -1,    -1,    -1,    -1,    18,    -1,    -1,
      21,    -1,    23,    24,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,
      -1,    42,    43,    -1,    -1,    46,    -1,    -1,    18,    -1,
      -1,    21,    53,    23,    24,    -1,    57,    -1,    59,    60,
      61,    62,    63,    -1,    34,    35,    36,    -1,    -1,    -1,
      -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,    18,
      -1,    51,    21,    53,    23,    24,    -1,    -1,    -1,    59,
      60,    61,    62,    63,    -1,    34,    35,    36,    -1,    -1,
      -1,    -1,    -1,    42,    43,    -1,    -1,    46,    -1,    -1,
      -1,    -1,    -1,    18,    53,    54,    21,    -1,    23,    24,
      59,    60,    61,    62,    63,    -1,    -1,    -1,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    -1,    -1,    18,    52,    53,    21,
      -1,    23,    24,    -1,    59,    60,    61,    62,    63,    -1,
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
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      68,    69,    70,    71,   106,   107,    71,     0,    66,    36,
      49,    59,    72,    73,    74,    75,    76,    77,   112,    59,
      53,    55,    49,    50,    39,    49,    51,   115,    75,    77,
      51,    54,    69,    81,    82,    60,    59,    73,   112,    18,
      21,    23,    24,    34,    35,    36,    42,    43,    46,    51,
      53,    59,    60,    61,    62,    63,    79,    85,    86,    88,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,   116,    71,   108,   109,    59,    83,
      84,   112,    50,    54,    56,    53,    88,    53,    88,    88,
      80,   102,    71,   102,   104,    23,    24,    25,    47,    53,
      55,    39,   103,    88,    90,    36,    37,    38,    34,    35,
      26,    27,    32,    33,    40,    41,    30,    31,    43,    45,
      44,    28,    29,    68,    69,    78,    74,   110,   111,    52,
     109,    84,    82,    71,    50,    52,    54,    50,    54,    59,
      59,    54,    87,   102,   104,   102,    90,    90,    90,    91,
      91,    92,    92,    93,    93,    93,    93,    94,    94,    95,
      96,    97,    98,    99,     1,     7,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    20,    49,    58,    59,    68,
     104,   113,   114,   115,   117,   118,   119,   120,   121,    49,
      50,    54,    52,   102,    90,   102,    50,    54,    56,    49,
      53,    53,    53,   113,    53,    49,    49,    53,   101,   105,
      48,    59,    49,   104,    48,    49,    52,   113,   111,   102,
     104,   118,   104,    10,   104,   104,    48,   113,    49,    49,
     113,    54,   118,    54,    53,    54,    54,   113,   113,    54,
     104,   113,   104,   113,   113,     8,   113,    54,    54,   113,
     113,    49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    67,    67,    68,    68,
      69,    70,    70,    71,    71,    71,    71,    71,    72,    72,
      73,    73,    74,    74,    75,    75,    76,    76,    77,    77,
      78,    78,    78,    79,    79,    79,    80,    80,    81,    81,
      82,    83,    83,    84,    85,    85,    85,    85,    85,    85,
      85,    86,    86,    86,    86,    86,    86,    86,    86,    87,
      87,    88,    88,    88,    88,    88,    88,    89,    89,    89,
      89,    89,    89,    90,    90,    91,    91,    91,    91,    92,
      92,    92,    93,    93,    93,    94,    94,    94,    94,    94,
      95,    95,    95,    96,    96,    97,    97,    98,    98,    99,
      99,   100,   100,   101,   102,   102,   103,   104,   104,   105,
     106,   106,   107,   108,   108,   109,   110,   110,   111,   112,
     113,   113,   113,   113,   113,   113,   113,   114,   114,   114,
     116,   115,   117,   117,   117,   118,   118,   119,   119,   119,
     120,   120,   120,   120,   120,   121,   121,   121,   121,   121
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     3,     2,     3,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     3,
       1,     3,     2,     1,     1,     4,     2,     1,     4,     3,
       1,     2,     0,     1,     3,     4,     1,     3,     1,     3,
       2,     2,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     1,     4,     3,     4,     3,     3,     2,     2,     1,
       3,     1,     2,     2,     2,     2,     4,     1,     1,     1,
       1,     1,     1,     1,     4,     1,     3,     3,     3,     1,
       3,     3,     1,     3,     3,     1,     3,     3,     3,     3,
       1,     3,     3,     1,     3,     1,     3,     1,     3,     1,
       3,     1,     3,     1,     1,     3,     1,     1,     3,     1,
       5,     2,     1,     1,     2,     3,     1,     3,     1,     1,
       1,     1,     1,     1,     1,     1,     2,     3,     4,     3,
       0,     5,     1,     2,     0,     1,     2,     5,     7,     5,
       5,     5,     7,     6,     7,     3,     2,     2,     2,     3
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
  case 8: /* declaration: return_types SEMICOLON  */
#line 203 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1510 "parser.tab.c"
    break;

  case 9: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 204 "parser.y"
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
#line 1544 "parser.tab.c"
    break;

  case 10: /* return_types: declaration_specifiers  */
#line 239 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1550 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: type_specifier  */
#line 243 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1556 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: STATIC type_specifier  */
#line 244 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1565 "parser.tab.c"
    break;

  case 13: /* type_specifier: VOID  */
#line 251 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1574 "parser.tab.c"
    break;

  case 14: /* type_specifier: CHAR  */
#line 255 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1583 "parser.tab.c"
    break;

  case 15: /* type_specifier: INT  */
#line 259 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1592 "parser.tab.c"
    break;

  case 16: /* type_specifier: FLOAT  */
#line 263 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1601 "parser.tab.c"
    break;

  case 17: /* type_specifier: struct_specifier  */
#line 267 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1611 "parser.tab.c"
    break;

  case 18: /* init_declarator_list: init_declarator  */
#line 278 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1620 "parser.tab.c"
    break;

  case 19: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 282 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1629 "parser.tab.c"
    break;

  case 20: /* init_declarator: declarator  */
#line 290 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1635 "parser.tab.c"
    break;

  case 21: /* init_declarator: declarator ASSIGN initializer  */
#line 291 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1644 "parser.tab.c"
    break;

  case 22: /* declarator: pointer direct_declarator  */
#line 300 "parser.y"
                                    {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = 1;
		delete (yyvsp[-1].typeinfo);
	}
#line 1655 "parser.tab.c"
    break;

  case 23: /* declarator: direct_declarator  */
#line 306 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1663 "parser.tab.c"
    break;

  case 24: /* direct_declarator: IDENTIFIER  */
#line 313 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1673 "parser.tab.c"
    break;

  case 25: /* direct_declarator: IDENTIFIER LBRACKET INT_LITERAL RBRACKET  */
#line 318 "parser.y"
                                                   {     /* e.g., arr[10] */ //Single dimensional array only
		(yyval.declinfo) = new DeclaratorInfo();
        (yyval.declinfo)->name = *(yyvsp[-3].sval);
        (yyval.declinfo)->isArray = true;
        (yyval.declinfo)->arraySize = (yyvsp[-1].ival);
        delete (yyvsp[-3].sval);
    }
#line 1685 "parser.tab.c"
    break;

  case 33: /* initializer: assignment_expression  */
#line 351 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1691 "parser.tab.c"
    break;

  case 34: /* initializer: LBRACE initializer_list RBRACE  */
#line 352 "parser.y"
                                         {  //KRISH - pending alloca
		// For array initializers, create a placeholder type
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
	}
#line 1701 "parser.tab.c"
    break;

  case 35: /* initializer: LBRACE initializer_list COMMA RBRACE  */
#line 357 "parser.y"
                                               { 
		// For array initializers with trailing comma
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
	}
#line 1711 "parser.tab.c"
    break;

  case 38: /* parameter_list: parameter_declaration  */
#line 371 "parser.y"
                                                                                              {
        (yyval.typelist) = new vector<TypeInfo>();
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1721 "parser.tab.c"
    break;

  case 39: /* parameter_list: parameter_list COMMA parameter_declaration  */
#line 376 "parser.y"
                                                                                                        {
        (yyval.typelist) = (yyvsp[-2].typelist);
        (yyval.typelist)->push_back(*(yyvsp[0].typeinfo));
        delete (yyvsp[0].typeinfo);
    }
#line 1731 "parser.tab.c"
    break;

  case 40: /* parameter_declaration: return_types parameter_declarator  */
#line 384 "parser.y"
                                                                                                          {
        // Combine base type with declarator-specific type info
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));  // Start with base type
        
        // Add declarator-specific type information
        combinedType->isPointer = (yyvsp[0].declinfo)->isPointer;
        combinedType->isArray = (yyvsp[0].declinfo)->isArray;
        combinedType->arraySize = (yyvsp[0].declinfo)->arraySize;
        
        // Insert parameter into symbol table
        insert_symbol((yyvsp[0].declinfo)->name, *combinedType);
        (yyval.typeinfo) = combinedType; // KRISH : LETS SEE KUCH DELETE KARNA THA YA NHI DK
        delete (yyvsp[-1].typeinfo);
        delete (yyvsp[0].declinfo);
    }
#line 1751 "parser.tab.c"
    break;

  case 41: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 402 "parser.y"
                                              {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = 1;
		delete (yyvsp[-1].typeinfo);
	}
#line 1762 "parser.tab.c"
    break;

  case 42: /* parameter_declarator: parameter_direct_declarator  */
#line 408 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1770 "parser.tab.c"
    break;

  case 43: /* parameter_direct_declarator: IDENTIFIER  */
#line 415 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1780 "parser.tab.c"
    break;

  case 44: /* primary_expression: IDENTIFIER  */
#line 426 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
        SymbolEntry entry;
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);  // Store identifier name
            
            cout << "Found variable: " << *(yyvsp[0].sval) << " of type " << (yyval.typeinfo)->toString() << "\n";
        } else {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->identifier = *(yyvsp[0].sval);
        }
        delete (yyvsp[0].sval);
    }
#line 1800 "parser.tab.c"
    break;

  case 45: /* primary_expression: INT_LITERAL  */
#line 441 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
    }
#line 1809 "parser.tab.c"
    break;

  case 46: /* primary_expression: FLOAT_LITERAL  */
#line 445 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
    }
#line 1818 "parser.tab.c"
    break;

  case 47: /* primary_expression: CHAR_LITERAL  */
#line 449 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        delete (yyvsp[0].sval);
    }
#line 1828 "parser.tab.c"
    break;

  case 48: /* primary_expression: STRING_LITERAL  */
#line 454 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "string";
        delete (yyvsp[0].sval);
    }
#line 1838 "parser.tab.c"
    break;

  case 49: /* primary_expression: NULL_LITERAL  */
#line 459 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "null";
    }
#line 1847 "parser.tab.c"
    break;

  case 50: /* primary_expression: LPAREN expression RPAREN  */
#line 463 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 1855 "parser.tab.c"
    break;

  case 67: /* unary_operator: BIT_AND  */
#line 494 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 1861 "parser.tab.c"
    break;

  case 68: /* unary_operator: STAR  */
#line 495 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 1867 "parser.tab.c"
    break;

  case 69: /* unary_operator: PLUS  */
#line 496 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 1873 "parser.tab.c"
    break;

  case 70: /* unary_operator: MINUS  */
#line 497 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 1879 "parser.tab.c"
    break;

  case 71: /* unary_operator: BIT_NOT  */
#line 498 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 1885 "parser.tab.c"
    break;

  case 72: /* unary_operator: LOGICAL_NOT  */
#line 499 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 1891 "parser.tab.c"
    break;

  case 85: /* relational_expression: shift_expression  */
#line 527 "parser.y"
                           { /*$$ = $1;*/ }
#line 1897 "parser.tab.c"
    break;

  case 104: /* assignment_expression: conditional_expression  */
#line 570 "parser.y"
                                 { /*$$ = $1;*/ }
#line 1903 "parser.tab.c"
    break;

  case 105: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 571 "parser.y"
                                                                     { 
		// Type checking for assignment
		// for now consider lhs is only identifier , so get its type from symbol table
		TypeInfo* lhs_type = (yyvsp[-2].typeinfo);
		TypeInfo* rhs_type = (yyvsp[0].typeinfo);
		if (!check_initialization_compatibility(*lhs_type, *rhs_type)) {
			yyerror("Type mismatch in assignment");
		}
		(yyval.typeinfo) = rhs_type;  // Result type is the RHS type
	}
#line 1918 "parser.tab.c"
    break;

  case 107: /* expression: assignment_expression  */
#line 588 "parser.y"
                                { /*$$ = $1;*/ }
#line 1924 "parser.tab.c"
    break;

  case 108: /* expression: expression COMMA assignment_expression  */
#line 589 "parser.y"
                                                 { /*$$ = $1; delete $3;*/ }
#line 1930 "parser.tab.c"
    break;

  case 109: /* constant_expression: conditional_expression  */
#line 593 "parser.y"
                                 { /*$$ = $1;*/ }
#line 1936 "parser.tab.c"
    break;

  case 110: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 603 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 1945 "parser.tab.c"
    break;

  case 111: /* struct_specifier: struct IDENTIFIER  */
#line 607 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 1954 "parser.tab.c"
    break;

  case 112: /* struct: STRUCT  */
#line 614 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 1960 "parser.tab.c"
    break;

  case 118: /* struct_declarator: declarator  */
#line 633 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 1966 "parser.tab.c"
    break;

  case 119: /* pointer: STAR  */
#line 643 "parser.y"
           {                                   /* e.g., * */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
    }
#line 1975 "parser.tab.c"
    break;

  case 126: /* statement: error SEMICOLON  */
#line 666 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 1984 "parser.tab.c"
    break;

  case 130: /* $@1: %empty  */
#line 683 "parser.y"
                 { enter_scope(); }
#line 1990 "parser.tab.c"
    break;

  case 131: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 683 "parser.y"
                                                                           { exit_scope(); }
#line 1996 "parser.tab.c"
    break;


#line 2000 "parser.tab.c"

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

#line 719 "parser.y"


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
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' already declared in current scope\n";
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
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' used but not declared\n";
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

TypeInfo* lookup_typeinfo_by_name(const string& name) {
    // Search from current scope to global scope for a matching identifier name
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        for (auto& entry : scope_stack[i].symbols) {
            if (entry.second.name == name) {
                return &(entry.second.type);
            }
        }
    }
    return nullptr; // Not found
}

bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type) {
    // For primary expressions (as requested), check basic compatibility
    return types_compatible(var_type, init_type);
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

	yyin = f;
	cout << "Starting parser...\n";
	
	// Initialize global scope
	enter_scope();
	
	int res = yyparse();
	cout << "yyparse() returned " << res << "\n";
	
	// Display the new scope-based symbol table
	displaySymbolTable();
	
	// Clean up all remaining scopes
	while (!scope_stack.empty()) {
		exit_scope();
	}
	
	fclose(f);
	return res;
}
