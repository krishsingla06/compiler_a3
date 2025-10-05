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
  YYSYMBOL_BOOL = 7,                       /* BOOL  */
  YYSYMBOL_IF = 8,                         /* IF  */
  YYSYMBOL_ELSE = 9,                       /* ELSE  */
  YYSYMBOL_FOR = 10,                       /* FOR  */
  YYSYMBOL_WHILE = 11,                     /* WHILE  */
  YYSYMBOL_DO = 12,                        /* DO  */
  YYSYMBOL_UNTIL = 13,                     /* UNTIL  */
  YYSYMBOL_BREAK = 14,                     /* BREAK  */
  YYSYMBOL_CONTINUE = 15,                  /* CONTINUE  */
  YYSYMBOL_SWITCH = 16,                    /* SWITCH  */
  YYSYMBOL_CASE = 17,                      /* CASE  */
  YYSYMBOL_DEFAULT = 18,                   /* DEFAULT  */
  YYSYMBOL_SIZEOF = 19,                    /* SIZEOF  */
  YYSYMBOL_TYPEDEF = 20,                   /* TYPEDEF  */
  YYSYMBOL_STATIC = 21,                    /* STATIC  */
  YYSYMBOL_GOTO = 22,                      /* GOTO  */
  YYSYMBOL_NULL_LITERAL = 23,              /* NULL_LITERAL  */
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
  YYSYMBOL_MUL_ASSIGN = 49,                /* MUL_ASSIGN  */
  YYSYMBOL_DIV_ASSIGN = 50,                /* DIV_ASSIGN  */
  YYSYMBOL_MOD_ASSIGN = 51,                /* MOD_ASSIGN  */
  YYSYMBOL_ADD_ASSIGN = 52,                /* ADD_ASSIGN  */
  YYSYMBOL_SUB_ASSIGN = 53,                /* SUB_ASSIGN  */
  YYSYMBOL_LEFT_ASSIGN = 54,               /* LEFT_ASSIGN  */
  YYSYMBOL_RIGHT_ASSIGN = 55,              /* RIGHT_ASSIGN  */
  YYSYMBOL_AND_ASSIGN = 56,                /* AND_ASSIGN  */
  YYSYMBOL_XOR_ASSIGN = 57,                /* XOR_ASSIGN  */
  YYSYMBOL_OR_ASSIGN = 58,                 /* OR_ASSIGN  */
  YYSYMBOL_COLON = 59,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 60,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 61,                     /* COMMA  */
  YYSYMBOL_LBRACE = 62,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 63,                    /* RBRACE  */
  YYSYMBOL_LPAREN = 64,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 65,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 66,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 67,                  /* RBRACKET  */
  YYSYMBOL_STRUCT = 68,                    /* STRUCT  */
  YYSYMBOL_RETURN = 69,                    /* RETURN  */
  YYSYMBOL_IDENTIFIER = 70,                /* IDENTIFIER  */
  YYSYMBOL_INT_LITERAL = 71,               /* INT_LITERAL  */
  YYSYMBOL_BOOLEAN_LITERAL = 72,           /* BOOLEAN_LITERAL  */
  YYSYMBOL_FLOAT_LITERAL = 73,             /* FLOAT_LITERAL  */
  YYSYMBOL_STRING_LITERAL = 74,            /* STRING_LITERAL  */
  YYSYMBOL_CHAR_LITERAL = 75,              /* CHAR_LITERAL  */
  YYSYMBOL_TYPE_NAME = 76,                 /* TYPE_NAME  */
  YYSYMBOL_ENUM = 77,                      /* ENUM  */
  YYSYMBOL_UNION = 78,                     /* UNION  */
  YYSYMBOL_INVALID = 79,                   /* INVALID  */
  YYSYMBOL_ELLIPSIS = 80,                  /* ELLIPSIS  */
  YYSYMBOL_CONST = 81,                     /* CONST  */
  YYSYMBOL_YYACCEPT = 82,                  /* $accept  */
  YYSYMBOL_start = 83,                     /* start  */
  YYSYMBOL_global_declaration = 84,        /* global_declaration  */
  YYSYMBOL_function_definition = 85,       /* function_definition  */
  YYSYMBOL_declaration = 86,               /* declaration  */
  YYSYMBOL_return_types = 87,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 88,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 89,            /* type_specifier  */
  YYSYMBOL_type_qualifier = 90,            /* type_qualifier  */
  YYSYMBOL_init_declarator_list = 91,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 92,           /* init_declarator  */
  YYSYMBOL_declarator = 93,                /* declarator  */
  YYSYMBOL_direct_declarator = 94,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 95,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 96,     /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 97,          /* declaration_list  */
  YYSYMBOL_initializer = 98,               /* initializer  */
  YYSYMBOL_initializer_list = 99,          /* initializer_list  */
  YYSYMBOL_parameter_type_list = 100,      /* parameter_type_list  */
  YYSYMBOL_parameter_list = 101,           /* parameter_list  */
  YYSYMBOL_parameter_declaration = 102,    /* parameter_declaration  */
  YYSYMBOL_primary_expression = 103,       /* primary_expression  */
  YYSYMBOL_postfix_expression = 104,       /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 105, /* argument_expression_list  */
  YYSYMBOL_unary_expression = 106,         /* unary_expression  */
  YYSYMBOL_unary_operator = 107,           /* unary_operator  */
  YYSYMBOL_cast_expression = 108,          /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 109, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 110,      /* additive_expression  */
  YYSYMBOL_shift_expression = 111,         /* shift_expression  */
  YYSYMBOL_relational_expression = 112,    /* relational_expression  */
  YYSYMBOL_equality_expression = 113,      /* equality_expression  */
  YYSYMBOL_and_expression = 114,           /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 115,  /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 116,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 117,   /* logical_and_expression  */
  YYSYMBOL_logical_or_expression = 118,    /* logical_or_expression  */
  YYSYMBOL_conditional_expression = 119,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 120,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 121,      /* assignment_operator  */
  YYSYMBOL_expression = 122,               /* expression  */
  YYSYMBOL_constant_expression = 123,      /* constant_expression  */
  YYSYMBOL_struct_or_union_specifier = 124, /* struct_or_union_specifier  */
  YYSYMBOL_struct_or_union = 125,          /* struct_or_union  */
  YYSYMBOL_struct_declaration_list = 126,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 127,       /* struct_declaration  */
  YYSYMBOL_specifier_qualifier_list = 128, /* specifier_qualifier_list  */
  YYSYMBOL_struct_declarator_list = 129,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 130,        /* struct_declarator  */
  YYSYMBOL_enum_specifier = 131,           /* enum_specifier  */
  YYSYMBOL_enumerator_list = 132,          /* enumerator_list  */
  YYSYMBOL_enumerator = 133,               /* enumerator  */
  YYSYMBOL_pointer = 134,                  /* pointer  */
  YYSYMBOL_type_name = 135,                /* type_name  */
  YYSYMBOL_statement = 136,                /* statement  */
  YYSYMBOL_labeled_statement = 137,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 138,       /* compound_statement  */
  YYSYMBOL_139_1 = 139,                    /* $@1  */
  YYSYMBOL_statement_list = 140,           /* statement_list  */
  YYSYMBOL_expression_statement = 141,     /* expression_statement  */
  YYSYMBOL_selection_statement = 142,      /* selection_statement  */
  YYSYMBOL_iteration_statement = 143,      /* iteration_statement  */
  YYSYMBOL_jump_statement = 144            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 89 "parser.y"

    // Stack of symbol tables for different scopes
    vector<map<string, SymbolEntry>> scope_stack;
    int current_scope_level = 0;

    // Function declarations for scope management
    void enter_scope();
    void exit_scope();
    void insert_symbol(const string& name, const TypeInfo& type, const string& initValue = "");
    bool lookup_symbol(const string& name, SymbolEntry& entry);
    bool lookup_symbol_current_scope(const string& name);
    void check_variable_declaration(const string& name);
    TypeInfo* lookup_typeinfo_by_name(const string& name);
    
    // Type checking functions
    bool types_compatible(const TypeInfo& lhs, const TypeInfo& rhs);
    TypeInfo* get_expression_type(const string& expr_value);
    bool check_initialization_compatibility(const TypeInfo& var_type, const TypeInfo& init_type);
    bool check_literal_type(const string& value, const string& expected_base_type);

