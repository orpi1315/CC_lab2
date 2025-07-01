%option noyywrap

%{
//Roll Number: 1703xxx
//
%}
letter [a-zA-Z]
digit [0-9]

%%
"if"        {printf("%s -> IF\n", yytext);}
"else"      {printf("%s -> ELSE\n", yytext);}
"&&"        {printf("%s -> AND_OP\n", yytext);}
"||"        {printf("%s -> OR_OP\n", yytext);}
"!="        {printf("%s -> NEQ\n", yytext);}
"=="        {printf("%s -> EQ\n", yytext);}
"<"         {printf("%s -> LT\n", yytext);}
">"         {printf("%s -> GT\n", yytext);}
"="         {printf("%s -> ASSIGN\n", yytext);}
"+"         {printf("%s -> ADD\n", yytext);}
"{"         {printf("%s -> LB\n", yytext);}
"}"         {printf("%s -> RB\n", yytext);}
";"         {printf("%s -> SEMI\n", yytext);}
({letter})({letter}|{digit})* {printf("%s -> ID\n", yytext);}
[0-9]+      {printf("%s -> NUMBER\n", yytext);}
[ \t\r\n]+  {}
.           {printf("Unknown character: %s\n", yytext);}
%%

int main()
{
  yylex();
  return 0;
}
