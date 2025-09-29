/* A Bison parser, made by GNU Bison 3.8.2.  */

/* Bison interface for Yacc-like parsers in C

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

/* DO NOT RELY ON FEATURES THAT ARE NOT DOCUMENTED in the manual,
   especially those whose name start with YY_ or yy_.  They are
   private implementation details that can be changed or removed.  */

#ifndef YY_YY_PARSER_TAB_H_INCLUDED
# define YY_YY_PARSER_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif
/* "%code requires" blocks.  */
#line 17 "parser.y"

    #include <bits/stdc++.h>
    using namespace std;
    
    // Structured type information
    struct TypeInfo {
        bool isStatic;
        bool isConst;
        string baseType;        // int, char, float, void, bool, struct_name, etc.
        bool isPointer;
        int pointerCount;
        bool isReference;
        bool isConstPointer;    // const after pointer (like int * const)
        bool isArray;
        vector<int> arrayDimensions;  // stores size of each dimension, -1 for unknown size
        
        TypeInfo() : isStatic(false), isConst(false), baseType(""), 
                     isPointer(false), pointerCount(0), isReference(false), 
                     isConstPointer(false), isArray(false) {}
        
        string toString() const {
            string result = "";
            if (isStatic) result += "static ";
            if (isConst) result += "const ";
            result += baseType;
            for (int i = 0; i < pointerCount; i++) {
                result += "*";
            }
            if (isReference) result += "&";
            if (isConstPointer) result += " const";
            if (isArray) {
                for (int size : arrayDimensions) {
                    result += "[";
                    if (size >= 0) result += to_string(size);
                    result += "]";
                }
            }
            return result;
        }
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable name
        bool isPointer;
        int pointerCount;
        bool isReference;
        bool isConstPointer;
        bool isArray;
        vector<int> arrayDimensions;
        string initValue;       // initialization value if any
        
        DeclaratorInfo() : name(""), isPointer(false), pointerCount(0), 
                          isReference(false), isConstPointer(false), 
                          isArray(false), initValue("") {}
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;
        TypeInfo type;
        int line;
        int scope_level;
        string initialValue;    // Store initialization value if any
        bool isInitialized;
        
        SymbolEntry() : line(0), scope_level(0), initialValue(""), isInitialized(false) {}
    };

#line 119 "parser.tab.h"

