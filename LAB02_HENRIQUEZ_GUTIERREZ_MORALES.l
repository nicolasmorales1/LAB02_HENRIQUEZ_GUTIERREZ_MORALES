%{

#include<stdio.h>
#include <stdlib.h>
#include <string.h>
#include<stdbool.h>

int idC = 1;
char ids[];
int Errores = 1;
char ErrorCont[];
char idd[];
char vecID[1000][1000];
bool newID = true;

%}
	
ID 			[_]?[a-zA-Z][0-9a-zA-Z_]*
LONG	[-+]?[0-9]+[Ll]?
IMAGINARIO	[-+]?[0-9]+[Jj]?
ENTERO	[-+]?[0-9]+
DECIMAL	[-+]?[0-9]+"."([0-9]+([eE][-+]?[0-9]+)?)?
CADE    \"[^,)\n]*|\'[^,)\n]*
OPERADOR		[+*/-]
E_Arit		[LONG IMAGINARIO ENTERO DECIMAL][[OPERADOR][LONG IMAGINARIO ENTERO DECIMAL]]*	

%%



"\#"" "*"include"" "*"<".*">"    {fprintf(yyout, "INCLUIR-LIBRERIA:%s", yytext);}
"#".*    {fprintf(yyout, " ");}


"main"			{fprintf(yyout, "MAIN:%s", yytext);}
"void"			{fprintf(yyout, "VOID:%s", yytext);}

"printf"		{fprintf(yyout, "INS-ESCRIBIR:%s", yytext);}
"scanf"			{fprintf(yyout, "INS-LEER:%s", yytext);}

"argc"			{fprintf(yyout, "CONT-ARGUMENTOS:%s", yytext);}

"argv"|"*"*"argv[]"				{fprintf(yyout, "ARGUMENTOS:%s", yytext);}

"if"			{fprintf(yyout, "IF");} 
"else"			{fprintf(yyout, "ELSE");}
"while"				{fprintf(yyout, "WHILE");}
"for"			{fprintf(yyout, "FOR:");}
"break"			{fprintf(yyout, "BREAK");}
"and"			{fprintf(yyout, "AND");}
"continue"			{fprintf(yyout, "CONTINUE");}
"def"			{fprintf(yyout, "DEF");}
"elif"			{fprintf(yyout, "ELIF");}
"import"			{fprintf(yyout, "IMPORT");}
"in"			{fprintf(yyout, "IN:");}
"range"			{fprintf(yyout, "RANGE:");}
"is"			{fprintf(yyout, "IS");}
"not"			{fprintf(yyout, "NOT");}
"or"			{fprintf(yyout, "OR");}
"pass"			{fprintf(yyout, "PASS");}
"print"			{fprintf(yyout, "PRINT");}
"return"			{fprintf(yyout, "RETURN");}



"int"|"double"|"float"|"char"|"string"|"String"			{fprintf(yyout, "TIPO:%s", yytext);}

"False" 			{fprintf(yyout, " FALSE", yytext);}
"True" 			{fprintf(yyout, " TRUE", yytext);}

{ID}			{
						
						if (!strstr(ids, yytext))
						{
									if (idC > 1)
									{
										strcat(ids,";");
										newID = true;
                                        int i;
                                            for(i = 0; i < idC; i++){
                                                if(strcmp(yytext, vecID[i]) == 0) {
                                                    fprintf(yyout, " ID%d : %s ",i, yytext);
                                                    newID = false;
		                                    }                                      
									}
                                    }
                                      if (newID){
                                        strcpy(vecID[idC], yytext);
                                        fprintf(yyout, " ID%d : %s ",idC, yytext);
                                            idC = idC + 1;
                                            
                                        }
									
									 
						}
}

{CADE}	{fprintf(yyout, "CADENA:%s  ", yytext);}
 

"<--"|"=" 		{fprintf(yyout, "OP-ASIGN:%s", yytext);}

{ENTERO}	{fprintf(yyout, "ENTERO:%s  ", yytext);}
{DECIMAL}		{fprintf(yyout, "REAL:%s  ", yytext);}
{LONG}	{fprintf(yyout, "LONG:%s  ", yytext);}
{IMAGINARIO}	{fprintf(yyout, "IMAGINARIO:%s  ", yytext);}



