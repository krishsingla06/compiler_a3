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
  YYSYMBOL_CLASS = 23,                     /* CLASS  */
  YYSYMBOL_PUBLIC = 24,                    /* PUBLIC  */
  YYSYMBOL_PRIVATE = 25,                   /* PRIVATE  */
  YYSYMBOL_PROTECTED = 26,                 /* PROTECTED  */
  YYSYMBOL_NULL_LITERAL = 27,              /* NULL_LITERAL  */
  YYSYMBOL_INCREMENT = 28,                 /* INCREMENT  */
  YYSYMBOL_DECREMENT = 29,                 /* DECREMENT  */
  YYSYMBOL_ARROW = 30,                     /* ARROW  */
  YYSYMBOL_LEFT_SHIFT = 31,                /* LEFT_SHIFT  */
  YYSYMBOL_RIGHT_SHIFT = 32,               /* RIGHT_SHIFT  */
  YYSYMBOL_LOGICAL_AND = 33,               /* LOGICAL_AND  */
  YYSYMBOL_LOGICAL_OR = 34,                /* LOGICAL_OR  */
  YYSYMBOL_EQ = 35,                        /* EQ  */
  YYSYMBOL_NEQ = 36,                       /* NEQ  */
  YYSYMBOL_LE = 37,                        /* LE  */
  YYSYMBOL_GE = 38,                        /* GE  */
  YYSYMBOL_PLUS = 39,                      /* PLUS  */
  YYSYMBOL_MINUS = 40,                     /* MINUS  */
  YYSYMBOL_STAR = 41,                      /* STAR  */
  YYSYMBOL_DIVIDE = 42,                    /* DIVIDE  */
  YYSYMBOL_MOD = 43,                       /* MOD  */
  YYSYMBOL_ASSIGN = 44,                    /* ASSIGN  */
  YYSYMBOL_LT = 45,                        /* LT  */
  YYSYMBOL_GT = 46,                        /* GT  */
  YYSYMBOL_LOGICAL_NOT = 47,               /* LOGICAL_NOT  */
  YYSYMBOL_BIT_AND = 48,                   /* BIT_AND  */
  YYSYMBOL_BIT_OR = 49,                    /* BIT_OR  */
  YYSYMBOL_BIT_XOR = 50,                   /* BIT_XOR  */
  YYSYMBOL_BIT_NOT = 51,                   /* BIT_NOT  */
  YYSYMBOL_DOT = 52,                       /* DOT  */
  YYSYMBOL_MUL_ASSIGN = 53,                /* MUL_ASSIGN  */
  YYSYMBOL_DIV_ASSIGN = 54,                /* DIV_ASSIGN  */
  YYSYMBOL_MOD_ASSIGN = 55,                /* MOD_ASSIGN  */
  YYSYMBOL_ADD_ASSIGN = 56,                /* ADD_ASSIGN  */
  YYSYMBOL_SUB_ASSIGN = 57,                /* SUB_ASSIGN  */
  YYSYMBOL_LEFT_ASSIGN = 58,               /* LEFT_ASSIGN  */
  YYSYMBOL_RIGHT_ASSIGN = 59,              /* RIGHT_ASSIGN  */
  YYSYMBOL_AND_ASSIGN = 60,                /* AND_ASSIGN  */
  YYSYMBOL_XOR_ASSIGN = 61,                /* XOR_ASSIGN  */
  YYSYMBOL_OR_ASSIGN = 62,                 /* OR_ASSIGN  */
  YYSYMBOL_COLON = 63,                     /* COLON  */
  YYSYMBOL_SEMICOLON = 64,                 /* SEMICOLON  */
  YYSYMBOL_COMMA = 65,                     /* COMMA  */
  YYSYMBOL_LBRACE = 66,                    /* LBRACE  */
  YYSYMBOL_RBRACE = 67,                    /* RBRACE  */
  YYSYMBOL_LPAREN = 68,                    /* LPAREN  */
  YYSYMBOL_RPAREN = 69,                    /* RPAREN  */
  YYSYMBOL_LBRACKET = 70,                  /* LBRACKET  */
  YYSYMBOL_RBRACKET = 71,                  /* RBRACKET  */
  YYSYMBOL_STRUCT = 72,                    /* STRUCT  */
  YYSYMBOL_RETURN = 73,                    /* RETURN  */
  YYSYMBOL_IDENTIFIER = 74,                /* IDENTIFIER  */
  YYSYMBOL_INT_LITERAL = 75,               /* INT_LITERAL  */
  YYSYMBOL_BOOLEAN_LITERAL = 76,           /* BOOLEAN_LITERAL  */
  YYSYMBOL_FLOAT_LITERAL = 77,             /* FLOAT_LITERAL  */
  YYSYMBOL_STRING_LITERAL = 78,            /* STRING_LITERAL  */
  YYSYMBOL_CHAR_LITERAL = 79,              /* CHAR_LITERAL  */
  YYSYMBOL_TYPE_NAME = 80,                 /* TYPE_NAME  */
  YYSYMBOL_ENUM = 81,                      /* ENUM  */
  YYSYMBOL_UNION = 82,                     /* UNION  */
  YYSYMBOL_INVALID = 83,                   /* INVALID  */
  YYSYMBOL_ELLIPSIS = 84,                  /* ELLIPSIS  */
  YYSYMBOL_CONST = 85,                     /* CONST  */
  YYSYMBOL_YYACCEPT = 86,                  /* $accept  */
  YYSYMBOL_start = 87,                     /* start  */
  YYSYMBOL_global_declaration = 88,        /* global_declaration  */
  YYSYMBOL_function_definition = 89,       /* function_definition  */
  YYSYMBOL_declaration = 90,               /* declaration  */
  YYSYMBOL_return_types = 91,              /* return_types  */
  YYSYMBOL_declaration_specifiers = 92,    /* declaration_specifiers  */
  YYSYMBOL_type_specifier = 93,            /* type_specifier  */
  YYSYMBOL_type_qualifier = 94,            /* type_qualifier  */
  YYSYMBOL_init_declarator_list = 95,      /* init_declarator_list  */
  YYSYMBOL_init_declarator = 96,           /* init_declarator  */
  YYSYMBOL_declarator = 97,                /* declarator  */
  YYSYMBOL_direct_declarator = 98,         /* direct_declarator  */
  YYSYMBOL_fun_declarator = 99,            /* fun_declarator  */
  YYSYMBOL_fun_direct_declarator = 100,    /* fun_direct_declarator  */
  YYSYMBOL_declaration_list = 101,         /* declaration_list  */
  YYSYMBOL_initializer = 102,              /* initializer  */
  YYSYMBOL_initializer_list = 103,         /* initializer_list  */
  YYSYMBOL_parameter_type_list = 104,      /* parameter_type_list  */
  YYSYMBOL_parameter_list = 105,           /* parameter_list  */
  YYSYMBOL_parameter_declaration = 106,    /* parameter_declaration  */
  YYSYMBOL_class_declaration = 107,        /* class_declaration  */
  YYSYMBOL_opt_base_clause = 108,          /* opt_base_clause  */
  YYSYMBOL_base_specifier_list = 109,      /* base_specifier_list  */
  YYSYMBOL_base_specifier = 110,           /* base_specifier  */
  YYSYMBOL_opt_access_specifier = 111,     /* opt_access_specifier  */
  YYSYMBOL_class_body = 112,               /* class_body  */
  YYSYMBOL_member_declaration = 113,       /* member_declaration  */
  YYSYMBOL_constructor_declaration = 114,  /* constructor_declaration  */
  YYSYMBOL_destructor_declaration = 115,   /* destructor_declaration  */
  YYSYMBOL_access_label = 116,             /* access_label  */
  YYSYMBOL_primary_expression = 117,       /* primary_expression  */
  YYSYMBOL_postfix_expression = 118,       /* postfix_expression  */
  YYSYMBOL_argument_expression_list = 119, /* argument_expression_list  */
  YYSYMBOL_unary_expression = 120,         /* unary_expression  */
  YYSYMBOL_unary_operator = 121,           /* unary_operator  */
  YYSYMBOL_cast_expression = 122,          /* cast_expression  */
  YYSYMBOL_multiplicative_expression = 123, /* multiplicative_expression  */
  YYSYMBOL_additive_expression = 124,      /* additive_expression  */
  YYSYMBOL_shift_expression = 125,         /* shift_expression  */
  YYSYMBOL_relational_expression = 126,    /* relational_expression  */
  YYSYMBOL_equality_expression = 127,      /* equality_expression  */
  YYSYMBOL_and_expression = 128,           /* and_expression  */
  YYSYMBOL_exclusive_or_expression = 129,  /* exclusive_or_expression  */
  YYSYMBOL_inclusive_or_expression = 130,  /* inclusive_or_expression  */
  YYSYMBOL_logical_and_expression = 131,   /* logical_and_expression  */
  YYSYMBOL_logical_or_expression = 132,    /* logical_or_expression  */
  YYSYMBOL_conditional_expression = 133,   /* conditional_expression  */
  YYSYMBOL_assignment_expression = 134,    /* assignment_expression  */
  YYSYMBOL_assignment_operator = 135,      /* assignment_operator  */
  YYSYMBOL_expression = 136,               /* expression  */
  YYSYMBOL_constant_expression = 137,      /* constant_expression  */
  YYSYMBOL_struct_or_union_specifier = 138, /* struct_or_union_specifier  */
  YYSYMBOL_struct_or_union = 139,          /* struct_or_union  */
  YYSYMBOL_struct_declaration_list = 140,  /* struct_declaration_list  */
  YYSYMBOL_struct_declaration = 141,       /* struct_declaration  */
  YYSYMBOL_specifier_qualifier_list = 142, /* specifier_qualifier_list  */
  YYSYMBOL_struct_declarator_list = 143,   /* struct_declarator_list  */
  YYSYMBOL_struct_declarator = 144,        /* struct_declarator  */
  YYSYMBOL_enum_specifier = 145,           /* enum_specifier  */
  YYSYMBOL_enumerator_list = 146,          /* enumerator_list  */
  YYSYMBOL_enumerator = 147,               /* enumerator  */
  YYSYMBOL_pointer = 148,                  /* pointer  */
  YYSYMBOL_type_name = 149,                /* type_name  */
  YYSYMBOL_statement = 150,                /* statement  */
  YYSYMBOL_labeled_statement = 151,        /* labeled_statement  */
  YYSYMBOL_compound_statement = 152,       /* compound_statement  */
  YYSYMBOL_153_1 = 153,                    /* $@1  */
  YYSYMBOL_statement_list = 154,           /* statement_list  */
  YYSYMBOL_expression_statement = 155,     /* expression_statement  */
  YYSYMBOL_selection_statement = 156,      /* selection_statement  */
  YYSYMBOL_iteration_statement = 157,      /* iteration_statement  */
  YYSYMBOL_jump_statement = 158            /* jump_statement  */
};
typedef enum yysymbol_kind_t yysymbol_kind_t;



