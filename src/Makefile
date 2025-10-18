
all: a.exe

parser.tab.c parser.tab.h: parser.y
	bison -d -Wnone parser.y

lex.yy.c: lexer.l
	flex -w lexer.l

a.exe: parser.tab.c lex.yy.c tac.cpp
	g++ -w -o parser parser.tab.c lex.yy.c tac.cpp -lfl