"(" 			{fprintf(yyout, " ABRE:%s", yytext);}
")" 			{fprintf(yyout, " CIERRA:%s", yytext);}
"["						{fprintf(yyout, " COR_ABRE:%s", yytext);}
"]"						{fprintf(yyout, " COR_CIERRA:%s", yytext);}
";"						{fprintf(yyout, " PUNTOYCOMA:%s", yytext);}
","|","						{fprintf(yyout, " COMA:%s", yytext);}
":"						{fprintf(yyout, " DOSPUNTOS:%s", yytext);}
"."						{fprintf(yyout, " PUNTO:%s", yytext);}
">>="			 {fprintf(yyout, " DERIGUAL:%s", yytext);}
"<<="			 {fprintf(yyout, " IZQIGUAL:%s", yytext);}
"+="			  {fprintf(yyout, " INCSUM:%s", yytext);}
"-="			  {fprintf(yyout, " INCRES:%s", yytext);}
"*="			  {fprintf(yyout, " INCMULT:%s", yytext);}
"/="			  {fprintf(yyout, " INCDIV:%s", yytext);}
"//="			 {fprintf(yyout, " ASIGDIV_PISO:%s", yytext);}
"&="			  {fprintf(yyout, " ASIG_AND:%s", yytext);}
"|="			  {fprintf(yyout, " ASIG_OR:%s", yytext);}
"^="			  {fprintf(yyout, " ASIG_XOR:%s", yytext);}
"**="			 {fprintf(yyout, " ASIG_EXP:%s", yytext);}
"%="			  {fprintf(yyout, " ASIG_MOD:%s", yytext);}

"*"				{fprintf(yyout, " MULT:%s", yytext);}			
"+"				{fprintf(yyout, " SUMA:%s", yytext);}
"-"				{fprintf(yyout, " RESTA:%s", yytext);}
"/"				{fprintf(yyout, " DIV:%s", yytext);}
"//"			{fprintf(yyout, " DIV_PISO:%s", yytext);}
"^"		{fprintf(yyout, " EXP:%s", yytext);}
"**"		{fprintf(yyout, " EXP:%s", yytext);}
"%"				{fprintf(yyout, " MOD:%s", yytext);}
"&"						 {fprintf(yyout, " OP_Y:%s", yytext);}
"|"						 {fprintf(yyout, " OP_O:%s", yytext);}
"~"						 {fprintf(yyout, " NEGACION:%s", yytext);}
"=="			{fprintf(yyout, " IGUAL_QUE:%s", yytext);}
">"				{fprintf(yyout, " MAYOR_QUE:%s", yytext);}
"<"				{fprintf(yyout, " MENOR_QUE:%s", yytext);}
"<>"		{fprintf(yyout, " DIFERENTE_DE:%s", yytext);}
"!="		{fprintf(yyout, " DIFERENTE_DE:%s", yytext);}
"<="			{fprintf(yyout, " MENOR_O_IGUAL:%s", yytext);}
">="			{fprintf(yyout, " MAYOR_O_IGUAL:%s", yytext);}

"<<"			  {fprintf(yyout, " MENER_MENOR:%s", yytext);}
">>"			  {fprintf(yyout, " MAYOR_MAYOR:%s", yytext);}



" "				{fprintf(yyout, " ");}	
\t 				{fprintf(yyout, "\t");}
\n				{fprintf(yyout, "\n");}
";"				{fprintf(yyout, " PUNTO-COMA:%s", yytext);}
":"				{fprintf(yyout, " DOS-PUNTOS:%s", yytext);}
","				{fprintf(yyout, " COMA:%s", yytext);}
"//".*\n?       {fprintf(yyout, " ");}

.           	{fprintf(yyout, "ERROR:%s", yytext);
					if (!strstr(ErrorCont, yytext))
					{
						if (Errores > 1)
						{
							strcat(ErrorCont,";");
						}
						strcat(ErrorCont,yytext);
						Errores = Errores + 1;
					}
				}

%%

int yywrap(){}
int main(int argc, char *argv[]) 
{
	printf("se recibio correctamente el archivo de entrada, el argv[1] es: %s\n", argv[1]);
	FILE *fp = fopen(argv[1], "r");
	FILE *out_file = fopen("salida.txt", "w"); // write only
    yyin = fp;
    yyout = out_file;
    yylex();

    fprintf(out_file,"\n\nTABLA DE INDENTIFICADORES\n");
    fprintf(out_file, "Hay %d identificadores\n", idC-1);

    for(int x=1;x<idC;x++)
    {

        fprintf(out_file,"ID %d: %s \n",x,vecID[x]);

    }

    
    
  

    
    fprintf(out_file, "\n");

    fprintf(out_file,"\n\nERRORES LEXICOS\n");
    fprintf(out_file, "Hay %d errores lexicos\n", Errores-1);
    fprintf(out_file, "\n");

    fclose(out_file);
    fclose(fp);
    return(0);
}

