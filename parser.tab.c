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
#line 202 "parser.y"

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
    void displayNativeValue(const TypeInfo& type, const TypeInfo& valueType);
    void* parseInitialValue(const TypeInfo& type, const TypeInfo& initType);
    
    // Type checking functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    TypeInfo* get_expression_type(const string& expr_value);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    bool check_literal_type(const string& value, const string& expected_base_type);

#line 266 "parser.tab.c"

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
#define YYLAST   728

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  64
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  58
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
       0,   303,   303,   304,   310,   311,   315,   316,   320,   321,
     357,   361,   362,   370,   374,   378,   382,   386,   401,   405,
     413,   414,   423,   430,   437,   442,   447,   456,   457,   462,
     463,   469,   470,   471,   480,   481,   487,   496,   497,   502,
     503,   507,   535,   542,   549,   560,   601,   606,   611,   617,
     623,   628,   634,   635,   636,   637,   638,   639,   640,   641,
     645,   646,   650,   651,   652,   653,   654,   655,   659,   660,
     661,   662,   663,   664,   668,   669,   673,   674,   675,   676,
     680,   681,   682,   686,   687,   688,   692,   693,   694,   695,
     696,   700,   701,   702,   706,   707,   711,   712,   716,   717,
     721,   722,   726,   727,   731,   735,   736,   749,   753,   754,
     758,   768,   772,   779,   783,   784,   789,   793,   794,   798,
     809,   814,   826,   827,   828,   829,   830,   831,   832,   840,
     841,   842,   849,   849,   853,   854,   855,   859,   860,   864,
     865,   866,   870,   871,   872,   873,   874,   878,   879,   880,
     881,   882
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