/* Unqualified %code blocks.  */
#line 87 "parser.y"

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

#line 294 "parser.tab.c"

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
#define YYFINAL  30
/* YYLAST -- Last index in YYTABLE.  */
#define YYLAST   1205

/* YYNTOKENS -- Number of terminals.  */
#define YYNTOKENS  86
/* YYNNTS -- Number of nonterminals.  */
#define YYNNTS  73
/* YYNRULES -- Number of rules.  */
#define YYNRULES  210
/* YYNSTATES -- Number of states.  */
#define YYNSTATES  351

/* YYMAXUTOK -- Last valid token kind.  */
#define YYMAXUTOK   340


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
      75,    76,    77,    78,    79,    80,    81,    82,    83,    84,
      85
};

#if YYDEBUG
/* YYRLINE[YYN] -- Source line where rule number YYN was defined.  */
static const yytype_int16 yyrline[] =
{
       0,   189,   189,   190,   201,   202,   203,   207,   208,   212,
     213,   243,   247,   248,   252,   256,   264,   268,   272,   276,
     280,   284,   289,   324,   340,   344,   352,   353,   361,   370,
     377,   382,   387,   407,   408,   413,   414,   415,   421,   422,
     423,   432,   433,   434,   438,   439,   459,   460,   464,   465,
     469,   480,   484,   485,   489,   490,   494,   498,   499,   500,
     501,   505,   506,   510,   511,   512,   513,   514,   515,   516,
     520,   527,   531,   532,   533,   545,   549,   552,   555,   558,
     561,   564,   567,   573,   574,   575,   576,   577,   578,   579,
     580,   584,   585,   589,   590,   591,   592,   593,   594,   598,
     599,   600,   601,   602,   603,   607,   608,   612,   613,   614,
     615,   619,   620,   621,   625,   626,   627,   631,   632,   633,
     634,   635,   639,   640,   641,   645,   646,   650,   651,   655,
     656,   660,   661,   665,   666,   670,   674,   675,   679,   680,
     681,   682,   683,   684,   685,   686,   687,   688,   689,   693,
     694,   698,   708,   712,   719,   720,   721,   725,   726,   730,
     734,   735,   736,   737,   741,   742,   746,   747,   748,   752,
     753,   754,   758,   759,   763,   764,   776,   781,   787,   791,
     802,   811,   812,   813,   814,   815,   816,   817,   825,   826,
     827,   834,   834,   838,   839,   840,   844,   845,   849,   850,
     851,   855,   856,   857,   858,   859,   863,   864,   865,   866,
     867
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
  "GOTO", "CLASS", "PUBLIC", "PRIVATE", "PROTECTED", "NULL_LITERAL",
  "INCREMENT", "DECREMENT", "ARROW", "LEFT_SHIFT", "RIGHT_SHIFT",
  "LOGICAL_AND", "LOGICAL_OR", "EQ", "NEQ", "LE", "GE", "PLUS", "MINUS",
  "STAR", "DIVIDE", "MOD", "ASSIGN", "LT", "GT", "LOGICAL_NOT", "BIT_AND",
  "BIT_OR", "BIT_XOR", "BIT_NOT", "DOT", "MUL_ASSIGN", "DIV_ASSIGN",
  "MOD_ASSIGN", "ADD_ASSIGN", "SUB_ASSIGN", "LEFT_ASSIGN", "RIGHT_ASSIGN",
  "AND_ASSIGN", "XOR_ASSIGN", "OR_ASSIGN", "COLON", "SEMICOLON", "COMMA",
  "LBRACE", "RBRACE", "LPAREN", "RPAREN", "LBRACKET", "RBRACKET", "STRUCT",
  "RETURN", "IDENTIFIER", "INT_LITERAL", "BOOLEAN_LITERAL",
  "FLOAT_LITERAL", "STRING_LITERAL", "CHAR_LITERAL", "TYPE_NAME", "ENUM",
  "UNION", "INVALID", "ELLIPSIS", "CONST", "$accept", "start",
  "global_declaration", "function_definition", "declaration",
  "return_types", "declaration_specifiers", "type_specifier",
  "type_qualifier", "init_declarator_list", "init_declarator",
  "declarator", "direct_declarator", "fun_declarator",
  "fun_direct_declarator", "declaration_list", "initializer",
  "initializer_list", "parameter_type_list", "parameter_list",
  "parameter_declaration", "class_declaration", "opt_base_clause",
  "base_specifier_list", "base_specifier", "opt_access_specifier",
  "class_body", "member_declaration", "constructor_declaration",
  "destructor_declaration", "access_label", "primary_expression",
  "postfix_expression", "argument_expression_list", "unary_expression",
  "unary_operator", "cast_expression", "multiplicative_expression",
  "additive_expression", "shift_expression", "relational_expression",
  "equality_expression", "and_expression", "exclusive_or_expression",
  "inclusive_or_expression", "logical_and_expression",
  "logical_or_expression", "conditional_expression",
  "assignment_expression", "assignment_operator", "expression",
  "constant_expression", "struct_or_union_specifier", "struct_or_union",
  "struct_declaration_list", "struct_declaration",
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

#define YYPACT_NINF (-255)

#define yypact_value_is_default(Yyn) \
  ((Yyn) == YYPACT_NINF)

#define YYTABLE_NINF (-196)

#define yytable_value_is_error(Yyn) \
  0

/* YYPACT[STATE-NUM] -- Index in YYTABLE of the portion describing
   STATE-NUM.  */
static const yytype_int16 yypact[] =
{
     547,  -255,  -255,  -255,  -255,  -255,   591,   -23,  -255,   -46,
    -255,   100,     9,  -255,  -255,  -255,     8,  -255,  -255,  -255,
    -255,    -9,  -255,  -255,   100,  -255,    14,    -3,    17,  -255,
    -255,  -255,   -30,  -255,  -255,    46,    37,  -255,   112,    50,
     -33,  -255,    84,    99,  -255,   205,   105,   161,    -8,  -255,
      -3,  -255,  -255,   508,  -255,    76,   830,     5,  -255,  -255,
    -255,    50,  -255,   619,  -255,  -255,  -255,   111,  -255,   126,
    -255,  1042,    -3,  -255,    -5,  -255,    76,   120,    20,  -255,
    -255,  -255,   139,  1084,  -255,  1126,  1126,  -255,  -255,  -255,
    -255,  -255,  -255,   830,   497,  -255,  -255,  -255,  -255,  -255,
    -255,  -255,  -255,    40,   184,  1042,  -255,   237,   -17,   152,
     124,   156,   169,   185,   208,   200,   234,  -255,  -255,  -255,
     222,   580,  -255,   619,   619,    92,  -255,     4,   205,  -255,
     248,  -255,  -255,  -255,  -255,  -255,  -255,  -255,   536,  -255,
     497,  -255,  1042,  -255,  -255,  -255,    88,  -255,    47,  -255,
     228,  -255,  -255,   224,   226,   872,  1042,  -255,  -255,  -255,
    -255,  -255,  -255,  -255,  -255,  -255,  -255,  -255,  1042,  -255,
    1042,  1042,  1042,  1042,  1042,  1042,  1042,  1042,  1042,  1042,
    1042,  1042,  1042,  1042,  1042,  1042,  1042,  1042,  -255,  -255,
      45,   414,  -255,  -255,  -255,  -255,  1042,   238,   162,  -255,
    -255,   239,   236,   240,   241,   746,   242,   243,   247,   245,
    1042,   254,   231,   255,   256,   265,   232,  -255,   267,   915,
     -21,  -255,  -255,  -255,  -255,  -255,  -255,  -255,   183,  -255,
    -255,  -255,   331,  -255,  -255,  -255,  -255,  -255,  -255,   233,
     788,  -255,  1042,  -255,  1042,  -255,  -255,  -255,    56,  -255,
     -31,  -255,  -255,  -255,  -255,   237,   237,   -17,   -17,   152,
     152,   152,   152,   124,   124,   156,   169,   185,   208,   200,
     277,  -255,   667,  -255,  1042,  -255,     4,  -255,  1042,   957,
    1042,   340,  1042,  -255,  -255,  1042,   298,   746,   299,  -255,
    -255,  -255,   294,  -255,  -255,   217,   746,   580,  -255,  -255,
    -255,  -255,  -255,  -255,  -255,  1042,  -255,  -255,  -255,  -255,
    -255,    57,   957,    98,   296,   129,   132,   746,  -255,  -255,
     297,  -255,  -255,   142,  -255,   746,   999,   746,  1042,   746,
     746,  -255,   301,   580,   301,   356,   746,   145,  -255,   147,
    -255,  -255,  -255,  -255,   746,  -255,   746,   304,  -255,  -255,
    -255
};

/* YYDEFACT[STATE-NUM] -- Default reduction number in state STATE-NUM.
   Performed when YYTABLE does not specify something else to do.  Zero
   means the default is an error.  */
static const yytype_uint8 yydefact[] =
{
       0,    18,    20,    17,    16,    19,     0,     0,   154,     0,
     155,     0,     0,     2,     4,     5,     0,    11,    12,     6,
      21,     0,    22,   156,     0,    13,    52,     0,   171,    14,
       1,     3,   176,   179,     9,    30,     0,    24,    26,    29,
       0,    34,     0,   153,    15,    57,     0,   174,     0,   172,
       0,   177,   178,     0,    10,     0,     0,     0,     8,   191,
       7,    28,    33,     0,    58,    60,    59,    53,    54,     0,
      61,     0,     0,   169,     0,    36,     0,     0,     0,    48,
      30,    25,     0,     0,    80,     0,     0,   101,   102,   100,
     104,    99,   103,     0,     0,    75,    76,    81,    77,    79,
      78,    27,    83,    93,   105,     0,   107,   111,   114,   117,
     122,   125,   127,   129,   131,   133,   135,   136,    41,    32,
       0,    40,    23,   161,   163,     0,   157,     0,    57,    56,
       0,   105,   151,   175,   173,   170,    50,    37,     0,    35,
       0,    97,     0,    94,    95,    44,     0,   149,     0,   180,
       0,    89,    90,     0,     0,     0,     0,   138,   139,   140,
     141,   142,   143,   144,   145,   146,   147,   148,     0,    96,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    31,    38,
       0,     0,   160,   162,   152,   158,     0,   166,     0,   164,
      55,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,   103,   196,     0,     0,
      75,    65,    63,    67,    62,    68,    69,    66,     0,   193,
     181,   182,     0,   183,   184,   185,   186,    47,    49,     0,
       0,    42,     0,    82,     0,    88,    87,    85,     0,    91,
       0,   137,   108,   109,   110,   112,   113,   115,   116,   120,
     121,   118,   119,   123,   124,   126,   128,   130,   132,   134,
      75,    39,     0,   167,     0,   159,     0,   187,     0,     0,
       0,     0,     0,   208,   207,     0,     0,     0,     0,    72,
      74,    73,     0,    51,   209,     0,     0,     0,   197,   194,
      98,    43,    45,   150,   106,     0,    86,    84,   192,   168,
     165,     0,     0,     0,     0,     0,     0,     0,   190,   206,
       0,   210,   188,     0,    92,     0,     0,     0,     0,     0,
       0,   189,     0,     0,     0,   198,     0,     0,   201,     0,
     202,   200,    71,    70,     0,   204,     0,     0,   199,   205,
     203
};

/* YYPGOTO[NTERM-NUM].  */
static const yytype_int16 yypgoto[] =
{
    -255,  -255,   357,   244,  -104,    27,  -255,    55,  -255,  -255,
     318,   -73,   -36,  -255,   333,  -255,   -88,  -255,  -255,    79,
    -134,   250,  -255,  -255,   249,  -255,  -255,  -255,  -255,  -255,
    -255,  -255,  -255,  -255,   -42,  -255,   -97,   110,   115,    42,
     104,   198,   199,   201,   202,   197,  -255,   -50,   -55,  -255,
     -92,  -186,  -255,  -255,  -255,   260,   -87,  -255,   113,  -255,
     337,   319,     3,   252,  -121,  -255,   -40,  -255,   203,  -254,
    -255,  -255,  -255
};

/* YYDEFGOTO[NTERM-NUM].  */
static const yytype_uint8 yydefgoto[] =
{
       0,    12,    13,    14,    15,    76,    17,    18,   124,    36,
      37,    38,    39,    40,    41,   191,   101,   146,    77,    78,
      79,    19,    46,    67,    68,    69,   130,   224,   225,   226,
     227,   102,   103,   248,   104,   105,   106,   107,   108,   109,
     110,   111,   112,   113,   114,   115,   116,   117,   147,   168,
     228,   133,    20,    21,   125,   126,   127,   198,   199,    22,
      48,    49,    82,   150,   229,   230,   231,   121,   232,   233,
     234,   235,   236
};

/* YYTABLE[YYPACT[STATE-NUM]] -- What to do in state STATE-NUM.  If
   positive, shift that token.  If negative, reduce the rule whose
   number is the opposite.  If YYTABLE_NINF, syntax error.  */
static const yytype_int16 yytable[] =
{
      60,   118,   148,   136,   238,   145,    61,   149,   169,    30,
     273,    32,     1,     2,     3,     4,     5,   189,    33,    42,
      27,   132,   173,   174,   286,   312,   222,    16,    28,   131,
       6,    58,     7,    59,   242,    52,   192,   193,   118,    16,
     307,   141,   296,   143,   144,    32,    61,   297,   148,    32,
     148,    26,    33,   149,   197,    51,    33,    72,   326,    73,
      72,    25,   135,   131,   250,    43,    29,   196,   151,   152,
     153,    47,    34,   252,   253,   254,   119,    45,    80,    44,
     120,     8,    35,    50,   281,   138,    32,   271,   309,   139,
       9,    10,   154,    33,    11,     1,     2,     3,     4,     5,
     249,    54,    55,     1,     2,     3,     4,     5,   155,    34,
     156,   299,   242,   251,    53,    23,   243,    32,   123,    80,
      57,   305,   242,    23,    33,   306,   325,   295,   131,   131,
     131,   131,   131,   131,   131,   131,   131,   131,   131,   131,
     131,   131,   131,   131,   131,   131,   132,   304,   190,   123,
      80,   299,   302,   240,   131,   241,    56,    16,    35,   194,
     132,   177,   178,   242,     8,    63,   318,   327,   131,   179,
     180,    70,     8,     9,    10,   322,   128,   122,   123,   123,
     123,     9,    10,   175,   176,   118,   311,   303,   313,   137,
     315,   181,   182,   316,   242,   123,   331,   242,   329,   238,
     129,   330,   131,   197,   335,    71,   338,   333,   340,   341,
     242,   334,   242,    80,   346,   345,   347,   183,   190,   259,
     260,   261,   262,   348,   132,   349,   275,   276,   157,    64,
      65,    66,   131,   186,   337,   184,   339,   158,   159,   160,
     161,   162,   163,   164,   165,   166,   167,   298,   242,   201,
     324,     1,     2,     3,     4,     5,   202,   185,   203,   204,
     205,   206,   207,   208,   209,   210,   211,    83,   187,     6,
     212,     7,   213,   214,   215,    84,    85,    86,   170,   171,
     172,   321,   242,   255,   256,   263,   264,    87,    88,    89,
     257,   258,   342,   188,   343,    90,    91,   244,   245,   216,
     246,   274,   300,   277,   278,   288,   292,   283,   279,   280,
     282,   284,   217,   285,    59,   218,    94,   287,   289,   290,
       8,   219,   220,    96,    97,    98,    99,   100,   291,     9,
      10,   293,   201,    11,   -64,   -64,   -64,   -64,   -64,   202,
     296,   203,   204,   205,   206,   207,   208,   209,   210,   211,
      83,   314,   -64,   212,   -64,   -64,   -64,   -64,    84,    85,
      86,   317,   320,   319,   328,   344,   332,    59,   350,    31,
      87,    88,    89,    81,   221,    62,   323,   200,    90,    91,
     223,   265,    92,   266,   269,   195,   267,    74,   268,   310,
       0,   134,   239,     0,   272,   217,     0,    59,   -64,    94,
       0,     0,     0,   -64,   219,   270,    96,    97,    98,    99,
     100,     0,   -64,   -64,     0,   201,   -64,     1,     2,     3,
       4,     5,   202,     0,   203,   204,   205,   206,   207,   208,
     209,   210,   211,    83,     0,     6,   212,    23,     0,     0,
       0,    84,    85,    86,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    87,    88,    89,     0,     0,     0,     0,
       0,    90,    91,     0,     0,    92,     0,     0,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,   217,     0,
      59,  -195,    94,     0,     0,     0,     8,   219,   270,    96,
      97,    98,    99,   100,     0,     9,    10,     0,     0,    11,
       1,     2,     3,     4,     5,     0,     0,     0,     0,     0,
       0,     1,     2,     3,     4,     5,    83,     0,     0,     0,
      23,     0,     0,     0,    84,    85,    86,     0,     0,     6,
       0,    23,     0,     0,     0,     0,    87,    88,    89,     1,
       2,     3,     4,     5,    90,    91,     0,     0,    92,     0,
       1,     2,     3,     4,     5,     0,     0,     6,     0,    23,
       0,     0,     0,     0,     0,    94,     0,     0,     6,     8,
       7,    95,    96,    97,    98,    99,   100,    75,     9,    10,
       8,     0,   122,     1,     2,     3,     4,     5,     0,     9,
      10,     0,     0,    11,     1,     2,     3,     4,     5,     0,
       0,     6,     0,    23,     0,     0,     0,     0,     8,     0,
       0,     0,     0,     0,    23,     0,     0,     9,    10,     8,
     237,    11,     1,     2,     3,     4,     5,     0,     9,    10,
       0,     0,    11,     0,     0,     0,     0,     0,     0,     0,
       0,     0,    23,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     8,     0,     0,     0,     0,     0,     0,     0,
       0,     9,    10,     8,     0,    11,     0,     0,   201,     0,
       0,     0,     9,    10,     0,   202,    24,   203,   204,   205,
     206,   207,   208,   209,   210,   211,    83,     0,     0,   212,
       0,     8,     0,     0,    84,    85,    86,     0,     0,     0,
       9,    10,     0,     0,   122,     0,    87,    88,    89,     0,
       0,     0,     0,     0,    90,    91,     0,     0,    92,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,   217,     0,    59,   308,    94,     0,     0,     0,     0,
     219,   270,    96,    97,    98,    99,   100,   201,     0,     0,
       0,     0,     0,     0,   202,     0,   203,   204,   205,   206,
     207,   208,   209,   210,   211,    83,     0,     0,   212,     0,
       0,     0,     0,    84,    85,    86,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    87,    88,    89,     0,     0,
       0,     0,     0,    90,    91,     0,     0,    92,     0,     0,
       0,     0,     0,     0,     0,     0,     0,    83,     0,     0,
     217,     0,    59,     0,    94,    84,    85,    86,     0,   219,
     270,    96,    97,    98,    99,   100,     0,    87,    88,    89,
       0,     0,     0,     0,     0,    90,    91,     0,     0,    92,
       0,     0,     0,     0,     0,     0,     0,     0,     0,    83,
       0,     0,     0,     0,    93,   301,    94,    84,    85,    86,
       0,     0,    95,    96,    97,    98,    99,   100,     0,    87,
      88,    89,     0,     0,     0,     0,     0,    90,    91,     0,
       0,    92,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    83,     0,     0,     0,     0,    93,     0,    94,    84,
      85,    86,     0,     0,    95,    96,    97,    98,    99,   100,
       0,    87,    88,    89,     0,     0,     0,     0,     0,    90,
      91,     0,     0,    92,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,    83,     0,     0,     0,     0,     0,
      94,   247,    84,    85,    86,     0,    95,    96,    97,    98,
      99,   100,     0,     0,    87,    88,    89,     0,     0,     0,
       0,     0,    90,    91,     0,     0,    92,     0,     0,     0,
       0,     0,     0,     0,     0,     0,    83,     0,     0,   294,
       0,     0,     0,    94,    84,    85,    86,     0,     0,    95,
      96,    97,    98,    99,   100,     0,    87,    88,    89,     0,
       0,     0,     0,     0,    90,    91,     0,     0,    92,     0,
       0,     0,     0,     0,     0,     0,     0,     0,    83,     0,
       0,   217,     0,     0,     0,    94,    84,    85,    86,     0,
       0,    95,    96,    97,    98,    99,   100,     0,    87,    88,
      89,     0,     0,     0,     0,     0,    90,    91,     0,     0,
      92,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,    83,     0,     0,     0,     0,     0,    94,   336,    84,
      85,    86,     0,    95,    96,    97,    98,    99,   100,     0,
       0,    87,    88,    89,     0,     0,     0,     0,     0,    90,
      91,     0,     0,    92,     0,     0,     0,     0,     0,     0,
       0,     0,     0,    83,     0,     0,     0,     0,     0,     0,
      94,    84,    85,    86,     0,     0,    95,    96,    97,    98,
      99,   100,     0,    87,    88,    89,     0,     0,     0,     0,
       0,    90,    91,     0,     0,    92,     0,     0,     0,     0,
       0,     0,     0,     0,     0,    83,     0,     0,     0,     0,
       0,     0,   140,    84,    85,    86,     0,     0,    95,    96,
      97,    98,    99,   100,     0,    87,    88,    89,     0,     0,
       0,     0,     0,    90,    91,     0,     0,    92,     0,     0,
       0,     0,     0,     0,     0,     0,     0,     0,     0,     0,
       0,     0,     0,     0,   142,     0,     0,     0,     0,     0,
      95,    96,    97,    98,    99,   100
};

static const yytype_int16 yycheck[] =
{
      40,    56,    94,    76,   138,    93,    42,    94,   105,     0,
     196,    41,     3,     4,     5,     6,     7,   121,    48,    16,
      66,    71,    39,    40,   210,   279,   130,     0,    74,    71,
      21,    64,    23,    66,    65,    32,   123,   124,    93,    12,
      71,    83,    63,    85,    86,    41,    82,    68,   140,    41,
     142,    74,    48,   140,   127,    85,    48,    65,   312,    67,
      65,     6,    67,   105,   156,    74,    11,    63,    28,    29,
      30,    74,    64,   170,   171,   172,    71,    63,    74,    24,
      75,    72,    74,    66,   205,    65,    41,   191,   274,    69,
      81,    82,    52,    48,    85,     3,     4,     5,     6,     7,
     155,    64,    65,     3,     4,     5,     6,     7,    68,    64,
      70,   232,    65,   168,    68,    23,    69,    41,    63,    74,
      70,    65,    65,    23,    48,    69,    69,   219,   170,   171,
     172,   173,   174,   175,   176,   177,   178,   179,   180,   181,
     182,   183,   184,   185,   186,   187,   196,   244,   121,    94,
      74,   272,   240,    65,   196,    67,    44,   130,    74,    67,
     210,    37,    38,    65,    72,    66,   287,    69,   210,    45,
      46,    66,    72,    81,    82,   296,    65,    85,   123,   124,
     125,    81,    82,    31,    32,   240,   278,   242,   280,    69,
     282,    35,    36,   285,    65,   140,   317,    65,    69,   333,
      74,    69,   244,   276,   325,    44,   327,    65,   329,   330,
      65,    69,    65,    74,    69,   336,    69,    48,   191,   177,
     178,   179,   180,   344,   274,   346,    64,    65,    44,    24,
      25,    26,   274,    33,   326,    50,   328,    53,    54,    55,
      56,    57,    58,    59,    60,    61,    62,    64,    65,     1,
     305,     3,     4,     5,     6,     7,     8,    49,    10,    11,
      12,    13,    14,    15,    16,    17,    18,    19,    34,    21,
      22,    23,    24,    25,    26,    27,    28,    29,    41,    42,
      43,    64,    65,   173,   174,   181,   182,    39,    40,    41,
     175,   176,   332,    71,   334,    47,    48,    69,    74,    51,
      74,    63,    69,    64,    68,    74,    74,    64,    68,    68,
      68,    64,    64,    68,    66,    67,    68,    63,    63,    63,
      72,    73,    74,    75,    76,    77,    78,    79,    63,    81,
      82,    64,     1,    85,     3,     4,     5,     6,     7,     8,
      63,    10,    11,    12,    13,    14,    15,    16,    17,    18,
      19,    11,    21,    22,    23,    24,    25,    26,    27,    28,
      29,    63,    68,    64,    68,     9,    69,    66,    64,    12,
      39,    40,    41,    55,   130,    42,   297,   128,    47,    48,
     130,   183,    51,   184,   187,   125,   185,    50,   186,   276,
      -1,    72,   140,    -1,   191,    64,    -1,    66,    67,    68,
      -1,    -1,    -1,    72,    73,    74,    75,    76,    77,    78,
      79,    -1,    81,    82,    -1,     1,    85,     3,     4,     5,
       6,     7,     8,    -1,    10,    11,    12,    13,    14,    15,
      16,    17,    18,    19,    -1,    21,    22,    23,    -1,    -1,
      -1,    27,    28,    29,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    39,    40,    41,    -1,    -1,    -1,    -1,
      -1,    47,    48,    -1,    -1,    51,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    64,    -1,
      66,    67,    68,    -1,    -1,    -1,    72,    73,    74,    75,
      76,    77,    78,    79,    -1,    81,    82,    -1,    -1,    85,
       3,     4,     5,     6,     7,    -1,    -1,    -1,    -1,    -1,
      -1,     3,     4,     5,     6,     7,    19,    -1,    -1,    -1,
      23,    -1,    -1,    -1,    27,    28,    29,    -1,    -1,    21,
      -1,    23,    -1,    -1,    -1,    -1,    39,    40,    41,     3,
       4,     5,     6,     7,    47,    48,    -1,    -1,    51,    -1,
       3,     4,     5,     6,     7,    -1,    -1,    21,    -1,    23,
      -1,    -1,    -1,    -1,    -1,    68,    -1,    -1,    21,    72,
      23,    74,    75,    76,    77,    78,    79,    69,    81,    82,
      72,    -1,    85,     3,     4,     5,     6,     7,    -1,    81,
      82,    -1,    -1,    85,     3,     4,     5,     6,     7,    -1,
      -1,    21,    -1,    23,    -1,    -1,    -1,    -1,    72,    -1,
      -1,    -1,    -1,    -1,    23,    -1,    -1,    81,    82,    72,
      84,    85,     3,     4,     5,     6,     7,    -1,    81,    82,
      -1,    -1,    85,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    23,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    72,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    81,    82,    72,    -1,    85,    -1,    -1,     1,    -1,
      -1,    -1,    81,    82,    -1,     8,    85,    10,    11,    12,
      13,    14,    15,    16,    17,    18,    19,    -1,    -1,    22,
      -1,    72,    -1,    -1,    27,    28,    29,    -1,    -1,    -1,
      81,    82,    -1,    -1,    85,    -1,    39,    40,    41,    -1,
      -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    51,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    64,    -1,    66,    67,    68,    -1,    -1,    -1,    -1,
      73,    74,    75,    76,    77,    78,    79,     1,    -1,    -1,
      -1,    -1,    -1,    -1,     8,    -1,    10,    11,    12,    13,
      14,    15,    16,    17,    18,    19,    -1,    -1,    22,    -1,
      -1,    -1,    -1,    27,    28,    29,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    39,    40,    41,    -1,    -1,
      -1,    -1,    -1,    47,    48,    -1,    -1,    51,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    19,    -1,    -1,
      64,    -1,    66,    -1,    68,    27,    28,    29,    -1,    73,
      74,    75,    76,    77,    78,    79,    -1,    39,    40,    41,
      -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    51,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    19,
      -1,    -1,    -1,    -1,    66,    67,    68,    27,    28,    29,
      -1,    -1,    74,    75,    76,    77,    78,    79,    -1,    39,
      40,    41,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,
      -1,    51,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    19,    -1,    -1,    -1,    -1,    66,    -1,    68,    27,
      28,    29,    -1,    -1,    74,    75,    76,    77,    78,    79,
      -1,    39,    40,    41,    -1,    -1,    -1,    -1,    -1,    47,
      48,    -1,    -1,    51,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    19,    -1,    -1,    -1,    -1,    -1,
      68,    69,    27,    28,    29,    -1,    74,    75,    76,    77,
      78,    79,    -1,    -1,    39,    40,    41,    -1,    -1,    -1,
      -1,    -1,    47,    48,    -1,    -1,    51,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    19,    -1,    -1,    64,
      -1,    -1,    -1,    68,    27,    28,    29,    -1,    -1,    74,
      75,    76,    77,    78,    79,    -1,    39,    40,    41,    -1,
      -1,    -1,    -1,    -1,    47,    48,    -1,    -1,    51,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    19,    -1,
      -1,    64,    -1,    -1,    -1,    68,    27,    28,    29,    -1,
      -1,    74,    75,    76,    77,    78,    79,    -1,    39,    40,
      41,    -1,    -1,    -1,    -1,    -1,    47,    48,    -1,    -1,
      51,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    19,    -1,    -1,    -1,    -1,    -1,    68,    69,    27,
      28,    29,    -1,    74,    75,    76,    77,    78,    79,    -1,
      -1,    39,    40,    41,    -1,    -1,    -1,    -1,    -1,    47,
      48,    -1,    -1,    51,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    19,    -1,    -1,    -1,    -1,    -1,    -1,
      68,    27,    28,    29,    -1,    -1,    74,    75,    76,    77,
      78,    79,    -1,    39,    40,    41,    -1,    -1,    -1,    -1,
      -1,    47,    48,    -1,    -1,    51,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    19,    -1,    -1,    -1,    -1,
      -1,    -1,    68,    27,    28,    29,    -1,    -1,    74,    75,
      76,    77,    78,    79,    -1,    39,    40,    41,    -1,    -1,
      -1,    -1,    -1,    47,    48,    -1,    -1,    51,    -1,    -1,
      -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,    -1,
      -1,    -1,    -1,    -1,    68,    -1,    -1,    -1,    -1,    -1,
      74,    75,    76,    77,    78,    79
};

/* YYSTOS[STATE-NUM] -- The symbol kind of the accessing symbol of
   state STATE-NUM.  */
static const yytype_uint8 yystos[] =
{
       0,     3,     4,     5,     6,     7,    21,    23,    72,    81,
      82,    85,    87,    88,    89,    90,    91,    92,    93,   107,
     138,   139,   145,    23,    85,    93,    74,    66,    74,    93,
       0,    88,    41,    48,    64,    74,    95,    96,    97,    98,
      99,   100,   148,    74,    93,    63,   108,    74,   146,   147,
      66,    85,   148,    68,    64,    65,    44,    70,    64,    66,
     152,    98,   100,    66,    24,    25,    26,   109,   110,   111,
      66,    44,    65,    67,   146,    69,    91,   104,   105,   106,
      74,    96,   148,    19,    27,    28,    29,    39,    40,    41,
      47,    48,    51,    66,    68,    74,    75,    76,    77,    78,
      79,   102,   117,   118,   120,   121,   122,   123,   124,   125,
     126,   127,   128,   129,   130,   131,   132,   133,   134,    71,
      75,   153,    85,    93,    94,   140,   141,   142,    65,    74,
     112,   120,   133,   137,   147,    67,    97,    69,    65,    69,
      68,   120,    68,   120,   120,   102,   103,   134,   136,   142,
     149,    28,    29,    30,    52,    68,    70,    44,    53,    54,
      55,    56,    57,    58,    59,    60,    61,    62,   135,   122,
      41,    42,    43,    39,    40,    31,    32,    37,    38,    45,
      46,    35,    36,    48,    50,    49,    33,    34,    71,    90,
      91,   101,   142,   142,    67,   141,    63,    97,   143,   144,
     110,     1,     8,    10,    11,    12,    13,    14,    15,    16,
      17,    18,    22,    24,    25,    26,    51,    64,    67,    73,
      74,    89,    90,   107,   113,   114,   115,   116,   136,   150,
     151,   152,   154,   155,   156,   157,   158,    84,   106,   149,
      65,    67,    65,    69,    69,    74,    74,    69,   119,   134,
     136,   134,   122,   122,   122,   123,   123,   124,   124,   125,
     125,   125,   125,   126,   126,   127,   128,   129,   130,   131,
      74,    90,   154,   137,    63,    64,    65,    64,    68,    68,
      68,   150,    68,    64,    64,    68,   137,    63,    74,    63,
      63,    63,    74,    64,    64,   136,    63,    68,    64,   150,
      69,    67,   102,   134,   122,    65,    69,    71,    67,   137,
     144,   136,   155,   136,    11,   136,   136,    63,   150,    64,
      68,    64,   150,   105,   134,    69,   155,    69,    68,    69,
      69,   150,    69,    65,    69,   150,    69,   136,   150,   136,
     150,   150,   152,   152,     9,   150,    69,    69,   150,   150,
      64
};

/* YYR1[RULE-NUM] -- Symbol kind of the left-hand side of rule RULE-NUM.  */
static const yytype_uint8 yyr1[] =
{
       0,    86,    87,    87,    88,    88,    88,    89,    89,    90,
      90,    91,    92,    92,    92,    92,    93,    93,    93,    93,
      93,    93,    93,    94,    95,    95,    96,    96,    97,    97,
      98,    98,    98,    99,    99,   100,   100,   100,   101,   101,
     101,   102,   102,   102,   103,   103,   104,   104,   105,   105,
     106,   107,   108,   108,   109,   109,   110,   111,   111,   111,
     111,   112,   112,   113,   113,   113,   113,   113,   113,   113,
     114,   115,   116,   116,   116,   117,   117,   117,   117,   117,
     117,   117,   117,   118,   118,   118,   118,   118,   118,   118,
     118,   119,   119,   120,   120,   120,   120,   120,   120,   121,
     121,   121,   121,   121,   121,   122,   122,   123,   123,   123,
     123,   124,   124,   124,   125,   125,   125,   126,   126,   126,
     126,   126,   127,   127,   127,   128,   128,   129,   129,   130,
     130,   131,   131,   132,   132,   133,   134,   134,   135,   135,
     135,   135,   135,   135,   135,   135,   135,   135,   135,   136,
     136,   137,   138,   138,   139,   139,   139,   140,   140,   141,
     142,   142,   142,   142,   143,   143,   144,   144,   144,   145,
     145,   145,   146,   146,   147,   147,   148,   148,   148,   148,
     149,   150,   150,   150,   150,   150,   150,   150,   151,   151,
     151,   153,   152,   154,   154,   154,   155,   155,   156,   156,
     156,   157,   157,   157,   157,   157,   158,   158,   158,   158,
     158
};

/* YYR2[RULE-NUM] -- Number of symbols on the right-hand side of rule RULE-NUM.  */
static const yytype_int8 yyr2[] =
{
       0,     2,     1,     2,     1,     1,     1,     3,     3,     2,
       3,     1,     1,     2,     2,     3,     1,     1,     1,     1,
       1,     1,     1,     1,     1,     3,     1,     3,     2,     1,
       1,     4,     3,     2,     1,     4,     3,     4,     1,     2,
       0,     1,     3,     4,     1,     3,     1,     3,     1,     3,
       2,     7,     0,     2,     1,     3,     2,     0,     1,     1,
       1,     0,     2,     1,     1,     1,     1,     1,     1,     1,
       5,     5,     2,     2,     2,     1,     1,     1,     1,     1,
       1,     1,     3,     1,     4,     3,     4,     3,     3,     2,
       2,     1,     3,     1,     2,     2,     2,     2,     4,     1,
       1,     1,     1,     1,     1,     1,     4,     1,     3,     3,
       3,     1,     3,     3,     1,     3,     3,     1,     3,     3,
       3,     3,     1,     3,     3,     1,     3,     1,     3,     1,
       3,     1,     3,     1,     3,     1,     1,     3,     1,     1,
       1,     1,     1,     1,     1,     1,     1,     1,     1,     1,
       3,     1,     5,     2,     1,     1,     1,     1,     2,     3,
       2,     1,     2,     1,     1,     3,     1,     2,     3,     4,
       5,     2,     1,     3,     1,     3,     1,     2,     2,     1,
       1,     1,     1,     1,     1,     1,     1,     2,     3,     4,
       3,     0,     5,     1,     2,     0,     1,     2,     5,     7,
       5,     5,     5,     7,     6,     7,     3,     2,     2,     2,
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
  case 9: /* declaration: return_types SEMICOLON  */
#line 212 "parser.y"
                                 { delete (yyvsp[-1].typeinfo); }
#line 1701 "parser.tab.c"
    break;

  case 10: /* declaration: return_types init_declarator_list SEMICOLON  */
#line 213 "parser.y"
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
			
			insert_symbol(declInfo->name, combinedType, declInfo->initValue);
			delete declInfo;
		}
		delete (yyvsp[-2].typeinfo);
		delete (yyvsp[-1].decllist);
	}
