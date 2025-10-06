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
    
    // Structured type information - contains isConst, isPointer, baseType, etc.
    struct TypeInfo {
        bool isStatic;
        string baseType;        // int, char, float, void, struct_name, etc.
        bool isPointer;
        int pointerCount;
        bool isArray;
        vector<int> arrayDimensions;  // stores size of each dimension, -1 for unknown size
        
        // Native value storage
        union {
            int int_value;
            float float_value;
            char char_value;
            //KRISH - add here ig a byte for int* ptr = &x
        } native_value;
        
        string* string_value;   // Separate for heap-allocated strings
        bool has_native_value;
        string value;           // Keep for identifiers/expressions
        
        TypeInfo() : isStatic(false), baseType(""), 
                     isPointer(false), pointerCount(0), 
                    isArray(false), string_value(nullptr),
                     has_native_value(false), value("") {
            // Initialize union to zero
            native_value.int_value = 0;
        }
        
        // Value setters
        void setIntValue(int val) { 
            native_value.int_value = val; 
            has_native_value = true; 
        }
        void setFloatValue(float val) { 
            native_value.float_value = val; 
            has_native_value = true; 
        }
        void setCharValue(char val) { 
            native_value.char_value = val; 
            has_native_value = true; 
        }
        void setStringValue(const string& val) { 
            if (string_value) delete string_value;
            string_value = new string(val); 
            has_native_value = true; 
        }
        
        // Value getters
        int getIntValue() const { return native_value.int_value; }
        float getFloatValue() const { return native_value.float_value; }
        char getCharValue() const { return native_value.char_value; }
        string getStringValue() const { 
            return string_value ? *string_value : ""; 
        }
        
        // Destructor
        ~TypeInfo() {
            if (string_value) delete string_value;
        }
        
        // Copy constructor
        TypeInfo(const TypeInfo& other) : isStatic(other.isStatic),
                    baseType(other.baseType), isPointer(other.isPointer), 
                    pointerCount(other.pointerCount), isArray(other.isArray),
                    arrayDimensions(other.arrayDimensions), native_value(other.native_value),
                    has_native_value(other.has_native_value), value(other.value) {
            string_value = other.string_value ? new string(*other.string_value) : nullptr;
        }
        
        string toString() const {
            string result = "";
            if (isStatic) result += "static ";
            result += baseType;
            for (int i = 0; i < pointerCount; i++) {
                result += "*";
            }
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

    // Scope context with per-scope value storage
    struct ScopeContext {
        map<string, struct SymbolEntry> symbols; // symbol table for this scope
        vector<uint8_t> value_storage; // raw byte storage for variable values
        size_t next_offset;
        int scope_level;
        
        ScopeContext(int level) : next_offset(0), scope_level(level) {}
        
        // Get size of a type in bytes
        size_t getTypeSize(const TypeInfo& type) {
            if (type.isPointer) {
                return sizeof(void*);  // Pointer size
            }
            
            if (type.isArray) {
                size_t element_size = getBaseTypeSize(type.baseType);
                size_t total_elements = 1;
                for (int dim : type.arrayDimensions) {
                    if (dim > 0) total_elements *= dim;
                }
                return element_size * total_elements;
            }
            
            return getBaseTypeSize(type.baseType);
        }
        
        size_t getBaseTypeSize(const string& baseType) {
            if (baseType == "int") return sizeof(int);
            if (baseType == "float") return sizeof(float);
            if (baseType == "char") return sizeof(char);
            return 1; // Default for unknown types
        }
        
        // Always allocate space, initialize with zeros if no value provided
        size_t allocateVariable(const TypeInfo& type, const void* init_value = nullptr) {
            size_t size = getTypeSize(type);
            size_t offset = next_offset;
            
            // Resize storage to accommodate new variable
            value_storage.resize(offset + size);
            
            if (init_value) {
                // Copy provided initial value
                memcpy(&value_storage[offset], init_value, size);
            } else {
                // Initialize with zeros
                memset(&value_storage[offset], 0, size);
            }
            
            next_offset += size;
            return offset;
        }
        
        // Retrieve value from this scope's storage
        template<typename T>
        T getValue(size_t offset) const {
            if (offset + sizeof(T) <= value_storage.size()) {
                return *reinterpret_cast<const T*>(&value_storage[offset]);
            }
            throw runtime_error("Invalid offset or corrupted storage");
        }
    };

    // Declarator information - combines identifier with type modifiers
    struct DeclaratorInfo {
        string name;            // variable name
        bool isPointer;
        int pointerCount;
        bool isArray;
        vector<int> arrayDimensions;
        string initValue;       // initialization value if any
        TypeInfo* initType;     // type information of the initializer
        
        DeclaratorInfo() : name(""), isPointer(false), pointerCount(0),  
                          isArray(false), initValue(""), initType(nullptr) {}
    };

    // Symbol table entry structure
    struct SymbolEntry {
        string name;
        TypeInfo type;
        int line;
        int scope_level;
        size_t value_offset;        // Always valid - every variable has storage
        size_t value_size;          // Always > 0 - size of allocated storage
        bool isInitialized;         // true = has explicit initial value, false = zeros
        
        SymbolEntry() : line(0), scope_level(0), value_offset(0), 
                       value_size(0), isInitialized(false) {}
    };

#line 234 "parser.tab.h"

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
#line 226 "parser.y"

    int ival;       /* integer literals */
    string* sval;     /* identifiers */
    float fval;     /* float literals */
	char cval;      /* char literals */
	vector<string>* strlist; /* list of strings */
	TypeInfo* typeinfo; /* structured type information */
	DeclaratorInfo* declinfo; /* declarator information */
	vector<DeclaratorInfo*>* decllist; /* list of declarators */

#line 325 "parser.tab.h"

};
typedef union YYSTYPE YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif


extern YYSTYPE yylval;


int yyparse (void);


#endif /* !YY_YY_PARSER_TAB_H_INCLUDED  */