#line 287 "parser.tab.c"

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
#define YYFINAL  26
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   856

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  82
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  63
/* YYNRULES -- Number of rules.  */
#define YYNRULES  184
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  307

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   336


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
      65,    66,    67,    68,    69,    70,    71,    72,    73,    74,
      75,    76,    77,    78,    79,    80,    81
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   198,   198,   199,   210,   211,   216,   217,   221,   222,
     259,   263,   264,   268,   272,   280,   284,   288,   292,   296,
     300,   305,   340,   356,   360,   368,   369,   378,   387,   394,
     399,   404,   424,   425,   430,   431,   432,   438,   439,   440,
     449,   450,   456,   465,   466,   486,   487,   491,   492,   496,
     574,   587,   592,   597,   603,   609,   614,   619,   625,   626,
     627,   628,   629,   630,   631,   632,   636,   637,   641,   642,
     643,   644,   645,   646,   650,   651,   652,   653,   654,   655,
     659,   660,   664,   665,   666,   667,   671,   672,   673,   677,
     678,   679,   683,   684,   685,   686,   687,   691,   692,   693,
     697,   698,   702,   703,   707,   708,   712,   713,   717,   718,
     722,   726,   727,   764,   765,   766,   767,   768,   769,   770,
     771,   772,   773,   774,   778,   779,   783,   793,   797,   804,
     805,   810,   811,   815,   819,   820,   821,   822,   826,   827,
     831,   832,   833,   837,   838,   839,   843,   844,   848,   849,
     861,   866,   872,   876,   887,   896,   897,   898,   899,   900,
     901,   902,   910,   911,   912,   919,   919,   923,   924,   925,
     929,   930,   934,   935,   936,   940,   941,   942,   943,   944,
     948,   949,   950,   951,   952
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
  "VOID", "BOOL", "IF", "ELSE", "FOR", "WHILE", "DO", "UNTIL", "BREAK",
  "CONTINUE", "SWITCH", "CASE", "DEFAULT", "SIZEOF", "TYPEDEF", "STATIC",
  "GOTO", "NULL_LITERAL", "INCREMENT", "DECREMENT", "ARROW", "LEFT_SHIFT",
  "RIGHT_SHIFT", "LOGICAL_AND", "LOGICAL_OR", "EQ", "NEQ", "LE", "GE",
  "PLUS", "MINUS", "STAR", "DIVIDE", "MOD", "ASSIGN", "LT", "GT",
  "LOGICAL_NOT", "BIT_AND", "BIT_OR", "BIT_XOR", "BIT_NOT", "DOT",
  "MUL_ASSIGN", "DIV_ASSIGN", "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN",
  "LEFT_ASSIGN", "RIGHT_ASSIGN", "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN",
  "COLON", "SEMICOLON", "COMMA", "LBRACE", "RBRACE", "LPAREN", "RPAREN",
  "LBRACKET", "RBRACKET", "STRUCT", "RETURN", "IDENTIFIER", "INT_LITERAL",
  "BOOLEAN_LITERAL", "FLOAT_LITERAL", "STRING_LITERAL", "CHAR_LITERAL",
  "TYPE_NAME", "ENUM", "UNION", "INVALID", "ELLIPSIS", "CONST", "$accept",
  "start", "global_declaration", "function_definition", "declaration",
  "return_types", "declaration_specifiers", "type_specifier",
  "type_qualifier", "init_declarator_list", "init_declarator",
  "declarator", "direct_declarator", "fun_declarator",
  "fun_direct_declarator", "declaration_list", "initializer",
  "initializer_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "primary_expression", "postfix_expression",
  "argument_expression_list", "unary_expression", "unary_operator",
  "cast_expression", "multiplicative_expression", "additive_expression",
  "shift_expression", "relational_expression", "equality_expression",
  "and_expression", "exclusive_or_expression", "inclusive_or_expression",
  "logical_and_expression", "logical_or_expression",
  "conditional_expression", "assignment_expression", "assignment_operator",
  "expression", "constant_expression", "struct_or_union_specifier",
  "struct_or_union", "struct_declaration_list", "struct_declaration",
  "specifier_qualifier_list", "struct_declarator_list",
  "struct_declarator", "enum_specifier", "enumerator_list", "enumerator",
  "pointer", "type_name", "statement", "labeled_statement",
  "compound_statement", "$@1", "statement_list", "expression_statement",
  "selection_statement", "iteration_statement", "jump_statement", YY_NULLPTR
};

static const char *
yysymbol_name (yysymbol_kind_t yysymbol)
{
  return yytname[yysymbol];
}
#endif