#line 1725 "parser.tab.c"
    break;

  case 11: /* return_types: declaration_specifiers  */
#line 243 "parser.y"
                                 { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1731 "parser.tab.c"
    break;

  case 12: /* declaration_specifiers: type_specifier  */
#line 247 "parser.y"
                         { (yyval.typeinfo) = (yyvsp[0].typeinfo); }
#line 1737 "parser.tab.c"
    break;

  case 13: /* declaration_specifiers: STATIC type_specifier  */
#line 248 "parser.y"
                                { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
	}
#line 1746 "parser.tab.c"
    break;

  case 14: /* declaration_specifiers: CONST type_specifier  */
#line 252 "parser.y"
                               { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isConst = true;
	}
#line 1755 "parser.tab.c"
    break;

  case 15: /* declaration_specifiers: STATIC CONST type_specifier  */
#line 256 "parser.y"
                                      { 
		(yyval.typeinfo) = (yyvsp[0].typeinfo);
		(yyval.typeinfo)->isStatic = true;
		(yyval.typeinfo)->isConst = true;
	}
#line 1765 "parser.tab.c"
    break;

  case 16: /* type_specifier: VOID  */
#line 264 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "void"; 
    }
#line 1774 "parser.tab.c"
    break;

  case 17: /* type_specifier: CHAR  */
