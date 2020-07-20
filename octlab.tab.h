/* A Bison parser, made by GNU Bison 2.3.  */

/* Skeleton interface for Bison's Yacc-like parsers in C

   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.

   This program is free software; you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation; either version 2, or (at your option)
   any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program; if not, write to the Free Software
   Foundation, Inc., 51 Franklin Street, Fifth Floor,
   Boston, MA 02110-1301, USA.  */

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

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     IDENTIFIER = 258,
     CONSTANT = 259,
     STRING = 260,
     MULTIPLY = 261,
     POWER = 262,
     DIVISON = 263,
     RDIVISON = 264,
     LESS_EQ = 265,
     GREATER_EQ = 266,
     EQ = 267,
     NOT_EQ = 268,
     IF = 269,
     ELSE = 270,
     ELSEIF = 271,
     WHILE = 272,
     FOR = 273,
     BREAK = 274,
     RETURN = 275,
     END = 276,
     CONTINUE = 277,
     FUNCTION = 278,
     CR = 279,
     GLOBAL = 280,
     CLEAR = 281
   };
#endif
/* Tokens.  */
#define IDENTIFIER 258
#define CONSTANT 259
#define STRING 260
#define MULTIPLY 261
#define POWER 262
#define DIVISON 263
#define RDIVISON 264
#define LESS_EQ 265
#define GREATER_EQ 266
#define EQ 267
#define NOT_EQ 268
#define IF 269
#define ELSE 270
#define ELSEIF 271
#define WHILE 272
#define FOR 273
#define BREAK 274
#define RETURN 275
#define END 276
#define CONTINUE 277
#define FUNCTION 278
#define CR 279
#define GLOBAL 280
#define CLEAR 281




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
# define YYSTYPE_IS_TRIVIAL 1
#endif

extern YYSTYPE yylval;