#define YYPACT_NINF (-179)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-137)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     116,  -179,  -179,  -179,  -179,   135,  -179,     8,  -179,  -179,
    -179,   -12,  -179,  -179,  -179,   -25,  -179,  -179,  -179,     5,
    -179,   -10,   133,  -179,    24,    -6,    85,  -179,     9,    22,
    -179,    25,  -179,   -27,   438,     1,  -179,  -179,  -179,    -6,
    -179,   135,  -179,   -26,    10,  -179,  -179,  -179,    17,   603,
    -179,   634,   634,  -179,  -179,  -179,  -179,  -179,  -179,   438,
     361,  -179,  -179,  -179,  -179,  -179,  -179,  -179,   121,    46,
     665,  -179,   125,   131,   143,   117,   179,    62,    65,    71,
     114,   119,  -179,  -179,  -179,   111,   116,   -27,   120,  -179,
    -179,  -179,  -179,   112,   116,  -179,   361,  -179,   665,  -179,
    -179,  -179,   -34,   152,  -179,    20,  -179,  -179,   158,   172,
     469,   665,  -179,   665,  -179,  -179,   665,   665,   665,   665,
     665,   665,   665,   665,   665,   665,   665,   665,   665,   665,
     665,   665,   665,   665,  -179,  -179,    94,   184,  -179,   162,
    -179,  -179,  -179,  -179,  -179,   169,   392,  -179,   665,   665,
    -179,  -179,  -179,  -179,    57,  -179,    -8,  -179,  -179,  -179,
    -179,   125,   125,   131,   131,   143,   143,   143,   143,   117,
     117,   179,    62,    65,    71,   114,   183,   181,   185,   186,
     310,   187,   200,   201,   198,   665,   204,   194,  -179,   503,
     207,  -179,   164,  -179,  -179,  -179,   247,  -179,  -179,  -179,
    -179,  -179,   -27,  -179,  -179,  -179,  -179,  -179,   665,  -179,
    -179,  -179,   665,   536,   665,   256,   665,  -179,  -179,   665,
    -179,   221,   310,   223,  -179,   166,   310,  -179,  -179,  -179,
    -179,  -179,    58,   536,    77,   220,    78,    83,   310,  -179,
    -179,  -179,  -179,   310,   569,   310,   665,   310,   310,  -179,
     266,   310,    97,  -179,   110,  -179,  -179,   310,  -179,   310,
     226,  -179,  -179,  -179
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    15,    16,    14,    13,     0,   113,     0,     2,     4,
       5,     0,    10,    11,    17,     0,    12,     1,     3,   120,
       8,    24,     0,    18,    20,    23,     0,    28,     0,   112,
     121,     0,     9,     0,     0,     0,     7,   132,     6,    22,
      27,     0,    30,     0,     0,    39,    24,    19,     0,     0,
      50,     0,     0,    70,    71,    69,    73,    68,    72,     0,
       0,    45,    46,    47,    49,    48,    21,    52,    62,    74,
       0,    76,    80,    83,    86,    91,    94,    96,    98,   100,
     102,   104,   105,    34,    26,     0,    33,     0,     0,   114,
      44,    41,    43,     0,     0,    29,     0,    66,     0,    63,
      64,    37,     0,     0,   108,     0,    58,    59,     0,     0,
       0,     0,   107,     0,    74,    65,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    25,    31,     0,     0,   119,     0,
     117,   111,   115,    42,    40,     0,     0,    35,     0,     0,
      51,    57,    56,    54,     0,    60,     0,   106,    77,    78,
      79,    81,    82,    84,    85,    89,    90,    87,    88,    92,
      93,    95,    97,    99,   101,   103,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   137,     0,
      45,    32,     0,   134,   122,   123,     0,   124,   125,   126,
     127,   116,     0,    67,    36,    38,    75,   109,     0,    55,
      53,   128,     0,     0,     0,     0,     0,   149,   148,     0,
     110,     0,     0,     0,   150,     0,     0,   138,   133,   135,
     118,    61,     0,     0,     0,     0,     0,     0,     0,   131,
     147,   151,   129,     0,     0,     0,     0,     0,     0,   130,
     139,     0,     0,   142,     0,   143,   141,     0,   145,     0,
       0,   140,   146,   144
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -179,  -179,   269,  -179,   -81,   -28,  -179,    18,  -179,   244,
     -85,    -3,  -179,   250,  -179,   -42,  -179,  -179,   190,  -179,
     192,  -179,  -179,  -179,   -30,  -179,   -64,   102,   103,    55,
     101,   150,   156,   149,   155,   159,  -179,   106,   -33,  -179,
     -60,  -179,  -179,  -179,  -179,   206,  -179,    86,    -4,  -176,
    -179,   271,  -179,  -179,  -178,  -179,  -179,  -179
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,     7,     8,     9,    10,    11,    12,    13,    22,    23,
      24,    25,    26,    27,   137,    66,   102,    44,    45,    91,
      92,    67,    68,   154,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81,    82,   104,   113,
     192,   221,    14,    15,    88,    89,   139,   140,    48,   193,
     194,   195,    86,   196,   197,   198,   199,   200
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     105,    83,   138,    43,   215,   135,   115,    28,    17,    19,
      19,     1,     2,     3,     4,    30,   146,   101,   147,    97,
     229,    99,   100,    16,    19,    39,    83,     5,     1,     2,
       3,     4,    46,    90,    29,   233,   105,    20,   105,    93,
     114,    19,   149,    31,     5,    39,   239,    21,   210,    35,
     242,   156,   158,   159,   160,   244,   191,    84,   136,    87,
      94,    85,   249,    34,    95,     6,    43,   250,    21,   253,
     149,   255,   256,    41,   150,   258,    46,   155,   103,    42,
     157,   261,     6,   262,   206,   112,   114,   114,   114,   114,
     114,   114,   114,   114,   114,   114,   114,   114,   114,   114,
     114,   114,   114,   114,   205,   129,    87,   208,   149,   136,
     130,   209,   243,    83,   145,   131,   207,   138,   114,     1,
       2,     3,     4,     1,     2,     3,     4,   149,   149,   225,
      19,   245,   247,   149,    36,     5,    37,   248,     1,     2,
       3,     4,   132,    20,   106,   107,   108,   149,   133,   123,
     124,   259,   232,    46,   234,   114,   236,   125,   126,   237,
     149,   116,   117,   118,   260,   119,   120,   134,   109,   121,
     122,    90,   141,     6,   110,   231,   111,     6,   165,   166,
     167,   168,    32,    33,   252,   176,   254,     1,     2,     3,
       4,   177,     6,   178,   179,   180,   181,   182,   183,   184,
     185,   186,    49,     5,   187,    50,   148,    51,    52,   127,
     128,   201,   202,   227,   149,   241,   149,   151,    53,    54,
      55,   161,   162,   203,   163,   164,    56,    57,   169,   170,
      58,   152,   211,   188,   212,    37,  -136,    60,   213,   214,
     216,     6,   189,   190,    62,    63,    64,    65,   176,   217,
     218,   219,   222,   223,   177,   226,   178,   179,   180,   181,
     182,   183,   184,   185,   186,    49,   235,   187,    50,   238,
      51,    52,   240,   246,   257,   263,    18,    47,    40,   171,
     173,    53,    54,    55,   144,   143,   172,   174,   230,    56,
      57,   220,   175,    58,   142,     0,   188,    38,    37,   228,
      60,     0,     0,     0,     0,   189,   190,    62,    63,    64,
      65,   176,     0,     0,     0,     0,     0,   177,     0,   178,
     179,   180,   181,   182,   183,   184,   185,   186,    49,     0,
     187,    50,     0,    51,    52,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    53,    54,    55,     0,     0,     0,
       0,     0,    56,    57,     0,     0,    58,     0,     0,   188,
       0,    37,     0,    60,     1,     2,     3,     4,   189,   190,
      62,    63,    64,    65,     0,     0,     0,     0,     0,    49,
       0,     0,    50,     0,    51,    52,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    53,    54,    55,     0,     0,
       0,     0,     0,    56,    57,     0,     0,    58,     0,     0,
      49,     0,     0,    50,    60,    51,    52,     0,     6,     0,
      61,    62,    63,    64,    65,     0,    53,    54,    55,     0,
       0,     0,     0,     0,    56,    57,     0,     0,    58,     0,
       0,     0,     0,    59,   204,    60,     0,     0,     0,     0,
       0,    61,    62,    63,    64,    65,    49,     0,     0,    50,
       0,    51,    52,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    53,    54,    55,     0,     0,     0,     0,     0,
      56,    57,     0,     0,    58,     0,     0,    49,     0,    59,
      50,    60,    51,    52,     0,     0,     0,    61,    62,    63,
      64,    65,     0,    53,    54,    55,     0,     0,     0,     0,
       0,    56,    57,     0,     0,    58,     0,     0,     0,     0,
       0,    49,    60,   153,    50,     0,    51,    52,    61,    62,
      63,    64,    65,     0,     0,     0,     0,    53,    54,    55,
       0,     0,     0,     0,     0,    56,    57,     0,     0,    58,
       0,     0,   224,     0,    49,     0,    60,    50,     0,    51,
      52,     0,    61,    62,    63,    64,    65,     0,     0,     0,
      53,    54,    55,     0,     0,     0,     0,     0,    56,    57,
       0,     0,    58,     0,     0,   188,     0,    49,     0,    60,
      50,     0,    51,    52,     0,    61,    62,    63,    64,    65,
       0,     0,     0,    53,    54,    55,     0,     0,     0,     0,
       0,    56,    57,     0,     0,    58,     0,     0,     0,     0,
       0,    49,    60,   251,    50,     0,    51,    52,    61,    62,
      63,    64,    65,     0,     0,     0,     0,    53,    54,    55,
       0,     0,     0,     0,     0,    56,    57,     0,     0,    58,
       0,     0,    49,     0,     0,    50,    96,    51,    52,     0,
       0,     0,    61,    62,    63,    64,    65,     0,    53,    54,
      55,     0,     0,     0,     0,     0,    56,    57,     0,     0,
      58,     0,     0,    49,     0,     0,    50,    98,    51,    52,
       0,     0,     0,    61,    62,    63,    64,    65,     0,    53,
      54,    55,     0,     0,     0,     0,     0,    56,    57,     0,
       0,    58,     0,     0,     0,     0,     0,     0,    60,     0,
       0,     0,     0,     0,    61,    62,    63,    64,    65
};

