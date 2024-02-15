
%{
//definition section
#include <stdio.h>
%}

DIGIT       [0-9]
NUMBER      {DIGIT}+(\.{DIGIT}+)?([eE][+-]?{DIGIT}+)?

%%

^#include[ \t]*<[^\n>]+>  {printf("TOKEN <PREPROCESSOR, %s>\n", yytext);}

if {printf("TOKEN <KW_IF, %s>\n", yytext);}
else {printf("TOKEN <KW_ELSE, %s>\n", yytext);}
for {printf("TOKEN <KW_FOR, %s>\n", yytext);}
while {printf("TOKEN <KW_WHILE, %s>\n", yytext);}
do {printf("TOKEN <KW_DO, %s>\n", yytext);}
switch {printf("TOKEN <KW_SWITCH, %s>\n", yytext);}

int {printf("TOKEN <KW_TYPE, %s>\n", yytext);}
float {printf("TOKEN <KW_TYPE, %s>\n", yytext);}
char {printf("TOKEN <KW_TYPE, %s>\n", yytext);}
double {printf("TOKEN <KW_TYPE, %s>\n", yytext);}
void {printf("TOKEN <KW_TYPE, %s>\n", yytext);}



return {printf("TOKEN <KW_RETURN, %s>\n", yytext);}
case {printf("TOKEN <KW_CASE, %s>\n", yytext);}
break {printf("TOKEN <KW_BREAK, %s>\n", yytext);}
continue {printf("TOKEN <KW_CONTINUE, %s>\n", yytext);}
default {printf("TOKEN <KW_DEFAULT, %s>\n", yytext);}

\"[^\"\n"]*\" {printf("TOKEN <STRING, %s>\n", yytext);}

">"|"<"|">="|"<="|"=="|"!=" {printf("TOKEN <OPERATOR, %s>\n", yytext);}
"+"|"-"|"/"|"%"|"*"|"=" {printf("TOKEN <MATH_OP, %s>\n", yytext);}
"&&"|"||" {printf("TOKEN <LOGIC_OP, %s>\n", yytext);}

"(" {printf("TOKEN <LPAREN, %s>\n", yytext);}
")" {printf("TOKEN <RPAREN, %s>\n", yytext);}
"{" {printf("TOKEN <LBRACES, %s>\n", yytext);}
"}" {printf("TOKEN <RBRACES, %s>\n", yytext);}
"[" {printf("TOKEN <LBRACKET, %s>\n", yytext);}
"]" {printf("TOKEN <RBRACKET, %s>\n", yytext);}

& {printf("TOKEN <ADD_OP, %s>\n", yytext);}

{NUMBER}    { printf("TOKEN <NUM, %s>\n", yytext); }
[a-zA-Z_][a-zA-Z0-9_]* {printf("TOKEN <ID, %s>\n", yytext);}
; {printf("TOKEN <SEMICOLON, ;>\n");}
. {}

%%

int yywrap(void){}
  
int main()
{   
    yylex();
  
    return 0;
}