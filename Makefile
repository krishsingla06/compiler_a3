
all: a.exe

parser.tab.c parser.tab.h: parser.y
	bison -d parser.y

lex.yy.c: lexer.l
	flex lexer.l

a.exe: parser.tab.c lex.yy.c
	g++ -o parser parser.tab.c lex.yy.c -lfl