static const yytype_int16 yycheck[] =
{
      60,    34,    87,    31,   180,    86,    70,    11,     0,    36,
      36,     3,     4,     5,     6,    19,    50,    59,    52,    49,
     196,    51,    52,     5,    36,    28,    59,    19,     3,     4,
       5,     6,    59,    59,    59,   213,    96,    49,    98,    43,
      70,    36,    50,    53,    19,    48,   222,    59,    56,    55,
     226,   111,   116,   117,   118,   233,   137,    56,    86,    41,
      50,    60,   238,    39,    54,    57,    94,   243,    59,   245,
      50,   247,   248,    51,    54,   251,    59,   110,    60,    54,
     113,   257,    57,   259,   148,    39,   116,   117,   118,   119,
     120,   121,   122,   123,   124,   125,   126,   127,   128,   129,
     130,   131,   132,   133,   146,    43,    88,    50,    50,   137,
      45,    54,    54,   146,    96,    44,   149,   202,   148,     3,
       4,     5,     6,     3,     4,     5,     6,    50,    50,   189,
      36,    54,    54,    50,    49,    19,    51,    54,     3,     4,
       5,     6,    28,    49,    23,    24,    25,    50,    29,    32,
      33,    54,   212,    59,   214,   185,   216,    40,    41,   219,
      50,    36,    37,    38,    54,    34,    35,    56,    47,    26,
      27,    59,    52,    57,    53,   208,    55,    57,   123,   124,
     125,   126,    49,    50,   244,     1,   246,     3,     4,     5,
       6,     7,    57,     9,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    20,    21,    54,    23,    24,    30,
      31,    49,    50,    49,    50,    49,    50,    59,    34,    35,
      36,   119,   120,    54,   121,   122,    42,    43,   127,   128,
      46,    59,    49,    49,    53,    51,    52,    53,    53,    53,
      53,    57,    58,    59,    60,    61,    62,    63,     1,    49,
      49,    53,    48,    59,     7,    48,     9,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    10,    20,    21,    48,
      23,    24,    49,    53,     8,    49,     7,    33,    28,   129,
     131,    34,    35,    36,    94,    93,   130,   132,   202,    42,
      43,   185,   133,    46,    88,    -1,    49,    26,    51,    52,
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
      -1,    -1,    -1,    51,    52,    53,    -1,    -1,    -1,    -1,
      -1,    59,    60,    61,    62,    63,    18,    -1,    -1,    21,
      -1,    23,    24,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,    -1,
      42,    43,    -1,    -1,    46,    -1,    -1,    18,    -1,    51,
      21,    53,    23,    24,    -1,    -1,    -1,    59,    60,    61,
      62,    63,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,
      -1,    42,    43,    -1,    -1,    46,    -1,    -1,    -1,    -1,
      -1,    18,    53,    54,    21,    -1,    23,    24,    59,    60,
      61,    62,    63,    -1,    -1,    -1,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    49,    -1,    18,    -1,    53,    21,    -1,    23,
      24,    -1,    59,    60,    61,    62,    63,    -1,    -1,    -1,
      34,    35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,
      -1,    -1,    46,    -1,    -1,    49,    -1,    18,    -1,    53,
      21,    -1,    23,    24,    -1,    59,    60,    61,    62,    63,
      -1,    -1,    -1,    34,    35,    36,    -1,    -1,    -1,    -1,
      -1,    42,    43,    -1,    -1,    46,    -1,    -1,    -1,    -1,
      -1,    18,    53,    54,    21,    -1,    23,    24,    59,    60,
      61,    62,    63,    -1,    -1,    -1,    -1,    34,    35,    36,
      -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,    46,
      -1,    -1,    18,    -1,    -1,    21,    53,    23,    24,    -1,
      -1,    -1,    59,    60,    61,    62,    63,    -1,    34,    35,
      36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,    -1,
      46,    -1,    -1,    18,    -1,    -1,    21,    53,    23,    24,
      -1,    -1,    -1,    59,    60,    61,    62,    63,    -1,    34,
      35,    36,    -1,    -1,    -1,    -1,    -1,    42,    43,    -1,
      -1,    46,    -1,    -1,    -1,    -1,    -1,    -1,    53,    -1,
      -1,    -1,    -1,    -1,    59,    60,    61,    62,    63
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_int8 yystos[] =
{
       0,     3,     4,     5,     6,    19,    57,    65,    66,    67,
      68,    69,    70,    71,   106,   107,    71,     0,    66,    36,
      49,    59,    72,    73,    74,    75,    76,    77,   112,    59,
     112,    53,    49,    50,    39,    55,    49,    51,   115,    75,
      77,    51,    54,    69,    81,    82,    59,    73,   112,    18,
      21,    23,    24,    34,    35,    36,    42,    43,    46,    51,
      53,    59,    60,    61,    62,    63,    79,    85,    86,    88,
      89,    90,    91,    92,    93,    94,    95,    96,    97,    98,
      99,   100,   101,   102,    56,    60,   116,    71,   108,   109,
      59,    83,    84,   112,    50,    54,    53,    88,    53,    88,
      88,    79,    80,    71,   102,   104,    23,    24,    25,    47,
      53,    55,    39,   103,    88,    90,    36,    37,    38,    34,
      35,    26,    27,    32,    33,    40,    41,    30,    31,    43,
      45,    44,    28,    29,    56,    68,    69,    78,    74,   110,
     111,    52,   109,    84,    82,    71,    50,    52,    54,    50,
      54,    59,    59,    54,    87,   102,   104,   102,    90,    90,
      90,    91,    91,    92,    92,    93,    93,    93,    93,    94,
      94,    95,    96,    97,    98,    99,     1,     7,     9,    10,
      11,    12,    13,    14,    15,    16,    17,    20,    49,    58,
      59,    68,   104,   113,   114,   115,   117,   118,   119,   120,
     121,    49,    50,    54,    52,    79,    90,   102,    50,    54,
      56,    49,    53,    53,    53,   113,    53,    49,    49,    53,
     101,   105,    48,    59,    49,   104,    48,    49,    52,   113,
     111,   102,   104,   118,   104,    10,   104,   104,    48,   113,
      49,    49,   113,    54,   118,    54,    53,    54,    54,   113,
     113,    54,   104,   113,   104,   113,   113,     8,   113,    54,
      54,   113,   113,    49
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr1[] =
{
       0,    64,    65,    65,    66,    66,    67,    67,    68,    68,
      69,    70,    70,    71,    71,    71,    71,    71,    72,    72,
      73,    73,    74,    74,    75,    75,    75,    76,    76,    77,
      77,    78,    78,    78,    79,    79,    79,    80,    80,    81,
      81,    82,    83,    83,    84,    85,    85,    85,    85,    85,
      85,    85,    86,    86,    86,    86,    86,    86,    86,    86,
      87,    87,    88,    88,    88,    88,    88,    88,    89,    89,
      89,    89,    89,    89,    90,    90,    91,    91,    91,    91,
      92,    92,    92,    93,    93,    93,    94,    94,    94,    94,
      94,    95,    95,    95,    96,    96,    97,    97,    98,    98,
      99,    99,   100,   100,   101,   102,   102,   103,   104,   104,
     105,   106,   106,   107,   108,   108,   109,   110,   110,   111,
     112,   112,   113,   113,   113,   113,   113,   113,   113,   114,
     114,   114,   116,   115,   117,   117,   117,   118,   118,   119,
     119,   119,   120,   120,   120,   120,   120,   121,   121,   121,
     121,   121
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     3,     2,     3,
       1,     1,     2,     1,     1,     1,     1,     1,     1,     3,
       1,     3,     2,     1,     1,     4,     3,     2,     1,     4,
       3,     1,     2,     0,     1,     3,     4,     1,     3,     1,
       3,     2,     2,     1,     1,     1,     1,     1,     1,     1,
       1,     3,     1,     4,     3,     4,     3,     3,     2,     2,
       1,     3,     1,     2,     2,     2,     2,     4,     1,     1,
       1,     1,     1,     1,     1,     4,     1,     3,     3,     3,
       1,     3,     3,     1,     3,     3,     1,     3,     3,     3,
       3,     1,     3,     3,     1,     3,     1,     3,     1,     3,
       1,     3,     1,     3,     1,     1,     3,     1,     1,     3,
       1,     5,     2,     1,     1,     2,     3,     1,     3,     1,
       1,     2,     1,     1,     1,     1,     1,     1,     2,     3,
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
  case 8: /* declaration: return_types SEMICOLON  */
#line 320 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1517 "parser.tab.c"
    break;

  case 9: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 321 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.isPointer = declInfo->isPointer;
			combinedType.pointerCount = declInfo->pointerCount;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			
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
#line 1552 "parser.tab.c"
    break;

  case 10: /* return_types: declaration_specifiers  */
#line 357 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1558 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: type_specifier  */
#line 361 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1564 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: STATIC type_specifier  */
#line 362 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1573 "parser.tab.c"
    break;

  case 13: /* type_specifier: VOID  */
#line 370 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1582 "parser.tab.c"
    break;

  case 14: /* type_specifier: CHAR  */
#line 374 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1591 "parser.tab.c"
    break;

  case 15: /* type_specifier: INT  */
#line 378 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1600 "parser.tab.c"
    break;

  case 16: /* type_specifier: FLOAT  */
#line 382 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1609 "parser.tab.c"
    break;

  case 17: /* type_specifier: struct_specifier  */
#line 386 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1619 "parser.tab.c"
    break;

  case 18: /* init_declarator_list: init_declarator  */
#line 401 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1628 "parser.tab.c"
    break;

  case 19: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 405 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1637 "parser.tab.c"
    break;

  case 20: /* init_declarator: declarator  */
#line 413 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1643 "parser.tab.c"
    break;

  case 21: /* init_declarator: declarator ASSIGN initializer  */
#line 414 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1652 "parser.tab.c"
    break;

  case 22: /* declarator: pointer direct_declarator  */
#line 423 "parser.y"
                                    {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = (yyvsp[-1].typeinfo)->isPointer || (yyval.declinfo)->isPointer;
		(yyval.declinfo)->pointerCount += (yyvsp[-1].typeinfo)->pointerCount;
		delete (yyvsp[-1].typeinfo);
	}
#line 1664 "parser.tab.c"
    break;

  case 23: /* declarator: direct_declarator  */
#line 430 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1672 "parser.tab.c"
    break;

  case 24: /* direct_declarator: IDENTIFIER  */
#line 437 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1682 "parser.tab.c"
    break;

  case 25: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 442 "parser.y"
                                                          {     /* e.g., arr[10] */
		(yyval.declinfo) = (yyvsp[-3].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back((yyvsp[-1].ival));  // Direct integer literal
	}
#line 1692 "parser.tab.c"
    break;

  case 26: /* direct_declarator: direct_declarator LBRACKET RBRACKET  */
#line 447 "parser.y"
                                              {                        /* e.g., arr[] */
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back(-1);  // -1 indicates unknown size
	}
#line 1702 "parser.tab.c"
    break;

  case 34: /* initializer: assignment_expression  */
#line 480 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1708 "parser.tab.c"
    break;

  case 35: /* initializer: LBRACE initializer_list RBRACE  */
#line 481 "parser.y"
                                         {  //KRISH - pending alloca
		// For array initializers, create a placeholder type
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
		(yyval.typeinfo)->value = "array_initializer";
	}
#line 1719 "parser.tab.c"
    break;

  case 36: /* initializer: LBRACE initializer_list COMMA RBRACE  */
#line 487 "parser.y"
                                               { 
		// For array initializers with trailing comma
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
		(yyval.typeinfo)->value = "array_initializer";
	}
#line 1730 "parser.tab.c"
    break;

  case 41: /* parameter_declaration: return_types parameter_declarator  */
#line 507 "parser.y"
                                                                                                          {
        // Combine base type with declarator's type information
        TypeInfo* combinedType = new TypeInfo(*(yyvsp[-1].typeinfo));  // Start with base type
        
        // Add declarator-specific type information
        combinedType->isPointer = (yyvsp[0].declinfo)->isPointer;
        combinedType->pointerCount = (yyvsp[0].declinfo)->pointerCount;
        combinedType->isArray = (yyvsp[0].declinfo)->isArray;
        combinedType->arrayDimensions = (yyvsp[0].declinfo)->arrayDimensions;
        
        // No initialization allowed in parameter declarations --> NO DEFAULT VALUES
        if ((yyvsp[0].declinfo)->initType != nullptr) {
            yyerror(("Initialization not allowed in parameter declaration of " + (yyvsp[0].declinfo)->name).c_str());
            delete (yyvsp[0].declinfo)->initType;
            (yyvsp[0].declinfo)->initType = nullptr;
        }
        
        // Insert into symbol table
        insert_symbol((yyvsp[0].declinfo)->name, *combinedType); // KRISH - YEH DEKHNA HAI KONSI SCOPE MEI DAALTA HAI PARAMS KO - GLOBAL MEI HII YA KAHIN AUR
        
        // Clean up
        delete combinedType;
        delete (yyvsp[-1].typeinfo);
        
        (yyval.typeinfo) = (yyvsp[0].declinfo);  // Return the declarator info (without initType)
    }
#line 1761 "parser.tab.c"
    break;

  case 42: /* parameter_declarator: pointer parameter_direct_declarator  */
#line 535 "parser.y"
                                              {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = (yyvsp[-1].typeinfo)->isPointer || (yyval.declinfo)->isPointer;
		(yyval.declinfo)->pointerCount += (yyvsp[-1].typeinfo)->pointerCount;
		delete (yyvsp[-1].typeinfo);
	}
#line 1773 "parser.tab.c"
    break;

  case 43: /* parameter_declarator: parameter_direct_declarator  */
#line 542 "parser.y"
                                      {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1781 "parser.tab.c"
    break;

  case 44: /* parameter_direct_declarator: IDENTIFIER  */
#line 549 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1791 "parser.tab.c"
    break;

  case 45: /* primary_expression: IDENTIFIER  */
#line 560 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
        SymbolEntry entry;
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->value = *(yyvsp[0].sval);  // Store identifier name as value
            
            // Copy the stored value from the scope's value storage
            if (entry.isInitialized && !scope_stack.empty()) {
                // Find the scope that contains this symbol
                for (auto& scope : scope_stack) {
                    if (scope.scope_level == entry.scope_level) {
                        // Copy the stored value based on type
                        if (entry.type.baseType == "int") {
                            int stored_val = scope.getValue<int>(entry.value_offset);
                            (yyval.typeinfo)->setIntValue(stored_val);
                        } else if (entry.type.baseType == "float") {
                            float stored_val = scope.getValue<float>(entry.value_offset);
                            (yyval.typeinfo)->setFloatValue(stored_val);
                        } else if (entry.type.baseType == "char") {
                            char stored_val = scope.getValue<char>(entry.value_offset);
                            (yyval.typeinfo)->setCharValue(stored_val);
                        } 
                        break;
                    }
                }
            }
            
            //cout<<"MEOW : Found variable:  " << *$1 << " of type " << $$->toString() << " and value offset " << entry.value_offset;
            if ((yyval.typeinfo)->has_native_value) {
                cout << " with stored value: ";
                displayNativeValue(*(yyval.typeinfo), *(yyval.typeinfo));
            }
            cout << "\n";
        } else {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->value = *(yyvsp[0].sval);
        }
        delete (yyvsp[0].sval);
    }
#line 1837 "parser.tab.c"
    break;

  case 46: /* primary_expression: INT_LITERAL  */
#line 601 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->setIntValue((yyvsp[0].ival));  // Direct native assignment!
    }
#line 1847 "parser.tab.c"
    break;

  case 47: /* primary_expression: FLOAT_LITERAL  */
#line 606 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->setFloatValue((yyvsp[0].fval));  // Direct native assignment!
    }
#line 1857 "parser.tab.c"
    break;

  case 48: /* primary_expression: CHAR_LITERAL  */
#line 611 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->setCharValue((*(yyvsp[0].sval))[1]);  // Extract char from 'c' format directly
        delete (yyvsp[0].sval);
    }
