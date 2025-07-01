%option noyywrap

%{
//Roll Number: 1703xxx
//
%}
letter [a-zA-Z]
digit [0-9]

%%
"#include"  {printf("%s -> INCLUDE\n", yytext);}
"<"         {printf("%s -> LT\n", yytext);}
">"         {printf("%s -> GT\n", yytext);}
"stdio.h"   {printf("%s -> HEADER\n", yytext);}
"struct"    {printf("%s -> STRUCT\n", yytext);}
"char"      {printf("%s -> CHAR\n", yytext);}
"int"       {printf("%s -> INT\n", yytext);}
"["         {printf("%s -> LBRACKET\n", yytext);}
"]"         {printf("%s -> RBRACKET\n", yytext);}
"."         {printf("%s -> DOT\n", yytext);}
"="         {printf("%s -> ASSIGN\n", yytext);}
"+="        {printf("%s -> ADD_ASSIGN\n", yytext);}
"for"       {printf("%s -> FOR\n", yytext);}
"("         {printf("%s -> LP\n", yytext);}
")"         {printf("%s -> RP\n", yytext);}
";"         {printf("%s -> SEMI\n", yytext);}
","         {printf("%s -> COMMA\n", yytext);}
"{"         {printf("%s -> LB\n", yytext);}
"}"         {printf("%s -> RB\n", yytext);}
"return"    {printf("%s -> RETURN\n", yytext);}
"%d"        {printf("%s -> FORMAT_SPEC\n", yytext);}
"printf"    {printf("%s -> PRINTF\n", yytext);}
[0-9]+      {printf("%s -> NUMBER\n", yytext);}
"\"[^\"]*\"" {printf("%s -> STRING\n", yytext);}
({letter})({letter}|{digit})* {printf("%s -> ID\n", yytext);}
[ \t\r\n]+  {}
.           {printf("Unknown character: %s\n", yytext);}
%%

int main()
{
  yylex();
  return 0;
}
