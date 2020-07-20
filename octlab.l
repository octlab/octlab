
/*******************************************************************
   Copyright [2020] [Teng Ge]

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0 
********************************************************************/

D         [0-9]
L         [a-zA-Z_]



%{

#include "octlab.tab.h"

extern void POS_NUMBER();

extern int yyparse();
extern int yywrap();

extern FILE* yyin;
extern int yycompile(FILE *);
extern void yyerror(char *s);

int column = 0;
int line = 1;

%}

%%

"%".*$    { ECHO; }
"!".*$    { ECHO; }
"...".*\n { POS_NUMBER(); }


"clear"   	{ POS_NUMBER();  return(CLEAR); }
"function" 	{ POS_NUMBER();    return(FUNCTION); }
"while"   	{ POS_NUMBER();    return(WHILE); }
"end"     	{ POS_NUMBER();    return(END); }
"else"    	{ POS_NUMBER();    return(ELSE); }
"elseif"  	{ POS_NUMBER();    return(ELSEIF); }
"for"     	{ POS_NUMBER();    return(FOR); }
"global"  	{ POS_NUMBER();    return(GLOBAL); }
"if"      	{ POS_NUMBER();    return(IF); }
"return"  	{ POS_NUMBER();    return(RETURN); }
"break"   	{ POS_NUMBER();    return(BREAK); }
"continue"      { POS_NUMBER();    return(CONTINUE); }

{L}({L}|{D})*           { POS_NUMBER();    return(IDENTIFIER); }
{D}+ 		{ POS_NUMBER();    return(CONSTANT); }
{D}*"."{D}+       { POS_NUMBER();    return(CONSTANT); }


'[^'\n]*'           { POS_NUMBER();  return(STRING); }
   

"./"      { POS_NUMBER();    return(DIVISON); }
".*"      { POS_NUMBER();    return(MULTIPLY); }
".^"      { POS_NUMBER();    return(POWER); }
".\\"     { POS_NUMBER();    return(RDIVISON); }
"<="      { POS_NUMBER();    return(LESS_EQ); }
">="      { POS_NUMBER();    return(GREATER_EQ); }
"=="      { POS_NUMBER();    return(EQ); }
"~="      { POS_NUMBER();    return(NOT_EQ); }
"~"       { POS_NUMBER();    return('~'); }
";"       { POS_NUMBER();    return(';'); }
","       { POS_NUMBER();    return(','); }
":"       { POS_NUMBER();    return(':'); }
"="       { POS_NUMBER();    return('='); }
"("       { POS_NUMBER();    return('('); }
")"       { POS_NUMBER();    return(')'); }
"["       { POS_NUMBER();    return('['); }
"]"       { POS_NUMBER();    return(']'); }
"&"       { POS_NUMBER();    return('&'); }
"-"       { POS_NUMBER();    return('-'); }
"+"       { POS_NUMBER();    return('+'); }
"*"       { POS_NUMBER();    return('*'); }
"/"       { POS_NUMBER();    return('/'); }
"\\"      { POS_NUMBER();    return('\\'); }
"<"       { POS_NUMBER();    return('<'); }
">"       { POS_NUMBER();    return('>'); }
"^"       { POS_NUMBER();    return('^'); }
"|"       { POS_NUMBER();    return('|'); }
"."	  { POS_NUMBER();    return('.'); }
\n        { POS_NUMBER();    line = line + 1; return(CR); }
[ \t\v\f] { POS_NUMBER();    }
.         { ECHO;   }

%%




void POS_NUMBER()
{
        int i;

        for (i = 0; yytext[i] != '\0'; i++)
  		if (yytext[i] == '\n')
          		column = 0;
  		else if (yytext[i] == '\t')
         		 column += 8 - (column % 8);
  		else
          		column++;

        ECHO;
}
             

int yycompile(FILE *m)
{
	yyin=m;
	return(yyparse());
}

int yywrap()
{
	printf("CODE SUCCESSFULLY PARSED\n");
        return(1);
}

void yyerror(char *s) 
{
	fflush(stdout);
	printf("\n%*s\n%*s",column,"^",column,s);
	printf(" at line %d, column %d\n",line,column);
}