#line 1868 "parser.tab.c"
    break;

  case 49: /* primary_expression: STRING_LITERAL  */
#line 617 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "string";
        (yyval.typeinfo)->setStringValue(*(yyvsp[0].sval));  // Direct string assignment!
        delete (yyvsp[0].sval);
    }
#line 1879 "parser.tab.c"
    break;

  case 50: /* primary_expression: NULL_LITERAL  */
#line 623 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "null";
        (yyval.typeinfo)->setIntValue(0);  // NULL as integer 0
    }
#line 1889 "parser.tab.c"
    break;

  case 51: /* primary_expression: LPAREN expression RPAREN  */
#line 628 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 1897 "parser.tab.c"
    break;

  case 68: /* unary_operator: BIT_AND  */
#line 659 "parser.y"
                                                                     {   (yyval.sval) = new string("&"); }
#line 1903 "parser.tab.c"
    break;

  case 69: /* unary_operator: STAR  */
#line 660 "parser.y"
                                                                           {   (yyval.sval) = new string("*"); }
#line 1909 "parser.tab.c"
    break;

  case 70: /* unary_operator: PLUS  */
#line 661 "parser.y"
                                                                           {   (yyval.sval) = new string("+"); }
#line 1915 "parser.tab.c"
    break;

  case 71: /* unary_operator: MINUS  */
