/* A Bison parser, made by GNU Bison 3.0.4.  */

/* Bison interface for Yacc-like parsers in C

   Copyright (C) 1984, 1989-1990, 2000-2015 Free Software Foundation, Inc.

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

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

#ifndef YY_YY_Y_TAB_H_INCLUDED
# define YY_YY_Y_TAB_H_INCLUDED
/* Debug traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int yydebug;
#endif

/* Token type.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
  enum yytokentype
  {
    LIBRARY = 258,
    INCLUDE = 259,
    LIBRARY_EXTENSION = 260,
    MAIN = 261,
    VOID = 262,
    PRINT = 263,
    SCAN = 264,
    ARGS = 265,
    RETURN = 266,
    IF = 267,
    ELSE = 268,
    WHILE = 269,
    DO = 270,
    FOR = 271,
    SWITCH = 272,
    CASE = 273,
    DEFAULT = 274,
    BREAK = 275,
    PRIMITIVE = 276,
    ID = 277,
    CTE_INT = 278,
    CTE_FLOAT = 279,
    CTE_STRING = 280,
    CTE_BOOL = 281,
    OP_AND = 282,
    OP_OR = 283,
    OP_EQ = 284,
    OP_NEQ = 285,
    OP_LEQ = 286,
    OP_GEQ = 287,
    OP_INCREMENT = 288,
    OP_DECREMENT = 289,
    DEF_FUNCTION = 290,
    RANGE = 291
  };
#endif
/* Tokens.  */
#define LIBRARY 258
#define INCLUDE 259
#define LIBRARY_EXTENSION 260
#define MAIN 261
#define VOID 262
#define PRINT 263
#define SCAN 264
#define ARGS 265
#define RETURN 266
#define IF 267
#define ELSE 268
#define WHILE 269
#define DO 270
#define FOR 271
#define SWITCH 272
#define CASE 273
#define DEFAULT 274
#define BREAK 275
#define PRIMITIVE 276
#define ID 277
#define CTE_INT 278
#define CTE_FLOAT 279
#define CTE_STRING 280
#define CTE_BOOL 281
#define OP_AND 282
#define OP_OR 283
#define OP_EQ 284
#define OP_NEQ 285
#define OP_LEQ 286
#define OP_GEQ 287
#define OP_INCREMENT 288
#define OP_DECREMENT 289
#define DEF_FUNCTION 290
#define RANGE 291

/* Value type.  */
#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define YYSTYPE_IS_DECLARED 1
#endif

/* Location type.  */
#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE YYLTYPE;
struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
};
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


extern YYSTYPE yylval;
extern YYLTYPE yylloc;
int yyparse (void);

#endif /* !YY_YY_Y_TAB_H_INCLUDED  */
