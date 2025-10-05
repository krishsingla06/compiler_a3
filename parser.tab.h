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
        string value;           // Store the actual value for expressions/literals
        
        TypeInfo() : isStatic(false), isConst(false), baseType(""), 
                     isPointer(false), pointerCount(0), isReference(false), 
                     isConstPointer(false), isArray(false), value("") {}
        
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
        TypeInfo* initType;     // type information of the initializer
        
        DeclaratorInfo() : name(""), isPointer(false), pointerCount(0), 
                          isReference(false), isConstPointer(false), 
                          isArray(false), initValue(""), initType(nullptr) {}
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

#line 121 "parser.tab.h"

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
    NULL_LITERAL = 278,            /* NULL_LITERAL  */
    INCREMENT = 279,               /* INCREMENT  */
    DECREMENT = 280,               /* DECREMENT  */
    ARROW = 281,                   /* ARROW  */
    LEFT_SHIFT = 282,              /* LEFT_SHIFT  */
    RIGHT_SHIFT = 283,             /* RIGHT_SHIFT  */
    LOGICAL_AND = 284,             /* LOGICAL_AND  */
    LOGICAL_OR = 285,              /* LOGICAL_OR  */
    EQ = 286,                      /* EQ  */
    NEQ = 287,                     /* NEQ  */
    LE = 288,                      /* LE  */
    GE = 289,                      /* GE  */
    PLUS = 290,                    /* PLUS  */
    MINUS = 291,                   /* MINUS  */
    STAR = 292,                    /* STAR  */
    DIVIDE = 293,                  /* DIVIDE  */
    MOD = 294,                     /* MOD  */
    ASSIGN = 295,                  /* ASSIGN  */
    LT = 296,                      /* LT  */
    GT = 297,                      /* GT  */
    LOGICAL_NOT = 298,             /* LOGICAL_NOT  */
    BIT_AND = 299,                 /* BIT_AND  */
    BIT_OR = 300,                  /* BIT_OR  */
    BIT_XOR = 301,                 /* BIT_XOR  */
    BIT_NOT = 302,                 /* BIT_NOT  */
    DOT = 303,                     /* DOT  */
    MUL_ASSIGN = 304,              /* MUL_ASSIGN  */
    DIV_ASSIGN = 305,              /* DIV_ASSIGN  */
    MOD_ASSIGN = 306,              /* MOD_ASSIGN  */
    ADD_ASSIGN = 307,              /* ADD_ASSIGN  */
    SUB_ASSIGN = 308,              /* SUB_ASSIGN  */
    LEFT_ASSIGN = 309,             /* LEFT_ASSIGN  */
    RIGHT_ASSIGN = 310,            /* RIGHT_ASSIGN  */
    AND_ASSIGN = 311,              /* AND_ASSIGN  */
    XOR_ASSIGN = 312,              /* XOR_ASSIGN  */
    OR_ASSIGN = 313,               /* OR_ASSIGN  */
    COLON = 314,                   /* COLON  */
    SEMICOLON = 315,               /* SEMICOLON  */
    COMMA = 316,                   /* COMMA  */
    LBRACE = 317,                  /* LBRACE  */
    RBRACE = 318,                  /* RBRACE  */
    LPAREN = 319,                  /* LPAREN  */
    RPAREN = 320,                  /* RPAREN  */
    LBRACKET = 321,                /* LBRACKET  */
    RBRACKET = 322,                /* RBRACKET  */
    STRUCT = 323,                  /* STRUCT  */
    RETURN = 324,                  /* RETURN  */
    IDENTIFIER = 325,              /* IDENTIFIER  */
    INT_LITERAL = 326,             /* INT_LITERAL  */
    BOOLEAN_LITERAL = 327,         /* BOOLEAN_LITERAL  */
    FLOAT_LITERAL = 328,           /* FLOAT_LITERAL  */
    STRING_LITERAL = 329,          /* STRING_LITERAL  */
    CHAR_LITERAL = 330,            /* CHAR_LITERAL  */
    TYPE_NAME = 331,               /* TYPE_NAME  */
    ENUM = 332,                    /* ENUM  */
    UNION = 333,                   /* UNION  */
    INVALID = 334,                 /* INVALID  */
    ELLIPSIS = 335,                /* ELLIPSIS  */
    CONST = 336                    /* CONST  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 111 "parser.y"

    int ival;       /* integer literals */
    string* sval;     /* identifiers */
    float fval;     /* float literals */
	bool bval;     /* boolean literals */
	char cval;      /* char literals */
	vector<string>* strlist; /* list of strings */
	TypeInfo* typeinfo; /* structured type information */
	DeclaratorInfo* declinfo; /* declarator information */
	vector<DeclaratorInfo*>* decllist; /* list of declarators */

#line 231 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