#define YYPACT_NINF (-247)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-170)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     351,  -247,  -247,  -247,  -247,  -247,   187,  -247,   -47,  -247,
     214,   147,  -247,  -247,  -247,     0,  -247,  -247,  -247,   -45,
    -247,   214,  -247,   -37,   -26,  -247,  -247,  -247,   -30,  -247,
    -247,   -17,    45,  -247,    10,    31,    20,  -247,     2,    93,
    -247,    96,   -50,  -247,   -37,  -247,  -247,   316,  -247,   -15,
     582,   -39,  -247,  -247,  -247,    31,  -247,   206,   724,   -37,
    -247,    67,  -247,   -15,   110,    -4,  -247,  -247,  -247,   118,
     739,  -247,   781,   781,  -247,  -247,  -247,  -247,  -247,  -247,
     582,   305,  -247,  -247,  -247,  -247,  -247,  -247,  -247,  -247,
      -8,   108,   724,  -247,   166,   134,   116,    60,   151,   163,
     133,   150,   185,   186,  -247,  -247,  -247,   159,   351,  -247,
     206,   206,   328,  -247,     4,  -247,  -247,  -247,  -247,  -247,
    -247,  -247,   340,  -247,   305,  -247,   724,  -247,  -247,  -247,
     135,  -247,    26,  -247,   170,  -247,  -247,   176,   184,   379,
     724,  -247,  -247,  -247,  -247,  -247,  -247,  -247,  -247,  -247,
    -247,  -247,   724,  -247,   724,   724,   724,   724,   724,   724,
     724,   724,   724,   724,   724,   724,   724,   724,   724,   724,
     724,   724,  -247,  -247,     5,   226,  -247,  -247,  -247,  -247,
     724,   201,   140,  -247,  -247,  -247,   207,   540,  -247,   724,
    -247,   724,  -247,  -247,  -247,    34,  -247,    16,  -247,  -247,
    -247,  -247,   166,   166,   134,   134,   116,   116,   116,   116,
      60,    60,   151,   163,   133,   150,   185,   211,   216,   217,
     221,   498,   229,   215,   242,   241,   724,   247,   243,  -247,
     624,   255,  -247,   162,  -247,  -247,  -247,   423,  -247,  -247,
    -247,  -247,  -247,   724,  -247,     4,  -247,  -247,  -247,  -247,
    -247,   724,  -247,  -247,  -247,   724,   666,   724,   304,   724,
    -247,  -247,   724,   257,   498,   258,  -247,   192,   498,  -247,
    -247,  -247,  -247,  -247,  -247,    68,   666,    74,   253,    76,
      81,   498,  -247,  -247,  -247,  -247,   498,   681,   498,   724,
     498,   498,  -247,   317,   498,   106,  -247,   112,  -247,  -247,
     498,  -247,   498,   265,  -247,  -247,  -247
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    17,    19,    16,    15,    18,     0,   129,     0,   130,
       0,     0,     2,     4,     5,     0,    10,    11,    20,     0,
      21,     0,    12,     0,   145,    13,     1,     3,   150,   153,
       8,    29,     0,    23,    25,    28,     0,    33,     0,   128,
      14,   148,     0,   146,     0,   151,   152,     0,     9,     0,
       0,     0,     7,   165,     6,    27,    32,     0,     0,     0,
     143,     0,    35,     0,     0,     0,    47,    29,    24,     0,
       0,    55,     0,     0,    76,    77,    75,    79,    74,    78,
       0,     0,    50,    51,    56,    52,    54,    53,    26,    58,
      68,    80,     0,    82,    86,    89,    92,    97,   100,   102,
     104,   106,   108,   110,   111,    40,    31,     0,    39,    22,
     135,   137,     0,   131,     0,    80,   126,   149,   147,   144,
      49,    36,     0,    34,     0,    72,     0,    69,    70,    43,
       0,   124,     0,   154,     0,    64,    65,     0,     0,     0,
       0,   113,   114,   115,   116,   117,   118,   119,   120,   121,
     122,   123,     0,    71,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    30,    37,     0,     0,   134,   136,   127,   132,
       0,   140,     0,   138,    46,    48,     0,     0,    41,     0,
      57,     0,    63,    62,    60,     0,    66,     0,   112,    83,
      84,    85,    87,    88,    90,    91,    95,    96,    93,    94,
      98,    99,   101,   103,   105,   107,   109,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,   170,
       0,    50,    38,     0,   167,   155,   156,     0,   157,   158,
     159,   160,   141,     0,   133,     0,    73,    42,    44,   125,
      81,     0,    61,    59,   161,     0,     0,     0,     0,     0,
     182,   181,     0,     0,     0,     0,   183,     0,     0,   171,
     166,   168,   142,   139,    67,     0,     0,     0,     0,     0,
       0,     0,   164,   180,   184,   162,     0,     0,     0,     0,
       0,     0,   163,   172,     0,     0,   175,     0,   176,   174,
       0,   178,     0,     0,   173,   179,   177
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -247,  -247,   325,  -247,  -102,   -44,  -247,    75,  -247,  -247,
     278,   -61,    38,  -247,   300,  -247,   -60,  -247,  -247,  -247,
     228,  -247,  -247,  -247,   -46,  -247,   -87,   109,   117,    95,
     113,   172,   183,   190,   193,   182,  -247,   -54,   -49,  -247,
     -81,  -172,  -247,  -247,  -247,   248,   -72,  -247,   119,  -247,
     318,   306,     6,   244,  -202,  -247,   330,  -247,  -247,  -246,
    -247,  -247,  -247
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    11,    12,    13,    14,    15,    16,    17,   111,    32,
      33,    34,    35,    36,    37,   175,    88,   130,    64,    65,
      66,    89,    90,   195,    91,    92,    93,    94,    95,    96,
      97,    98,    99,   100,   101,   102,   103,   104,   131,   152,
     233,   117,    18,    19,   112,   113,   114,   182,   183,    20,
      42,    43,    69,   134,   234,   235,   236,   108,   237,   238,
     239,   240,   241
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
     132,   105,   120,    63,   116,   153,   173,    28,   242,   133,
     276,    59,   115,    60,    29,    23,   135,   136,   137,   258,
     129,    38,    28,    24,   125,    39,   127,   128,   106,    29,
     287,   105,   107,    41,    46,   271,    44,    28,   176,   177,
     138,    28,    28,   132,    29,   132,   115,    47,    29,    29,
      50,    45,   133,   181,   263,    67,   139,   122,   140,   197,
      30,   123,   282,   180,   174,    30,   285,   199,   200,   201,
      31,   272,    31,   232,    67,    67,    55,   189,    63,   292,
      52,    22,    53,   253,   293,    25,   296,   189,   298,   299,
     196,   190,   301,   161,   162,   251,    40,    51,   304,   252,
     305,   163,   164,   198,   250,    48,    49,    55,   115,   115,
     115,   115,   115,   115,   115,   115,   115,   115,   115,   115,
     115,   115,   115,   115,   115,   115,   116,   248,    59,   189,
     119,   174,   110,   286,   115,   189,    58,   189,   105,   288,
     249,   290,   189,   159,   160,   115,   291,    26,   141,   267,
       1,     2,     3,     4,     5,    57,   110,   142,   143,   144,
     145,   146,   147,   148,   149,   150,   151,   189,     6,   157,
     158,   302,   116,   189,   275,   121,   277,   303,   279,   168,
     115,   280,   165,   166,   181,   110,   110,   110,    67,   116,
       1,     2,     3,     4,     5,   169,   187,   115,   188,   110,
     244,   245,   274,   154,   155,   156,   295,   167,   297,     1,
       2,     3,     4,     5,   170,     7,   171,     1,     2,     3,
       4,     5,   269,   189,     8,     9,   172,   217,    10,     1,
       2,     3,     4,     5,   218,   191,   219,   220,   221,   222,
     223,   224,   225,   226,   227,    70,   192,     6,   228,    71,
      72,    73,   284,   189,   193,     7,   206,   207,   208,   209,
     243,    74,    75,    76,     8,     9,   202,   203,    21,    77,
      78,   254,   246,    79,     7,   260,   204,   205,   210,   211,
     255,   256,     7,     8,     9,   257,   229,   109,    53,  -169,
      81,     8,     9,   259,     7,   230,   231,    83,    84,    85,
      86,    87,   261,     8,     9,   262,   264,    10,     1,     2,
       3,     4,     5,   265,   268,   278,   281,   289,   283,     1,
       2,     3,     4,     5,    70,   306,   300,    68,    71,    72,
      73,     1,     2,     3,     4,     5,    27,     6,    56,   212,
      74,    75,    76,     1,     2,     3,     4,     5,    77,    78,
     185,   213,    79,   216,     1,     2,     3,     4,     5,   214,
     179,     6,    61,   215,   273,   118,    54,     0,   186,    81,
       0,     0,     6,     7,     0,    82,    83,    84,    85,    86,
      87,    62,     8,     9,     7,     0,   109,     0,     0,     0,
       0,   178,     0,     8,     9,     0,     7,    10,    70,     0,
       0,     0,    71,    72,    73,     8,     9,     0,     7,   109,
       0,     0,     0,     0,    74,    75,    76,     8,     9,     7,
     184,    10,    77,    78,   217,     0,    79,     0,     8,     9,
       0,   218,    10,   219,   220,   221,   222,   223,   224,   225,
     226,   227,    70,    81,   194,   228,    71,    72,    73,    82,
      83,    84,    85,    86,    87,     0,     0,     0,    74,    75,
      76,     0,     0,     0,     0,     0,    77,    78,     0,     0,
      79,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,   229,     0,    53,   270,    81,     0,     0,
       0,     0,   230,   231,    83,    84,    85,    86,    87,   217,
       0,     0,     0,     0,     0,     0,   218,     0,   219,   220,
     221,   222,   223,   224,   225,   226,   227,    70,     0,     0,
     228,    71,    72,    73,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    74,    75,    76,     0,     0,     0,     0,
       0,    77,    78,     0,     0,    79,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   229,    70,
      53,     0,    81,    71,    72,    73,     0,   230,   231,    83,
      84,    85,    86,    87,     0,    74,    75,    76,     0,     0,
       0,     0,     0,    77,    78,     0,     0,    79,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    70,    80,   247,    81,    71,    72,    73,     0,     0,
      82,    83,    84,    85,    86,    87,     0,    74,    75,    76,
       0,     0,     0,     0,     0,    77,    78,     0,     0,    79,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    70,    80,     0,    81,    71,    72,    73,
       0,     0,    82,    83,    84,    85,    86,    87,     0,    74,
      75,    76,     0,     0,     0,     0,     0,    77,    78,     0,
       0,    79,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   266,    70,     0,     0,    81,    71,
      72,    73,     0,     0,    82,    83,    84,    85,    86,    87,
      70,    74,    75,    76,    71,    72,    73,     0,     0,    77,
      78,     0,     0,    79,     0,     0,    74,    75,    76,     0,
       0,     0,     0,     0,    77,    78,   229,     0,    79,     0,
      81,     0,     0,     0,     0,     0,    82,    83,    84,    85,
      86,    87,     0,    70,     0,    81,   294,    71,    72,    73,
       0,    82,    83,    84,    85,    86,    87,     0,    70,    74,
      75,    76,    71,    72,    73,     0,     0,    77,    78,     0,
       0,    79,     0,     0,    74,    75,    76,     0,     0,     0,
       0,     0,    77,    78,     0,     0,    79,     0,    81,     0,
       0,     0,     0,     0,    82,    83,    84,    85,    86,    87,
      70,     0,     0,   124,    71,    72,    73,     0,     0,    82,
      83,    84,    85,    86,    87,     0,    74,    75,    76,     0,
       0,     0,     0,     0,    77,    78,     0,     0,    79,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,   126,     0,     0,     0,     0,
       0,    82,    83,    84,    85,    86,    87
};

