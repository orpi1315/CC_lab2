%option noyywrap

%{
//Roll Number: 1703xxx
//
%}
letter [a-zA-Z]
digit [0-9]

%%
"struct"    {printf("%s -> STRUCT\n", yytext);}
"int"       {printf("%s -> INT\n", yytext);}
"{"         {printf("%s -> LB\n", yytext);}
"}"         {printf("%s -> RB\n", yytext);}
";"         {printf("%s -> SEMI\n", yytext);}
"="         {printf("%s -> ASSIGN\n", yytext);}
"."         {printf("%s -> DOT\n", yytext);}
">"         {printf("%s -> GT\n", yytext);}
"("         {printf("%s -> LP\n", yytext);}
")"         {printf("%s -> RP\n", yytext);}
[0-9]+      {printf("%s -> NUMBER\n", yytext);}
({letter})({letter}|{digit})* {printf("%s -> ID\n", yytext);}
[ \t\r\n]+  {}
.           {printf("Unknown character: %s\n", yytext);}
%%

int main()
{
  yylex();
  return 0;
}
