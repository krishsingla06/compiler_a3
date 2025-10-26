%option noyywrap yylineno
%{
/* C++ includes (portable) */
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <string>
#include <vector>
#include <iostream>

using namespace std;

/* Bison-generated header (must be created by `bison -d parser.y`) */
#include "parser.tab.h"

/* Forward declaration for typedef checking - defined in parser.y */
extern bool is_typedef_name(const string& name);

#ifdef __cplusplus
extern "C" {
#endif
    int yylex(void);
#ifdef __cplusplus
}
#endif

/* helper to strdup in portable way */
static char* mystrdup(const char* s) {
    if (!s) return nullptr;
    size_t n = strlen(s)+1;
    char* p = (char*)malloc(n);
    if (p) memcpy(p, s, n);
    return p;
}
%}


%%
[ \t\r\n]+ { /* Ignore whitespace  Alos i removed class,public,private,protected*/ }

[/][/][^\n]* { /* Single line comment - matches // followed by any ASCII except newline */ }

"int"                               { return INT; }
"char"                              { return CHAR; }
"float"                             { return FLOAT; }
"void"                              { return VOID; }

"return"                            { return RETURN; }
"if"                                { return IF; }
"else"                              { return ELSE; }
"goto"                              { return GOTO; }
"for"                               { return FOR; }
"while"                             { return WHILE; }
"do"                                { return DO; }
"until"                             { return UNTIL; }
"break"                             { return BREAK; }
"continue"                          { return CONTINUE; }
"switch"                            { return SWITCH; }
"case"                              { return CASE; }
"default"                           { return DEFAULT; }
"sizeof"                            { return SIZEOF; }
"static"                            { return STATIC; }
"typedef"                           { return TYPEDEF; }
"struct"                            { return STRUCT; }
"union"                             { return UNION; }
"enum"                              { return ENUM; }
"class"                             { return CLASS; }
"public"                            { return PUBLIC; }
"private"                           { return PRIVATE; }
"protected"                         { return PROTECTED; }

"++"                                { return INCREMENT; }
"--"                                { return DECREMENT; }
"->"                                { return ARROW; }
"<<"                                {  return LEFT_SHIFT; }
">>"                                {  return RIGHT_SHIFT; }
"&&"                                { return LOGICAL_AND; }
"||"                                { return LOGICAL_OR; }
"=="                                { return EQ; }
"!="                                { return NEQ; }
"<="                                { return LE; }
">="                                { return GE; }

"+"                                 { return PLUS; }
"-"                                 { return MINUS; }
"*"                                 { return STAR; }
"/"                                 { return DIVIDE; }
"%"                                 { return MOD; }
"="                                 { return ASSIGN; }
"<"                                 { return LT; }
">"                                 { return GT; }
"!"                                 { return LOGICAL_NOT; }
"&"                                 { return BIT_AND; }
"|"                                 { return BIT_OR; }
"^"                                 { return BIT_XOR; }
"~"                                 { return BIT_NOT; }
"."                                 { return DOT; }
":"                                 { return COLON; }
";"                                 { return SEMICOLON; }
","                                 { return COMMA; }
"{"                                 { return LBRACE; }
"}"                                 { return RBRACE; }
"("                                 { return LPAREN; }
")"                                 { return RPAREN; }
"["                                 { return LBRACKET; }
"]"                                 { return RBRACKET; }
"..."                                {return ELLIPSIS; }

[0-9]*[.][0-9]*   {yylval.fval = atof(yytext);  return FLOAT_LITERAL; }

[0-9]+   {yylval.ival = atoi(yytext);  return INT_LITERAL; }

['].[']   {yylval.sval = new std::string(yytext); return CHAR_LITERAL; }

["].*["]   {yylval.sval = new std::string(yytext); return STRING_LITERAL; }

"NULL"    { return NULL_LITERAL; }

[a-zA-Z_][a-zA-Z0-9_]*  {
    yylval.sval = new std::string(yytext);
    /* Check if this identifier is a typedef name */
    if (is_typedef_name(std::string(yytext))) {
        return TYPENAME;
    }
    return IDENTIFIER;
}


.   {fprintf(stderr, "Lexer: invalid token '%s' at line %d\n", yytext, yylineno); return INVALID; }

%%