static const yytype_int16 yycheck[] =
{
      81,    50,    63,    47,    58,    92,   108,    37,   180,    81,
     256,    61,    58,    63,    44,    62,    24,    25,    26,   221,
      80,    15,    37,    70,    70,    70,    72,    73,    67,    44,
     276,    80,    71,    70,    28,   237,    62,    37,   110,   111,
      48,    37,    37,   124,    44,   126,    92,    64,    44,    44,
      40,    81,   124,   114,   226,    70,    64,    61,    66,   140,
      60,    65,   264,    59,   108,    60,   268,   154,   155,   156,
      70,   243,    70,   175,    70,    70,    38,    61,   122,   281,
      60,     6,    62,    67,   286,    10,   288,    61,   290,   291,
     139,    65,   294,    33,    34,    61,    21,    66,   300,    65,
     302,    41,    42,   152,   191,    60,    61,    69,   154,   155,
     156,   157,   158,   159,   160,   161,   162,   163,   164,   165,
     166,   167,   168,   169,   170,   171,   180,   187,    61,    61,
      63,   175,    57,    65,   180,    61,    40,    61,   187,    65,
     189,    65,    61,    27,    28,   191,    65,     0,    40,   230,
       3,     4,     5,     6,     7,    62,    81,    49,    50,    51,
      52,    53,    54,    55,    56,    57,    58,    61,    21,    35,
      36,    65,   226,    61,   255,    65,   257,    65,   259,    46,
     226,   262,    31,    32,   245,   110,   111,   112,    70,   243,
       3,     4,     5,     6,     7,    45,    61,   243,    63,   124,
      60,    61,   251,    37,    38,    39,   287,    44,   289,     3,
       4,     5,     6,     7,    29,    68,    30,     3,     4,     5,
       6,     7,    60,    61,    77,    78,    67,     1,    81,     3,
       4,     5,     6,     7,     8,    65,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    70,    21,    22,    23,
      24,    25,    60,    61,    70,    68,   161,   162,   163,   164,
      59,    35,    36,    37,    77,    78,   157,   158,    81,    43,
      44,    60,    65,    47,    68,    60,   159,   160,   165,   166,
      64,    64,    68,    77,    78,    64,    60,    81,    62,    63,
      64,    77,    78,    64,    68,    69,    70,    71,    72,    73,
      74,    75,    60,    77,    78,    64,    59,    81,     3,     4,
       5,     6,     7,    70,    59,    11,    59,    64,    60,     3,
       4,     5,     6,     7,    19,    60,     9,    49,    23,    24,
      25,     3,     4,     5,     6,     7,    11,    21,    38,   167,
      35,    36,    37,     3,     4,     5,     6,     7,    43,    44,
     122,   168,    47,   171,     3,     4,     5,     6,     7,   169,
     112,    21,    44,   170,   245,    59,    36,    -1,   124,    64,
      -1,    -1,    21,    68,    -1,    70,    71,    72,    73,    74,
      75,    65,    77,    78,    68,    -1,    81,    -1,    -1,    -1,
      -1,    63,    -1,    77,    78,    -1,    68,    81,    19,    -1,
      -1,    -1,    23,    24,    25,    77,    78,    -1,    68,    81,
      -1,    -1,    -1,    -1,    35,    36,    37,    77,    78,    68,
      80,    81,    43,    44,     1,    -1,    47,    -1,    77,    78,
      -1,     8,    81,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    19,    64,    65,    22,    23,    24,    25,    70,
      71,    72,    73,    74,    75,    -1,    -1,    -1,    35,    36,
      37,    -1,    -1,    -1,    -1,    -1,    43,    44,    -1,    -1,
      47,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    60,    -1,    62,    63,    64,    -1,    -1,
      -1,    -1,    69,    70,    71,    72,    73,    74,    75,     1,
      -1,    -1,    -1,    -1,    -1,    -1,     8,    -1,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    -1,    -1,
      22,    23,    24,    25,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    35,    36,    37,    -1,    -1,    -1,    -1,
      -1,    43,    44,    -1,    -1,    47,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    60,    19,
      62,    -1,    64,    23,    24,    25,    -1,    69,    70,    71,
      72,    73,    74,    75,    -1,    35,    36,    37,    -1,    -1,
      -1,    -1,    -1,    43,    44,    -1,    -1,    47,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    19,    62,    63,    64,    23,    24,    25,    -1,    -1,
      70,    71,    72,    73,    74,    75,    -1,    35,    36,    37,
      -1,    -1,    -1,    -1,    -1,    43,    44,    -1,    -1,    47,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    19,    62,    -1,    64,    23,    24,    25,
      -1,    -1,    70,    71,    72,    73,    74,    75,    -1,    35,
      36,    37,    -1,    -1,    -1,    -1,    -1,    43,    44,    -1,
      -1,    47,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    60,    19,    -1,    -1,    64,    23,
      24,    25,    -1,    -1,    70,    71,    72,    73,    74,    75,
      19,    35,    36,    37,    23,    24,    25,    -1,    -1,    43,
      44,    -1,    -1,    47,    -1,    -1,    35,    36,    37,    -1,
      -1,    -1,    -1,    -1,    43,    44,    60,    -1,    47,    -1,
      64,    -1,    -1,    -1,    -1,    -1,    70,    71,    72,    73,
      74,    75,    -1,    19,    -1,    64,    65,    23,    24,    25,
      -1,    70,    71,    72,    73,    74,    75,    -1,    19,    35,
      36,    37,    23,    24,    25,    -1,    -1,    43,    44,    -1,
      -1,    47,    -1,    -1,    35,    36,    37,    -1,    -1,    -1,
      -1,    -1,    43,    44,    -1,    -1,    47,    -1,    64,    -1,
      -1,    -1,    -1,    -1,    70,    71,    72,    73,    74,    75,
      19,    -1,    -1,    64,    23,    24,    25,    -1,    -1,    70,
      71,    72,    73,    74,    75,    -1,    35,    36,    37,    -1,
      -1,    -1,    -1,    -1,    43,    44,    -1,    -1,    47,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    64,    -1,    -1,    -1,    -1,
      -1,    70,    71,    72,    73,    74,    75
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,     7,    21,    68,    77,    78,
      81,    83,    84,    85,    86,    87,    88,    89,   124,   125,
     131,    81,    89,    62,    70,    89,     0,    84,    37,    44,
      60,    70,    91,    92,    93,    94,    95,    96,   134,    70,
      89,    70,   132,   133,    62,    81,   134,    64,    60,    61,
      40,    66,    60,    62,   138,    94,    96,    62,    40,    61,
      63,   132,    65,    87,   100,   101,   102,    70,    92,   134,
      19,    23,    24,    25,    35,    36,    37,    43,    44,    47,
      62,    64,    70,    71,    72,    73,    74,    75,    98,   103,
     104,   106,   107,   108,   109,   110,   111,   112,   113,   114,
     115,   116,   117,   118,   119,   120,    67,    71,   139,    81,
      89,    90,   126,   127,   128,   106,   119,   123,   133,    63,
      93,    65,    61,    65,    64,   106,    64,   106,   106,    98,
      99,   120,   122,   128,   135,    24,    25,    26,    48,    64,
      66,    40,    49,    50,    51,    52,    53,    54,    55,    56,
      57,    58,   121,   108,    37,    38,    39,    35,    36,    27,
      28,    33,    34,    41,    42,    31,    32,    44,    46,    45,
      29,    30,    67,    86,    87,    97,   128,   128,    63,   127,
      59,    93,   129,   130,    80,   102,   135,    61,    63,    61,
      65,    65,    70,    70,    65,   105,   120,   122,   120,   108,
     108,   108,   109,   109,   110,   110,   111,   111,   111,   111,
     112,   112,   113,   114,   115,   116,   117,     1,     8,    10,
      11,    12,    13,    14,    15,    16,    17,    18,    22,    60,
      69,    70,    86,   122,   136,   137,   138,   140,   141,   142,
     143,   144,   123,    59,    60,    61,    65,    63,    98,   120,
     108,    61,    65,    67,    60,    64,    64,    64,   136,    64,
      60,    60,    64,   123,    59,    70,    60,   122,    59,    60,
      63,   136,   123,   130,   120,   122,   141,   122,    11,   122,
     122,    59,   136,    60,    60,   136,    65,   141,    65,    64,
      65,    65,   136,   136,    65,   122,   136,   122,   136,   136,
       9,   136,    65,    65,   136,   136,    60
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    82,    83,    83,    84,    84,    85,    85,    86,    86,
      87,    88,    88,    88,    88,    89,    89,    89,    89,    89,
      89,    89,    90,    91,    91,    92,    92,    93,    93,    94,
      94,    94,    95,    95,    96,    96,    96,    97,    97,    97,
      98,    98,    98,    99,    99,   100,   100,   101,   101,   102,
     103,   103,   103,   103,   103,   103,   103,   103,   104,   104,
     104,   104,   104,   104,   104,   104,   105,   105,   106,   106,
     106,   106,   106,   106,   107,   107,   107,   107,   107,   107,
     108,   108,   109,   109,   109,   109,   110,   110,   110,   111,
     111,   111,   112,   112,   112,   112,   112,   113,   113,   113,
     114,   114,   115,   115,   116,   116,   117,   117,   118,   118,
     119,   120,   120,   121,   121,   121,   121,   121,   121,   121,
     121,   121,   121,   121,   122,   122,   123,   124,   124,   125,
     125,   126,   126,   127,   128,   128,   128,   128,   129,   129,
     130,   130,   130,   131,   131,   131,   132,   132,   133,   133,
     134,   134,   134,   134,   135,   136,   136,   136,   136,   136,
     136,   136,   137,   137,   137,   139,   138,   140,   140,   140,
     141,   141,   142,   142,   142,   143,   143,   143,   143,   143,
     144,   144,   144,   144,   144
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     3,     3,     2,     3,
       1,     1,     2,     2,     3,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     3,     1,     3,     2,     1,     1,
       4,     3,     2,     1,     4,     3,     4,     1,     2,     0,
       1,     3,     4,     1,     3,     1,     3,     1,     3,     2,
       1,     1,     1,     1,     1,     1,     1,     3,     1,     4,
       3,     4,     3,     3,     2,     2,     1,     3,     1,     2,
       2,     2,     2,     4,     1,     1,     1,     1,     1,     1,
       1,     4,     1,     3,     3,     3,     1,     3,     3,     1,
       3,     3,     1,     3,     3,     3,     3,     1,     3,     3,
       1,     3,     1,     3,     1,     3,     1,     3,     1,     3,
       1,     1,     3,     1,     1,     1,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     5,     2,     1,
       1,     1,     2,     3,     2,     1,     2,     1,     1,     3,
       1,     2,     3,     4,     5,     2,     1,     3,     1,     3,
       1,     2,     2,     1,     1,     1,     1,     1,     1,     1,
       1,     2,     3,     4,     3,     0,     5,     1,     2,     0,
       1,     2,     5,     7,     5,     5,     5,     7,     6,     7,
       3,     2,     2,     2,     3
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
#line 221 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1592 "parser.tab.c"
    break;

  case 9: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 222 "parser.y"
                                                      {
		// Combine base type with each declarator's type information
		for (DeclaratorInfo* declInfo : *(yyvsp[-1].decllist)) {
			TypeInfo combinedType = *(yyvsp[-2].typeinfo);  // Start with base type
			
			// Add declarator-specific type information
			combinedType.isPointer = declInfo->isPointer;
			combinedType.pointerCount = declInfo->pointerCount;
			combinedType.isReference = declInfo->isReference;
			combinedType.isConstPointer = declInfo->isConstPointer;
			combinedType.isArray = declInfo->isArray;
			combinedType.arrayDimensions = declInfo->arrayDimensions;
			// Insert into symbol table
			insert_symbol(declInfo->name, combinedType, declInfo->initValue);
			// For initialization compatibility check
			if (declInfo->initType) {
				if (!check_initialization_compatibility(combinedType, *declInfo->initType)) {
					yyerror(("Type mismatch in initialization of variable " + declInfo->name).c_str());
				}
				delete declInfo->initType;
			}
			delete declInfo;
		}
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
	}
#line 1623 "parser.tab.c"
    break;

  case 10: /* return_types: declaration_specifiers  */
#line 259 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1629 "parser.tab.c"
    break;

  case 11: /* declaration_specifiers: type_specifier  */
#line 263 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1635 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: STATIC type_specifier  */
#line 264 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1644 "parser.tab.c"
    break;

  case 13: /* declaration_specifiers: CONST type_specifier  */
#line 268 "parser.y"
                               { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isConst = true;
	}
#line 1653 "parser.tab.c"
    break;

  case 14: /* declaration_specifiers: STATIC CONST type_specifier  */
#line 272 "parser.y"
                                      { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
		(yyval.typeinfo)->isConst = true;
	}
#line 1663 "parser.tab.c"
    break;

  case 15: /* type_specifier: VOID  */
#line 280 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1672 "parser.tab.c"
    break;

  case 16: /* type_specifier: CHAR  */
#line 284 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1681 "parser.tab.c"
    break;

  case 17: /* type_specifier: INT  */
#line 288 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1690 "parser.tab.c"
    break;

  case 18: /* type_specifier: BOOL  */
#line 292 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "bool"; 
    }