#line 268 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "char"; 
    }
#line 1783 "parser.tab.c"
    break;

  case 18: /* type_specifier: INT  */
#line 272 "parser.y"
          { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "int"; 
    }
#line 1792 "parser.tab.c"
    break;

  case 19: /* type_specifier: BOOL  */
#line 276 "parser.y"
           { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "bool"; 
    }
#line 1801 "parser.tab.c"
    break;

  case 20: /* type_specifier: FLOAT  */
#line 280 "parser.y"
            { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "float"; 
    }
#line 1810 "parser.tab.c"
    break;

  case 21: /* type_specifier: struct_or_union_specifier  */
#line 284 "parser.y"
                                { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = *(yyvsp[0].sval);
        delete (yyvsp[0].sval);
    }
#line 1820 "parser.tab.c"
    break;

  case 22: /* type_specifier: enum_specifier  */
#line 289 "parser.y"
                     { 
        (yyval.typeinfo) = new TypeInfo(); 
        (yyval.typeinfo)->baseType = "enum"; 
    }
#line 1829 "parser.tab.c"
    break;

  case 23: /* type_qualifier: CONST  */
#line 324 "parser.y"
                { 
		(yyval.typeinfo) = new TypeInfo(); 
		(yyval.typeinfo)->isConst = true; 
	}
