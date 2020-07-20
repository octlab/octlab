all: octlab
	
octlab.tab.c: octlab.y
	bison -d octlab.y

lex.yy.c: octlab.l
	lex octlab.l

octlab: lex.yy.c octlab.tab.c octlab.c
	cc -g -o octlab lex.yy.c octlab.tab.c octlab.c 