#line 1699 "parser.tab.c"
    break;

  case 19: /* type_specifier: FLOAT  */
#line 296 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1708 "parser.tab.c"
    break;

  case 20: /* type_specifier: struct_or_union_specifier  */
#line 300 "parser.y"
                                { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1718 "parser.tab.c"
    break;

  case 21: /* type_specifier: enum_specifier  */
#line 305 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "enum"; 
    }
#line 1727 "parser.tab.c"
    break;

  case 22: /* type_qualifier: CONST  */
#line 340 "parser.y"
                { 
		(yyval.typeinfo) = new TypeInfo(); 
		(yyval.typeinfo)->isConst = true; 
	}
#line 1736 "parser.tab.c"
    break;

  case 23: /* init_declarator_list: init_declarator  */
#line 356 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1745 "parser.tab.c"
    break;

  case 24: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 360 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1754 "parser.tab.c"
    break;

  case 25: /* init_declarator: declarator  */
#line 368 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1760 "parser.tab.c"
    break;

  case 26: /* init_declarator: declarator ASSIGN initializer  */
#line 369 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initValue = "initialized";  // For now, just mark as initialized
		(yyval.declinfo)->initType = (yyvsp[0].typeinfo);  // Store the initializer's type for later checking
	}
#line 1770 "parser.tab.c"
    break;

  case 27: /* declarator: pointer direct_declarator  */
