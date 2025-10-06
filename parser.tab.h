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
    
    // Type information for semantic checking and 3-address code generation
    struct TypeInfo {
        bool isStatic;
        string baseType;        // int, char, float, void, struct_name, etc.
        bool isPointer;
        bool isArray;
        int arraySize;
        string identifier;      // For expressions that reference variables
        
        TypeInfo() : isStatic(false), baseType(""), 
                     isPointer(false), isArray(false), 
                     arraySize(0), identifier("") {}
        
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), isPointer(other.isPointer), 
                    isArray(other.isArray), arraySize(other.arraySize),
                    identifier(other.identifier) {}
        
        string toString() const {
            string result = "";
            if (isStatic) result += "static ";
            result += baseType;
            if( isPointer ) {
                result+="*";
            }
            if (isArray) {
                result += "[" + to_string(arraySize) + "]";
            }
            return result;
        }
    };

    // Scope context for semantic checking
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        int scope_level;
        
        ScopeContext(int level) : scope_level(level) {}
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable name
        bool isPointer;
        bool isArray;
        int arraySize;
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        DeclaratorInfo() : name(""), isPointer(false), 
                          isArray(false), initValue(""), initType(nullptr), arraySize(0) {}
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;
        TypeInfo type;
        int line;
        int scope_level;
        
        SymbolEntry() : line(0), scope_level(0) {}
    };

#line 118 "parser.tab.h"

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
    IF = 262,                      /* IF  */
    ELSE = 263,                    /* ELSE  */
    FOR = 264,                     /* FOR  */
    WHILE = 265,                   /* WHILE  */
    DO = 266,                      /* DO  */
    UNTIL = 267,                   /* UNTIL  */
    BREAK = 268,                   /* BREAK  */
    CONTINUE = 269,                /* CONTINUE  */
    SWITCH = 270,                  /* SWITCH  */
    CASE = 271,                    /* CASE  */
    DEFAULT = 272,                 /* DEFAULT  */
    SIZEOF = 273,                  /* SIZEOF  */
    STATIC = 274,                  /* STATIC  */
    GOTO = 275,                    /* GOTO  */
    NULL_LITERAL = 276,            /* NULL_LITERAL  */
    INVALID = 277,                 /* INVALID  */
    INCREMENT = 278,               /* INCREMENT  */
    DECREMENT = 279,               /* DECREMENT  */
    ARROW = 280,                   /* ARROW  */
    LEFT_SHIFT = 281,              /* LEFT_SHIFT  */
    RIGHT_SHIFT = 282,             /* RIGHT_SHIFT  */
    LOGICAL_AND = 283,             /* LOGICAL_AND  */
    LOGICAL_OR = 284,              /* LOGICAL_OR  */
    EQ = 285,                      /* EQ  */
    NEQ = 286,                     /* NEQ  */
    LE = 287,                      /* LE  */
    GE = 288,                      /* GE  */
    PLUS = 289,                    /* PLUS  */
    MINUS = 290,                   /* MINUS  */
    STAR = 291,                    /* STAR  */
    DIVIDE = 292,                  /* DIVIDE  */
    MOD = 293,                     /* MOD  */
    ASSIGN = 294,                  /* ASSIGN  */
    LT = 295,                      /* LT  */
    GT = 296,                      /* GT  */
    LOGICAL_NOT = 297,             /* LOGICAL_NOT  */
    BIT_AND = 298,                 /* BIT_AND  */
    BIT_OR = 299,                  /* BIT_OR  */
    BIT_XOR = 300,                 /* BIT_XOR  */
    BIT_NOT = 301,                 /* BIT_NOT  */
    DOT = 302,                     /* DOT  */
    COLON = 303,                   /* COLON  */
    SEMICOLON = 304,               /* SEMICOLON  */
    COMMA = 305,                   /* COMMA  */
    LBRACE = 306,                  /* LBRACE  */
    RBRACE = 307,                  /* RBRACE  */
    LPAREN = 308,                  /* LPAREN  */
    RPAREN = 309,                  /* RPAREN  */
    LBRACKET = 310,                /* LBRACKET  */
    RBRACKET = 311,                /* RBRACKET  */
    STRUCT = 312,                  /* STRUCT  */
    RETURN = 313,                  /* RETURN  */
    IDENTIFIER = 314,              /* IDENTIFIER  */
    INT_LITERAL = 315,             /* INT_LITERAL  */
    FLOAT_LITERAL = 316,           /* FLOAT_LITERAL  */
    STRING_LITERAL = 317,          /* STRING_LITERAL  */
    CHAR_LITERAL = 318             /* CHAR_LITERAL  */
  };
  typedef enum yytokentype yytoken_kind_t;
#endif

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
union YYSTYPE
{
#line 108 "parser.y"

    int ival;       /* integer literals */
    string* sval;     /* identifiers */
    float fval;     /* float literals */
	char cval;      /* char literals */
	vector<string>* strlist; /* list of strings */
	TypeInfo* typeinfo; /* structured type information */
    vector<TypeInfo>* typelist; /* list of type information */
	DeclaratorInfo* declinfo; /* declarator information */
	vector<DeclaratorInfo*>* decllist; /* list of declarators */

#line 210 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
