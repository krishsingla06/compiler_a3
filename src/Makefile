
all: a.exe

parser.tab.c parser.tab.h: parser.y
	bison -d -Wnone parser.y

lex.yy.c: lexer.l
	flex -w lexer.l

a.exe: parser.tab.c lex.yy.c tac.cpp mips_generator.cpp descriptors.cpp runtime_library.cpp
	g++ -w -o parser parser.tab.c lex.yy.c tac.cpp mips_generator.cpp descriptors.cpp runtime_library.cpp

clean:
	rm -f parser.tab.c parser.tab.h lex.yy.c parser a.exe *.o *.tac *.debug *.symtab *.functab *.globalsymtab *.jumptab
	@# Preserve runtime_library.asm - only delete k.asm and k.clean.asm
	rm -f k.asm k.clean.asm