#line 1838 "parser.tab.c"
    break;

  case 24: /* init_declarator_list: init_declarator  */
#line 340 "parser.y"
                      { 
        (yyval.decllist) = new vector<DeclaratorInfo*>();
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1847 "parser.tab.c"
    break;

  case 25: /* init_declarator_list: init_declarator_list COMMA init_declarator  */
#line 344 "parser.y"
                                                 {
        (yyval.decllist) = (yyvsp[-2].decllist);
        (yyval.decllist)->push_back((yyvsp[0].declinfo));
    }
#line 1856 "parser.tab.c"
    break;

  case 26: /* init_declarator: declarator  */
#line 352 "parser.y"
                     { (yyval.declinfo) = (yyvsp[0].declinfo); }
#line 1862 "parser.tab.c"
    break;

  case 27: /* init_declarator: declarator ASSIGN initializer  */
#line 353 "parser.y"
                                        { 
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->initValue = "initialized";  // For now, just mark as initialized
	}
#line 1871 "parser.tab.c"
    break;

  case 28: /* declarator: pointer direct_declarator  */
#line 361 "parser.y"
                                    {                                 /* e.g., *p or int *p */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
		// Combine pointer info with declarator info
		(yyval.declinfo)->isPointer = (yyvsp[-1].typeinfo)->isPointer || (yyval.declinfo)->isPointer;
		(yyval.declinfo)->pointerCount += (yyvsp[-1].typeinfo)->pointerCount;
		(yyval.declinfo)->isReference = (yyvsp[-1].typeinfo)->isReference || (yyval.declinfo)->isReference;
		(yyval.declinfo)->isConstPointer = (yyvsp[-1].typeinfo)->isConstPointer || (yyval.declinfo)->isConstPointer;
		delete (yyvsp[-1].typeinfo);
	}
#line 1885 "parser.tab.c"
    break;

  case 29: /* declarator: direct_declarator  */
#line 370 "parser.y"
                            {                                         /* e.g., x */ 
		(yyval.declinfo) = (yyvsp[0].declinfo);
	}
#line 1893 "parser.tab.c"
    break;

  case 30: /* direct_declarator: IDENTIFIER  */
#line 377 "parser.y"
                     {                                                 /* e.g., x */  
		(yyval.declinfo) = new DeclaratorInfo();
		(yyval.declinfo)->name = *(yyvsp[0].sval);
		delete (yyvsp[0].sval);
	}
#line 1903 "parser.tab.c"
    break;

  case 31: /* direct_declarator: direct_declarator LBRACKET INT_LITERAL RBRACKET  */
#line 382 "parser.y"
                                                          {     /* e.g., arr[10] */
		(yyval.declinfo) = (yyvsp[-3].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back((yyvsp[-1].ival));  // Direct integer literal
	}
#line 1913 "parser.tab.c"
    break;

  case 32: /* direct_declarator: direct_declarator LBRACKET RBRACKET  */
#line 387 "parser.y"
                                              {                        /* e.g., arr[] */
		(yyval.declinfo) = (yyvsp[-2].declinfo);
		(yyval.declinfo)->isArray = true;
		(yyval.declinfo)->arrayDimensions.push_back(-1);  // -1 indicates unknown size
	}
#line 1923 "parser.tab.c"
    break;

  case 75: /* primary_expression: IDENTIFIER  */
#line 545 "parser.y"
                 { 
        check_variable_declaration(*(yyvsp[0].sval));
        (yyval.sval) = (yyvsp[0].sval); 
    }
#line 1932 "parser.tab.c"
    break;

  case 76: /* primary_expression: INT_LITERAL  */
#line 549 "parser.y"
                  { 
        (yyval.sval) = new string(to_string((yyvsp[0].ival)));
    }
#line 1940 "parser.tab.c"
    break;

  case 77: /* primary_expression: FLOAT_LITERAL  */
#line 552 "parser.y"
                    { 
        (yyval.sval) = new string(to_string((yyvsp[0].fval)));
    }
#line 1948 "parser.tab.c"
    break;

  case 78: /* primary_expression: CHAR_LITERAL  */
#line 555 "parser.y"
                   { 
        (yyval.sval) = (yyvsp[0].sval);
    }
#line 1956 "parser.tab.c"
    break;

  case 79: /* primary_expression: STRING_LITERAL  */
#line 558 "parser.y"
                     { 
        (yyval.sval) = (yyvsp[0].sval);
    }
#line 1964 "parser.tab.c"
    break;

  case 80: /* primary_expression: NULL_LITERAL  */
#line 561 "parser.y"
                       { 
        (yyval.sval) = new string("NULL");
    }
#line 1972 "parser.tab.c"
    break;

  case 81: /* primary_expression: BOOLEAN_LITERAL  */
#line 564 "parser.y"
                          { 
        (yyval.sval) = new string(to_string((yyvsp[0].ival)));
    }
#line 1980 "parser.tab.c"
    break;

  case 82: /* primary_expression: LPAREN expression RPAREN  */
#line 567 "parser.y"
                               { 
        (yyval.sval) = (yyvsp[-1].sval);
    }
#line 1988 "parser.tab.c"
    break;

  case 83: /* postfix_expression: primary_expression  */
#line 573 "parser.y"
                             { (yyval.sval) = (yyvsp[0].sval); }
#line 1994 "parser.tab.c"
    break;

  case 84: /* postfix_expression: postfix_expression LBRACKET expression RBRACKET  */
#line 574 "parser.y"
                                                          { (yyval.sval) = (yyvsp[-3].sval); }
#line 2000 "parser.tab.c"
    break;

  case 85: /* postfix_expression: postfix_expression LPAREN RPAREN  */
#line 575 "parser.y"
                                           { (yyval.sval) = (yyvsp[-2].sval); }
#line 2006 "parser.tab.c"
    break;

  case 86: /* postfix_expression: postfix_expression LPAREN argument_expression_list RPAREN  */
#line 576 "parser.y"
                                                                    { (yyval.sval) = (yyvsp[-3].sval); }
#line 2012 "parser.tab.c"
    break;

  case 87: /* postfix_expression: postfix_expression DOT IDENTIFIER  */
#line 577 "parser.y"
                                            { (yyval.sval) = (yyvsp[-2].sval); }
#line 2018 "parser.tab.c"
    break;

  case 88: /* postfix_expression: postfix_expression ARROW IDENTIFIER  */
#line 578 "parser.y"
                                              { (yyval.sval) = (yyvsp[-2].sval); }
#line 2024 "parser.tab.c"
    break;

  case 89: /* postfix_expression: postfix_expression INCREMENT  */
#line 579 "parser.y"
                                       { (yyval.sval) = (yyvsp[-1].sval); }
#line 2030 "parser.tab.c"
    break;

  case 90: /* postfix_expression: postfix_expression DECREMENT  */
#line 580 "parser.y"
                                       { (yyval.sval) = (yyvsp[-1].sval); }
#line 2036 "parser.tab.c"
    break;

  case 105: /* cast_expression: unary_expression  */
#line 607 "parser.y"
                           { (yyval.sval) = (yyvsp[0].sval); }
#line 2042 "parser.tab.c"
    break;

  case 106: /* cast_expression: LPAREN type_name RPAREN cast_expression  */
#line 608 "parser.y"
                                                  { (yyval.sval) = (yyvsp[0].sval); }
#line 2048 "parser.tab.c"
    break;

  case 107: /* multiplicative_expression: cast_expression  */
#line 612 "parser.y"
                          { (yyval.sval) = (yyvsp[0].sval); }
#line 2054 "parser.tab.c"
    break;

  case 108: /* multiplicative_expression: multiplicative_expression STAR cast_expression  */
#line 613 "parser.y"
                                                         { (yyval.sval) = (yyvsp[-2].sval); }
#line 2060 "parser.tab.c"
    break;

  case 109: /* multiplicative_expression: multiplicative_expression DIVIDE cast_expression  */
#line 614 "parser.y"
                                                           { (yyval.sval) = (yyvsp[-2].sval); }
#line 2066 "parser.tab.c"
    break;

  case 110: /* multiplicative_expression: multiplicative_expression MOD cast_expression  */
#line 615 "parser.y"
                                                        { (yyval.sval) = (yyvsp[-2].sval); }
#line 2072 "parser.tab.c"
    break;

  case 111: /* additive_expression: multiplicative_expression  */
#line 619 "parser.y"
                                    { (yyval.sval) = (yyvsp[0].sval); }
#line 2078 "parser.tab.c"
    break;

  case 112: /* additive_expression: additive_expression PLUS multiplicative_expression  */
#line 620 "parser.y"
                                                             { (yyval.sval) = (yyvsp[-2].sval); }
#line 2084 "parser.tab.c"
    break;

  case 113: /* additive_expression: additive_expression MINUS multiplicative_expression  */
#line 621 "parser.y"
                                                              { (yyval.sval) = (yyvsp[-2].sval); }
#line 2090 "parser.tab.c"
    break;

  case 114: /* shift_expression: additive_expression  */
#line 625 "parser.y"
                              { (yyval.sval) = (yyvsp[0].sval); }
#line 2096 "parser.tab.c"
    break;

  case 115: /* shift_expression: shift_expression LEFT_SHIFT additive_expression  */
#line 626 "parser.y"
                                                          { (yyval.sval) = (yyvsp[-2].sval); }
#line 2102 "parser.tab.c"
    break;

  case 116: /* shift_expression: shift_expression RIGHT_SHIFT additive_expression  */
#line 627 "parser.y"
                                                           { (yyval.sval) = (yyvsp[-2].sval); }
#line 2108 "parser.tab.c"
    break;

  case 117: /* relational_expression: shift_expression  */
#line 631 "parser.y"
                           { (yyval.sval) = (yyvsp[0].sval); }
#line 2114 "parser.tab.c"
    break;

  case 118: /* relational_expression: relational_expression LT shift_expression  */
#line 632 "parser.y"
                                                    { (yyval.sval) = (yyvsp[-2].sval); }
#line 2120 "parser.tab.c"
    break;

  case 119: /* relational_expression: relational_expression GT shift_expression  */
#line 633 "parser.y"
                                                    { (yyval.sval) = (yyvsp[-2].sval); }
#line 2126 "parser.tab.c"
    break;

  case 120: /* relational_expression: relational_expression LE shift_expression  */
#line 634 "parser.y"
                                                    { (yyval.sval) = (yyvsp[-2].sval); }
#line 2132 "parser.tab.c"
    break;

  case 121: /* relational_expression: relational_expression GE shift_expression  */
#line 635 "parser.y"
                                                    { (yyval.sval) = (yyvsp[-2].sval); }
#line 2138 "parser.tab.c"
    break;

  case 122: /* equality_expression: relational_expression  */
#line 639 "parser.y"
                                { (yyval.sval) = (yyvsp[0].sval); }
#line 2144 "parser.tab.c"
    break;

  case 123: /* equality_expression: equality_expression EQ relational_expression  */
#line 640 "parser.y"
                                                       { (yyval.sval) = (yyvsp[-2].sval); }
#line 2150 "parser.tab.c"
    break;

  case 124: /* equality_expression: equality_expression NEQ relational_expression  */
#line 641 "parser.y"
                                                        { (yyval.sval) = (yyvsp[-2].sval); }
#line 2156 "parser.tab.c"
    break;

  case 125: /* and_expression: equality_expression  */
#line 645 "parser.y"
                              { (yyval.sval) = (yyvsp[0].sval); }
#line 2162 "parser.tab.c"
    break;

  case 126: /* and_expression: and_expression BIT_AND equality_expression  */
#line 646 "parser.y"
                                                     { (yyval.sval) = (yyvsp[-2].sval); }
#line 2168 "parser.tab.c"
    break;

  case 127: /* exclusive_or_expression: and_expression  */
#line 650 "parser.y"
                         { (yyval.sval) = (yyvsp[0].sval); }
#line 2174 "parser.tab.c"
    break;

  case 128: /* exclusive_or_expression: exclusive_or_expression BIT_XOR and_expression  */
#line 651 "parser.y"
                                                         { (yyval.sval) = (yyvsp[-2].sval); }
#line 2180 "parser.tab.c"
    break;

  case 129: /* inclusive_or_expression: exclusive_or_expression  */
#line 655 "parser.y"
                                  { (yyval.sval) = (yyvsp[0].sval); }
#line 2186 "parser.tab.c"
    break;

  case 130: /* inclusive_or_expression: inclusive_or_expression BIT_OR exclusive_or_expression  */
#line 656 "parser.y"
                                                                 { (yyval.sval) = (yyvsp[-2].sval); }
#line 2192 "parser.tab.c"
    break;

  case 131: /* logical_and_expression: inclusive_or_expression  */
#line 660 "parser.y"
                                  { (yyval.sval) = (yyvsp[0].sval); }
#line 2198 "parser.tab.c"
    break;

  case 132: /* logical_and_expression: logical_and_expression LOGICAL_AND inclusive_or_expression  */
#line 661 "parser.y"
                                                                     { (yyval.sval) = (yyvsp[-2].sval); }
#line 2204 "parser.tab.c"
    break;

  case 151: /* constant_expression: conditional_expression  */
#line 698 "parser.y"
                                 { (yyval.ival) = 0; }
#line 2210 "parser.tab.c"
    break;

  case 152: /* struct_or_union_specifier: struct_or_union IDENTIFIER LBRACE struct_declaration_list RBRACE  */
#line 708 "parser.y"
                                                                           { 
		(yyval.sval) = new string(*(yyvsp[-4].sval) + " " + *(yyvsp[-3].sval));
		delete (yyvsp[-4].sval); delete (yyvsp[-3].sval);
	}
#line 2219 "parser.tab.c"
    break;

  case 153: /* struct_or_union_specifier: struct_or_union IDENTIFIER  */
#line 712 "parser.y"
                                     { 
		(yyval.sval) = new string(*(yyvsp[-1].sval) + " " + *(yyvsp[0].sval));
		delete (yyvsp[-1].sval); delete (yyvsp[0].sval);
	}
#line 2228 "parser.tab.c"
    break;

  case 154: /* struct_or_union: STRUCT  */
#line 719 "parser.y"
                 { (yyval.sval) = new string("struct"); }
#line 2234 "parser.tab.c"
    break;

  case 155: /* struct_or_union: UNION  */
#line 720 "parser.y"
                { (yyval.sval) = new string("union"); }
#line 2240 "parser.tab.c"
    break;

  case 156: /* struct_or_union: CLASS  */
#line 721 "parser.y"
                { (yyval.sval) = new string("class"); }
#line 2246 "parser.tab.c"
    break;

  case 166: /* struct_declarator: declarator  */
#line 746 "parser.y"
                     { (yyval.sval) = new string((yyvsp[0].declinfo)->name); delete (yyvsp[0].declinfo); }
#line 2252 "parser.tab.c"
    break;

  case 167: /* struct_declarator: COLON constant_expression  */
#line 747 "parser.y"
                                    { (yyval.sval) = new string("bitfield"); }
#line 2258 "parser.tab.c"
    break;

  case 168: /* struct_declarator: declarator COLON constant_expression  */
#line 748 "parser.y"
                                               { (yyval.sval) = new string((yyvsp[-2].declinfo)->name); delete (yyvsp[-2].declinfo); }
#line 2264 "parser.tab.c"
    break;

  case 176: /* pointer: STAR  */
#line 776 "parser.y"
           {                                   /* e.g., * */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
        (yyval.typeinfo)->pointerCount = 1;
    }
#line 2274 "parser.tab.c"
    break;

  case 177: /* pointer: STAR CONST  */
#line 781 "parser.y"
                 {                            /* e.g., * const */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isPointer = true;
        (yyval.typeinfo)->pointerCount = 1;
        (yyval.typeinfo)->isConstPointer = true;
    }
#line 2285 "parser.tab.c"
    break;

  case 178: /* pointer: STAR pointer  */
#line 787 "parser.y"
                   {                          /* e.g., **, ***, etc. */
        (yyval.typeinfo) = (yyvsp[0].typeinfo);
        (yyval.typeinfo)->pointerCount++;
    }
#line 2294 "parser.tab.c"
    break;

  case 179: /* pointer: BIT_AND  */
#line 791 "parser.y"
                  {                               /* e.g., & (reference) */
        (yyval.typeinfo) = new TypeInfo();
        (yyval.typeinfo)->isReference = true;
    }
#line 2303 "parser.tab.c"
    break;

  case 187: /* statement: error SEMICOLON  */
#line 817 "parser.y"
                          { 
		yyerror("Invalid statement, skipping to next ';'"); 
		yyerrok; 
	}
#line 2312 "parser.tab.c"
    break;

  case 191: /* $@1: %empty  */
#line 834 "parser.y"
                 { enter_scope(); }
#line 2318 "parser.tab.c"
    break;

  case 192: /* compound_statement: LBRACE $@1 declaration_list statement_list RBRACE  */
#line 834 "parser.y"
                                                                           { exit_scope(); }
#line 2324 "parser.tab.c"
    break;


#line 2328 "parser.tab.c"

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

#line 870 "parser.y"


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

void displaySymbolTable() {
    cout << "\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    cout << "|                                   SYMBOL TABLE                                         |\n";
    cout << "+-----------------------------------------------------------------------------------------+\n";
    
    if (scope_stack.empty()) {
        cout << "| No active scopes                                                                    |\n";
        cout << "+-----------------------------------------------------------------------------------------+\n";
        return;
    }
    
    for (int i = 0; i < scope_stack.size(); i++) {
        cout << "\n+- SCOPE LEVEL " << (i + 1) << " ";
        cout << string(70 - to_string(i + 1).length(), '-') << "+\n";
        
        if (scope_stack[i].empty()) {
            cout << "| (empty scope)                                                                       |\n";
            cout << "+-----------------------------------------------------------------------------------------+\n";
            continue;
        }
        
        // Table header
        cout << "+-------------+-------------------------+------+-------+-------------+-------------+\n";
        cout << "| Identifier  | Type                    | Line | Scope | Initialized | Value       |\n";
        cout << "+-------------+-------------------------+------+-------+-------------+-------------+\n";
        
        // Table content
        for (const auto& entry : scope_stack[i]) {
            string name = entry.second.name;
            string type = entry.second.type.toString();
            string line = to_string(entry.second.line);
            string scope = to_string(entry.second.scope_level);
            string initialized = entry.second.isInitialized ? "Yes" : "No";
            string value = entry.second.initialValue;
            
            // Truncate long strings
            if (name.length() > 11) name = name.substr(0, 8) + "...";
            if (type.length() > 23) type = type.substr(0, 20) + "...";
            if (value.length() > 11) value = value.substr(0, 8) + "...";
            
            cout << "| " << left << setw(11) << name
                 << " | " << left << setw(23) << type
                 << " | " << right << setw(4) << line
                 << " | " << right << setw(5) << scope
                 << " | " << left << setw(11) << initialized
                 << " | " << left << setw(11) << value << " |\n";
        }
        cout << "+-------------+-------------------------+------+-------+-------------+-------------+\n";
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