#line 662 "parser.y"
                                                                            {   (yyval.sval) = new string("-"); }
#line 1921 "parser.tab.c"
    break;

  case 72: /* unary_operator: BIT_NOT  */
#line 663 "parser.y"
                                                                              {   (yyval.sval) = new string("~"); }
#line 1927 "parser.tab.c"
    break;

  case 73: /* unary_operator: LOGICAL_NOT  */
#line 664 "parser.y"
                                                                                 {   (yyval.sval) = new string("!"); }
#line 1933 "parser.tab.c"
    break;

  case 86: /* relational_expression: shift_expression  */
#line 692 "parser.y"
                           { /*$$ = $1;*/ }
#line 1939 "parser.tab.c"
    break;

  case 105: /* assignment_expression: conditional_expression  */
#line 735 "parser.y"
                                 { /*$$ = $1;*/ }
#line 1945 "parser.tab.c"
    break;

  case 106: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 736 "parser.y"
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
#line 1960 "parser.tab.c"
    break;

  case 108: /* expression: assignment_expression  */
#line 753 "parser.y"
                                { /*$$ = $1;*/ }
#line 1966 "parser.tab.c"
    break;

  case 109: /* expression: expression COMMA assignment_expression  */
#line 754 "parser.y"
                                                 { /*$$ = $1; delete $3;*/ }