/* Token kinds.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    YYEMPTY = -2,
    YYEOF = 0,                     /* "end of file"  */
    YYerror = 256,                 /* error  */
    YYUNDEF = 257,                 /* "invalid token"  */
    INT = 258,                     /* INT  */
    FLOAT = 259,                   /* FLOAT  */
    CHAR = 260,                    /* CHAR  */
    VOID = 261,                    /* VOID  */
    BOOL = 262,                    /* BOOL  */
    IF = 263,                      /* IF  */
    ELSE = 264,                    /* ELSE  */
    FOR = 265,                     /* FOR  */
    WHILE = 266,                   /* WHILE  */
    DO = 267,                      /* DO  */
    UNTIL = 268,                   /* UNTIL  */
    BREAK = 269,                   /* BREAK  */
    CONTINUE = 270,                /* CONTINUE  */
    SWITCH = 271,                  /* SWITCH  */
    CASE = 272,                    /* CASE  */
    DEFAULT = 273,                 /* DEFAULT  */
    SIZEOF = 274,                  /* SIZEOF  */
    TYPEDEF = 275,                 /* TYPEDEF  */
    STATIC = 276,                  /* STATIC  */
    GOTO = 277,                    /* GOTO  */
    CLASS = 278,                   /* CLASS  */
    PUBLIC = 279,                  /* PUBLIC  */
    PRIVATE = 280,                 /* PRIVATE  */
    PROTECTED = 281,               /* PROTECTED  */
    NULL_LITERAL = 282,            /* NULL_LITERAL  */
    INCREMENT = 283,               /* INCREMENT  */
    DECREMENT = 284,               /* DECREMENT  */
    ARROW = 285,                   /* ARROW  */
    LEFT_SHIFT = 286,              /* LEFT_SHIFT  */
    RIGHT_SHIFT = 287,             /* RIGHT_SHIFT  */
    LOGICAL_AND = 288,             /* LOGICAL_AND  */
    LOGICAL_OR = 289,              /* LOGICAL_OR  */
    EQ = 290,                      /* EQ  */
    NEQ = 291,                     /* NEQ  */
    LE = 292,                      /* LE  */
    GE = 293,                      /* GE  */
    PLUS = 294,                    /* PLUS  */
    MINUS = 295,                   /* MINUS  */
    STAR = 296,                    /* STAR  */
    DIVIDE = 297,                  /* DIVIDE  */
    MOD = 298,                     /* MOD  */
    ASSIGN = 299,                  /* ASSIGN  */
    LT = 300,                      /* LT  */
    GT = 301,                      /* GT  */
    LOGICAL_NOT = 302,             /* LOGICAL_NOT  */
    BIT_AND = 303,                 /* BIT_AND  */
    BIT_OR = 304,                  /* BIT_OR  */
    BIT_XOR = 305,                 /* BIT_XOR  */
    BIT_NOT = 306,                 /* BIT_NOT  */
    DOT = 307,                     /* DOT  */
    MUL_ASSIGN = 308,              /* MUL_ASSIGN  */
    DIV_ASSIGN = 309,              /* DIV_ASSIGN  */
    MOD_ASSIGN = 310,              /* MOD_ASSIGN  */
    ADD_ASSIGN = 311,              /* ADD_ASSIGN  */
    SUB_ASSIGN = 312,              /* SUB_ASSIGN  */
    LEFT_ASSIGN = 313,             /* LEFT_ASSIGN  */
    RIGHT_ASSIGN = 314,            /* RIGHT_ASSIGN  */
    AND_ASSIGN = 315,              /* AND_ASSIGN  */
    XOR_ASSIGN = 316,              /* XOR_ASSIGN  */
    OR_ASSIGN = 317,               /* OR_ASSIGN  */
    COLON = 318,                   /* COLON  */
    SEMICOLON = 319,               /* SEMICOLON  */
    COMMA = 320,                   /* COMMA  */
    LBRACE = 321,                  /* LBRACE  */
    RBRACE = 322,                  /* RBRACE  */
    LPAREN = 323,                  /* LPAREN  */
    RPAREN = 324,                  /* RPAREN  */
    LBRACKET = 325,                /* LBRACKET  */
    RBRACKET = 326,                /* RBRACKET  */
    STRUCT = 327,                  /* STRUCT  */
    RETURN = 328,                  /* RETURN  */
    IDENTIFIER = 329,              /* IDENTIFIER  */
    INT_LITERAL = 330,             /* INT_LITERAL  */
    BOOLEAN_LITERAL = 331,         /* BOOLEAN_LITERAL  */
    FLOAT_LITERAL = 332,           /* FLOAT_LITERAL  */
    STRING_LITERAL = 333,          /* STRING_LITERAL  */
    CHAR_LITERAL = 334,            /* CHAR_LITERAL  */
    TYPE_NAME = 335,               /* TYPE_NAME  */
    ENUM = 336,                    /* ENUM  */
    UNION = 337,                   /* UNION  */
    INVALID = 338,                 /* INVALID  */
    ELLIPSIS = 339,                /* ELLIPSIS  */
    CONST = 340                    /* CONST  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 102 "parser.y"

    int ival;       /* integer literals */
    string* sval;     /* identifiers */
    float fval;     /* float literals */
	bool bval;     /* boolean literals */
	char cval;      /* char literals */
	vector<string>* strlist; /* list of strings */
	TypeInfo* typeinfo; /* structured type information */
	DeclaratorInfo* declinfo; /* declarator information */
	vector<DeclaratorInfo*>* decllist; /* list of declarators */

#line 233 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