#line 378 "parser.y"
                                    {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = (yyvsp[-1].typeinfo)->isPointer || (yyval.declinfo)->isPointer;
		(yyval.declinfo)->pointerCount += (yyvsp[-1].typeinfo)->pointerCount;
		(yyval.declinfo)->isReference = (yyvsp[-1].typeinfo)->isReference || (yyval.declinfo)->isReference;
		(yyval.declinfo)->isConstPointer = (yyvsp[-1].typeinfo)->isConstPointer || (yyval.declinfo)->isConstPointer;
		delete (yyvsp[-1].typeinfo);
	}
#line 1784 "parser.tab.c"
    break;

  case 28: /* declarator: direct_declarator  */
#line 387 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1792 "parser.tab.c"
    break;

  case 29: /* direct_declarator: IDENTIFIER  */
#line 394 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1802 "parser.tab.c"
    break;

  case 30: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 399 "parser.y"
                                                          {     /* e.g., arr[10] */
		(yyval.declinfo) = (yyvsp[-3].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back((yyvsp[-1].ival));  // Direct integer literal
	}
#line 1812 "parser.tab.c"
    break;

  case 31: /* direct_declarator: direct_declarator LBRACKET RBRACKET  */
#line 404 "parser.y"
                                              {                        /* e.g., arr[] */
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back(-1);  // -1 indicates unknown size
	}
#line 1822 "parser.tab.c"
    break;

  case 40: /* initializer: assignment_expression  */
#line 449 "parser.y"
                                { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1828 "parser.tab.c"
    break;

  case 41: /* initializer: LBRACE initializer_list RBRACE  */
#line 450 "parser.y"
                                         { 
		// For array initializers, create a placeholder type
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
		(yyval.typeinfo)->value = "array_initializer";
	}
#line 1839 "parser.tab.c"
    break;

  case 42: /* initializer: LBRACE initializer_list COMMA RBRACE  */
#line 456 "parser.y"
                                               { 
		// For array initializers with trailing comma
		(yyval.typeinfo) = new TypeInfo();
		(yyval.typeinfo)->baseType = "array_init";
		(yyval.typeinfo)->value = "array_initializer";
	}
#line 1850 "parser.tab.c"
    break;

  case 50: /* primary_expression: IDENTIFIER  */
#line 574 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
        SymbolEntry entry;
        if (lookup_symbol(*(yyvsp[0].sval), entry)) {
            (yyval.typeinfo) = new TypeInfo(entry.type);  // Copy type from symbol table
            (yyval.typeinfo)->value = *(yyvsp[0].sval);  // Store identifier name as value
        } else {
            (yyval.typeinfo) = new TypeInfo();
            (yyval.typeinfo)->baseType = "error";
            (yyval.typeinfo)->value = *(yyvsp[0].sval);
        }
        delete (yyvsp[0].sval);
    }
#line 1868 "parser.tab.c"
    break;

  case 51: /* primary_expression: INT_LITERAL  */
#line 587 "parser.y"
                  { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "int";
        (yyval.typeinfo)->value = to_string((yyvsp[0].ival));
    }
#line 1878 "parser.tab.c"
    break;

  case 52: /* primary_expression: FLOAT_LITERAL  */
#line 592 "parser.y"
                    { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "float";
        (yyval.typeinfo)->value = to_string((yyvsp[0].fval));
    }
#line 1888 "parser.tab.c"
    break;

  case 53: /* primary_expression: CHAR_LITERAL  */
#line 597 "parser.y"
                   { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "char";
        (yyval.typeinfo)->value = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1899 "parser.tab.c"
    break;

  case 54: /* primary_expression: STRING_LITERAL  */
#line 603 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "string";
        (yyval.typeinfo)->value = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1910 "parser.tab.c"
    break;

  case 55: /* primary_expression: NULL_LITERAL  */
#line 609 "parser.y"
                       { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "null";
        (yyval.typeinfo)->value = "NULL";
    }
#line 1920 "parser.tab.c"
    break;

  case 56: /* primary_expression: BOOLEAN_LITERAL  */
#line 614 "parser.y"
                          { 
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->baseType = "bool";
        (yyval.typeinfo)->value = to_string((yyvsp[0].ival));
    }
#line 1930 "parser.tab.c"
    break;

  case 57: /* primary_expression: LPAREN expression RPAREN  */
#line 619 "parser.y"
                               { 
        (yyval.typeinfo) = (yyvsp[-1].typeinfo);  // Pass through the expression type
    }
#line 1938 "parser.tab.c"
    break;

  case 92: /* relational_expression: shift_expression  */
#line 683 "parser.y"
                           { /*$$ = $1;*/ }
#line 1944 "parser.tab.c"
    break;

  case 111: /* assignment_expression: conditional_expression  */
#line 726 "parser.y"
                                 { /*$$ = $1;*/ }
#line 1950 "parser.tab.c"
    break;

  case 112: /* assignment_expression: unary_expression assignment_operator assignment_expression  */
#line 727 "parser.y"
                                                                     { 
		// Type checking for assignment
		// for now consider lhs is only identifier , so get its type from symbol table
		TypeInfo* lhs_type = (yyvsp[-2].typeinfo);
		TypeInfo* rhs_type = (yyvsp[0].typeinfo);

		// print both types for debugging
		cout << "LHS type: " << (lhs_type ? lhs_type->toString() : "null") << ", RHS type: " << (rhs_type ? rhs_type->toString() : "null") << endl;	
		
		
		if (lhs_type && rhs_type) {
			// Check if RHS is a variable - get its type from symbol table
			if (rhs_type->value != "" && rhs_type->baseType == "") {
				// It's an identifier, get its type from symbol table
				TypeInfo* var_type = get_expression_type(rhs_type->value);
				if (var_type) {
					rhs_type = var_type;
				}
			}
			
			// Check base type compatibility (ignoring const/static as requested)
			if (lhs_type && rhs_type && !types_compatible(*lhs_type, *rhs_type)) {
				// If direct type compatibility fails, check if it's a literal assignment
				if (rhs_type->value != "" && check_literal_type(rhs_type->value, lhs_type->baseType)) {
					// Literal is compatible with the target type
				} else {
					yyerror("Type mismatch in assignment");
				}
			}
		}
		
		(yyval.typeinfo) = (yyvsp[-2].typeinfo); 
		delete (yyvsp[0].typeinfo); 
	}
#line 1989 "parser.tab.c"
    break;

  case 124: /* expression: assignment_expression  */
#line 778 "parser.y"
                                { /*$$ = $1;*/ }
#line 1995 "parser.tab.c"
    break;

  case 125: /* expression: expression COMMA assignment_expression  */
#line 779 "parser.y"
                                                 { /*$$ = $1; delete $3;*/ }
#line 2001 "parser.tab.c"
    break;

  case 126: /* constant_expression: conditional_expression  */
#line 783 "parser.y"
                                 { /*$$ = $1;*/ }
#line 2007 "parser.tab.c"
    break;

  case 127: /* struct_or_union_specifier: struct_or_union IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 793 "parser.y"
                                                                           { 
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 2016 "parser.tab.c"
    break;

  case 128: /* struct_or_union_specifier: struct_or_union IDENTIFIER  */
#line 797 "parser.y"
                                     { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 2025 "parser.tab.c"
    break;

  case 129: /* struct_or_union: STRUCT  */
#line 804 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 2031 "parser.tab.c"
    break;

  case 130: /* struct_or_union: UNION  */
#line 805 "parser.y"
                { (yyval.sval) = new string("union"); }
#line 2037 "parser.tab.c"
    break;

  case 140: /* struct_declarator: declarator  */
#line 831 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 2043 "parser.tab.c"
    break;

  case 141: /* struct_declarator: COLON constant_expression  */
#line 832 "parser.y"
                                    { (yyval.sval) = new string("bitfield"); }
#line 2049 "parser.tab.c"
    break;

  case 142: /* struct_declarator: declarator COLON constant_expression  */
#line 833 "parser.y"
                                               { (yyval.sval) = new string((yyvsp[-2].declinfo)->name); delete (yyvsp[-2].declinfo); }
#line 2055 "parser.tab.c"
    break;

  case 150: /* pointer: STAR  */
#line 861 "parser.y"
           {                                   /* e.g., * */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
        (yyval.typeinfo)->pointerCount = 1;
    }
#line 2065 "parser.tab.c"
    break;

  case 151: /* pointer: STAR CONST  */
#line 866 "parser.y"
                 {                            /* e.g., * const */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
        (yyval.typeinfo)->pointerCount = 1;
        (yyval.typeinfo)->isConstPointer = true;
    }
#line 2076 "parser.tab.c"
    break;

  case 152: /* pointer: STAR pointer  */
#line 872 "parser.y"
                   {                          /* e.g., **, ***, etc. */
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        (yyval.typeinfo)->pointerCount++;
    }
#line 2085 "parser.tab.c"
    break;

  case 153: /* pointer: BIT_AND  */
#line 876 "parser.y"
                  {                               /* e.g., & (reference) */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isReference = true;
    }
#line 2094 "parser.tab.c"
    break;

  case 161: /* statement: error SEMICOLON  */
#line 902 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 2103 "parser.tab.c"
    break;

  case 165: /* $@1: %empty  */
#line 919 "parser.y"
                 { enter_scope(); }
#line 2109 "parser.tab.c"
    break;

  case 166: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 919 "parser.y"
                                                                           { exit_scope(); }
#line 2115 "parser.tab.c"
    break;


#line 2119 "parser.tab.c"

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

#line 955 "parser.y"


void enter_scope() {
    current_scope_level++;
    scope_stack.push_back(map<string, SymbolEntry>());
    cout << "Entering scope level " << current_scope_level << "\n";
}

void exit_scope() {
    if (!scope_stack.empty()) {
        cout << "Exiting scope level " << current_scope_level << "\n";
        // Display symbols being destroyed
        if (!scope_stack.back().empty()) {
            cout << "Destroying symbols from scope " << current_scope_level << ":\n";
            for (const auto& entry : scope_stack.back()) {
                cout << "  - " << entry.second.name << " (" << entry.second.type.toString() << ")\n";
            }
        }
        scope_stack.pop_back();
        current_scope_level--;
    }
}

void insert_symbol(const string& name, const TypeInfo& type, const string& initValue) {
    if (scope_stack.empty()) {
        // Global scope - create initial scope
        enter_scope();
    }
    
    // Check if symbol already exists in current scope
    if (scope_stack.back().find(name) != scope_stack.back().end()) {
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' already declared in current scope\n";
        return;
    }
    
    SymbolEntry entry;
    entry.name = name;
    entry.type = type;
    entry.line = yylineno;
    entry.scope_level = current_scope_level;
    entry.initialValue = initValue;
    entry.isInitialized = !initValue.empty();
    
    scope_stack.back()[name] = entry;
    
    cout << "Inserted symbol: " << name << " (" << type.toString() << ")";
    if (entry.isInitialized) {
        cout << " = " << initValue;
    }
    cout << " at line " << yylineno << " in scope " << current_scope_level << "\n";
}

bool lookup_symbol(const string& name, SymbolEntry& entry) {
    // Search from current scope to global scope
    for (int i = scope_stack.size() - 1; i >= 0; i--) {
        auto it = scope_stack[i].find(name);
        if (it != scope_stack[i].end()) {
            entry = it->second;
            return true;
        }
    }
    return false;
}

bool lookup_symbol_current_scope(const string& name) {
    if (scope_stack.empty()) return false;
    return scope_stack.back().find(name) != scope_stack.back().end();
}


void check_variable_declaration(const string& name) {
    SymbolEntry entry;
    if (!lookup_symbol(name, entry)) {
        cerr << "Error at line " << yylineno << ": Variable '" << name 
             << "' used but not declared\n";
    } else {
        cout << "Variable '" << name << "' found: declared as " 
             << entry.type.toString() << " at line " << entry.line 
             << " in scope " << entry.scope_level;
        if (entry.isInitialized) {
            cout << " (initialized with: " << entry.initialValue << ")";
        }
        cout << "\n";
    }
}

void displaySymbolTable(){
	cout << "\nCurrent Symbol Table:\n";
	for (int i = 0; i < scope_stack.size(); i++) {
		cout << "Scope Level " << i << ":\n";
		for (const auto& entry : scope_stack[i]) {
			cout << "  - " << entry.second.name << " (" << entry.second.type.toString() << ")";
			if (entry.second.isInitialized) {
				cout << " = " << entry.second.initialValue;
			}
			cout << " [Declared at line " << entry.second.line << "]\n";
		}
	}
	cout << "End of Symbol Table\n\n";
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
        auto it = scope_stack[i].find(identifier);
        if (it != scope_stack[i].end()) {
            return &(it->second.type);
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