#line 1972 "parser.tab.c"
    break;

  case 110: /* constant_expression: conditional_expression  */
#line 758 "parser.y"
                                 { /*$$ = $1;*/ }
#line 1978 "parser.tab.c"
    break;

  case 111: /* struct_specifier: struct IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 768 "parser.y"
                                                                  {  // e.g., struct S { int x; float y; };
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 1987 "parser.tab.c"
    break;

  case 112: /* struct_specifier: struct IDENTIFIER  */
#line 772 "parser.y"
                            { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 1996 "parser.tab.c"
    break;

  case 113: /* struct: STRUCT  */
#line 779 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 2002 "parser.tab.c"
    break;

  case 119: /* struct_declarator: declarator  */
#line 798 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 2008 "parser.tab.c"
    break;

  case 120: /* pointer: STAR  */
#line 809 "parser.y"
           {                                   /* e.g., * */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
        (yyval.typeinfo)->pointerCount = 1;
    }
#line 2018 "parser.tab.c"
    break;

  case 121: /* pointer: STAR pointer  */
#line 814 "parser.y"
                   {                          /* e.g., **, ***, etc. */
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        (yyval.typeinfo)->pointerCount++;
    }
#line 2027 "parser.tab.c"
    break;

  case 128: /* statement: error SEMICOLON  */
#line 832 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 2036 "parser.tab.c"
    break;

  case 132: /* $@1: %empty  */
#line 849 "parser.y"
                 { enter_scope(); }
#line 2042 "parser.tab.c"
    break;

  case 133: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 849 "parser.y"
                                                                           { exit_scope(); }
#line 2048 "parser.tab.c"
    break;


#line 2052 "parser.tab.c"

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

#line 885 "parser.y"


void enter_scope() {
    current_scope_level++;
    scope_stack.emplace_back(current_scope_level);
    cout << "Entering scope level " << current_scope_level << "\n";
}

void displaySymbolTable();

void exit_scope() {
    if (!scope_stack.empty()) {
        auto& current_scope = scope_stack.back();
        cout << "Exiting scope level " << current_scope_level 
             << " (freeing " << current_scope.value_storage.size() 
             << " bytes of value storage)\n";
        
        displaySymbolTable(); // Display current symbol table before destruction
        
        // Display symbols being destroyed
        if (!current_scope.symbols.empty()) {
            cout << "Destroying symbols from scope " << current_scope_level << ":\n";
            for (const auto& entry : current_scope.symbols) {
                cout << "  - " << entry.second.name << " (" << entry.second.type.toString() << ")\n";
            }
        }
        
        scope_stack.pop_back();  // Automatically frees the scope's value storage
        current_scope_level--;
    }
}

void* parseInitialValue(const TypeInfo& type, const TypeInfo& initType) {
    if (!initType.has_native_value) return nullptr;
    
    if (type.baseType == "int") {
        int* val = new int(initType.getIntValue());
        return val;
    } else if (type.baseType == "float") {
        float* val = new float(initType.getFloatValue());
        return val;
    } else if (type.baseType == "char") {
        char* val = new char(initType.getCharValue());
        return val;
    } else if (type.baseType == "string") {
        string str = initType.getStringValue();
        char* val = new char[str.length() + 1];
        strcpy(val, str.c_str());
        return val;
    }
    return nullptr;
}

void displayNativeValue(const TypeInfo& type, const TypeInfo& valueType) {
    if (!valueType.has_native_value) {
        cout << "(no value)";
        return;
    }
    
    if (type.baseType == "int") {
        cout << valueType.getIntValue();
    } else if (type.baseType == "float") {
        cout << valueType.getFloatValue();
    } else if (type.baseType == "char") {
        cout << "'" << valueType.getCharValue() << "'";
    } else if (type.baseType == "string") {
        cout << "\"" << valueType.getStringValue() << "\"";
    }
}

// Write nhi kar raha hai storage mei, bas allocate kar raha hai
void insert_symbol(const string& name, const TypeInfo& type, const TypeInfo* initType) {

	if (initType && initType->has_native_value) { // Vese agar type hai toh value bhi hogi hii
		displayNativeValue(type, *initType);
		cout<<"\n";
	}

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
    entry.isInitialized = ((initType != nullptr) && (initType->has_native_value));
	
    // ALWAYS allocate storage space
    if (entry.isInitialized) {
		//cout<<"INITIALIZED\n";
        // Parse and store the initial value using native types
        void* parsed_value = parseInitialValue(type, *initType);
        if (parsed_value) {
            entry.value_offset = current_scope.allocateVariable(type, parsed_value);
            // Free temporary storage based on type
            if (type.baseType == "string") {
                delete[] (char*)parsed_value;
            } else {
                delete parsed_value;
            }
        } else {
            // KRISH
            entry.value_offset = current_scope.allocateVariable(type, nullptr);
        }
    } else {
        // Allocate with zeros
        entry.value_offset = current_scope.allocateVariable(type, nullptr);
    }
    
    entry.value_size = current_scope.getTypeSize(type);
    current_scope.symbols[name] = entry;
    
    cout << "Allocated variable: " << name << " (" << type.toString() 
         << ") at offset " << entry.value_offset 
         << ", size " << entry.value_size << " bytes";
    if (entry.isInitialized) {
        cout << " = ";
        displayNativeValue(type, *initType);
    } else {
        cout << " (initialized to zeros)";
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
	//cout<<"MEOW : Searching for variable:  " << name << "\n";
    SymbolEntry entry;
    if (!lookup_symbol(name, entry)) {
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' used but not declared\n";
    } else {
        cout << "Variable '" << name << "' found: declared as " 
             << entry.type.toString() << " at line " << entry.line 
             << " in scope " << entry.scope_level;
        if (entry.isInitialized) {
            cout << " (initialized)";
        } else {
            cout << " (default zeros)";
        }
        cout << " [Offset: " << entry.value_offset 
             << ", Size: " << entry.value_size << " bytes]\n";
    }
}

void displayVariableValue(const SymbolEntry& entry, const ScopeContext& scope) {
    cout << "  - " << entry.name << " (" << entry.type.toString() << ") ";
    
    try {
        if (entry.type.baseType == "int") {
            int val = scope.getValue<int>(entry.value_offset);
            cout << "= " << val;
            if (!entry.isInitialized && val == 0) cout << " (default)";
            cout << " [Dec: " << val << ", Hex: 0x" << hex << val << dec << "]";
            
        } else if (entry.type.baseType == "float") {
            float val = scope.getValue<float>(entry.value_offset);
            cout << "= " << val;
            if (!entry.isInitialized && val == 0.0f) cout << " (default)";
            
        } else if (entry.type.baseType == "char") {
            char val = scope.getValue<char>(entry.value_offset);
            cout << "= ";
            if (val >= 32 && val <= 126) {
                cout << "'" << val << "'";
            } else {
                cout << "'\\x" << hex << (int)(unsigned char)val << dec << "'";
            }
            if (!entry.isInitialized && val == '\0') cout << " (default)";
            cout << " [ASCII: " << (int)(unsigned char)val << "]";
            
        } else {
            cout << "= <unsupported type>";
        }
    } catch (const exception& e) {
        cout << "= <error reading value: " << e.what() << ">";
    }
    
    cout << " [Offset: " << entry.value_offset 
         << ", Size: " << entry.value_size << " bytes]\n";
}

void displaySymbolTable() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                            SYMBOL TABLE WITH VALUE STORAGE                            |\n";
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
        cout << "| Storage: " << scope.value_storage.size() << " bytes, Next offset: " << scope.next_offset << string(50, ' ') << "|\n";
        
        if (scope.symbols.empty()) {
            cout << "| (empty scope)                                                                       |\n";
            cout << "+-----------------------------------------------------------------------------------------+\n";
            continue;
        }
        
        cout << "+-----------------------------------------------------------------------------------------+\n";
        
        // Display variables with their values
        for (const auto& entry : scope.symbols) {
            displayVariableValue(entry.second, scope);
        }
        cout << "+-----------------------------------------------------------------------------------------+\n";
    }
}

// Type checking functions
bool types_compatible(const TypeInfo& left_type, const TypeInfo& right_type) {
    // Check base types match (ignoring const/static as requested)
    if (left_type.baseType != right_type.baseType) return false;
    
    // Check pointer compatibility 
    if (left_type.pointerCount != right_type.pointerCount) return false;
    
    // Check array dimensions if both are arrays
    if (left_type.arrayDimensions.size() != right_type.arrayDimensions.size()) return false;
    
    // For arrays, check each dimension (for direct assignment compatibility)
    for (size_t i = 0; i < left_type.arrayDimensions.size(); i++) {
        if (left_type.arrayDimensions[i] != right_type.arrayDimensions[i]) return false;
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
