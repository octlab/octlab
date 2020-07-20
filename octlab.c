/*******************************************************************
   Copyright 2020 www.octlab.net

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0 
********************************************************************/

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

extern int yycompile(FILE *);

#define MAXPATH 255

int main(int argc, char *argv[]) {
    char m [MAXPATH] = "OCTLAB_parse.m\0";

    if (argc > 1)
 	strcpy(m, argv[1]);

    FILE *yyin = fopen(m, "r");
    yycompile(yyin);

    exit(0);
}
 
