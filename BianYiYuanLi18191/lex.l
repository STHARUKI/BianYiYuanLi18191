%{ 
#include <stdio.h>
%} 
WHILE while
BREAK break
CONTINUE continue
IF if
ELSE else
FLOAT float
INT int
RETURN return
ADD "+"
SUB "-"
MUL "*"
DIV "/"
EQUALANDBIG ">="
EQUALANDSMALL "<="
EQUAL "=="
ASSIGN "="
LPAR "("
RPAR ")"
LSPAR "{"
PSPAR "}"
END ";"
BOOLNUMBER "true"|"false"
ID [A-Za-z_][A-Za-z0-9_]*
INTNUMBER ("-")?[0-9]+
FLOATNUMBER [0-9]+(".")?[0-9]+
OTHERS .

%%
\n {;}
" " {;}
{WHILE} {printf("<$WHILE,->\n");}
{BREAK} {printf("<$BREAK,->\n");}
{CONTINUE} {printf("<$CONTINUE,->\n");}
{IF} {printf("<$IF,->\n");}
{ELSE} {printf("<$ELSE,->\n");}
{FLOAT} {printf("<$FLOAT,->\n");}
{INT} {printf("<$INT,->\n");}
{RETURN} {printf("<$RETURN,->\n");}
{BOOLNUMBER} {printf("<$BOOLNUMBER,%s>\n",yytext);}
{ID} {printf("<$ID,Pointer to %s's symbol table entry>\n",yytext);}
{ADD} {printf("<$ADD,->\n");}
{SUB} {printf("<$SUB,->\n");}
{MUL} {printf("<$MUL,->\n");}
{DIV} {printf("<$DIV,->\n");}
{EQUALANDBIG} {printf("<$EQUALANDBIG,->\n");} 
{EQUALANDSMALL} {printf("<$EQUALANDSMALL,->\n");}
{EQUAL} {printf("<$EQUAL,->\n");}
{ASSIGN} {printf("<$ASSIGN,->\n");}
{LPAR} {printf("<$LPAR,->\n");}
{RPAR} {printf("<$RPAR,->\n");}
{LSPAR} {printf("<$LSPAR,->\n");}
{PSPAR} {printf("<$PSPAR,->\n");}
{END} {printf("<$END,->\n");}
{INTNUMBER} {printf("<$INTNUMBER,%s>\n",yytext);}
{FLOATNUMBER} {printf("<$FLOATNUMBER,%s>\n",yytext);}
[A-Za-z0-9_]* {fprintf(stderr,"ERROR! Unable to find a matching rule for %s \n",yytext);}
{OTHERS} {fprintf(stderr,"ERROR! Unable to find a matching rule for %s \n",yytext);}
%%
int main(void) { 
	yylex(); 
	return 0;
}

int yywrap()
{
	return 1;
}

