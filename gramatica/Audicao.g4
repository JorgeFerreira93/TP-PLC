/*
Grupo 01

*/
/*
METADATA
	TITULO "audicao1"
	SUBTITULO "audicao experimental"
	TEMA "tema1"
	DATA "11-01-2016"
	HORA "17:30"
	LOCAL "auditorio"
	ORGANIZADOR "organizador1"
	DURACAO "35:00"

ATUACOES{
	ATUACAO
		DESIGNACAO "atuacao1"
		ALUNOS{
			ALUNO
				NOME "aluno1
				ID A1
			ALUNO
				NOME "aluno2"
				ID A2
		}
		PROFESSORES{
			PROFESSOR
				NOME "professor1"
				ID P1
		}
		PECAS{
			PECA
				TITULO "peca1"
				ID O1
			PECA
				TITULO "peca2"
				ID O2
		}
	ATUACAO
		DESIGNACAO "atuacao2"
		ALUNOS{
			ALUNO
				NOME "aluno1"
				ID A1
		}
		PECAS{
			PECA
				TITULO "peca3"
				ID O3
		}
}

*/

grammar Audicao;
/*
@header{
        import java.util.*;
}


*/
s : metadata
    atuacoes
    {System.out.println("leu com sucesso");}
  ;

metadata: 'METADATA' titulo
          subtitulo
          tema
          data
          hora
          local
          organizador
          duracao
		;

titulo: 'TITULO' DADOS
	  ;

subtitulo: 'SUBTITULO' DADOS
	   	 ;

tema: 'TEMA' DADOS
	;

data: 'DATA' DADOS
	;

hora: 'HORA' DADOS
	;

local: 'LOCAL' DADOS
	 ;

organizador: 'ORGANIZADOR' DADOS
		   ;

duracao: 'DURACAO' DADOS
	   ;

atuacoes: 'ATUACOES' '{' (atuacao)+ '}'
		;

atuacao: 'ATUACAO' designacao alunos professores? pecas
	   ;

designacao: 'DESIGNACAO' DADOS
		  ;

alunos: 'ALUNOS' '{' (aluno)+ '}'
	  ;

aluno: 'ALUNO' nome id
	  ;

nome: 'NOME' DADOS
	;

id: 'ID' ID
  ;

professores: 'PROFESSORES' '{' (professor)+ '}'
		   ;

professor: 'PROFESSOR' nome id
		 ;

pecas: 'PECAS' '{' (peca)+ '}'
	 ;

peca: 'PECA' titulo id
	;


/*--------------- Lexer ---------------------------------------*/
DADOS: STRING
	;

TIPO: ('A'|'R')
     ;

ID  :	('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'0'..'9'|'_'|'-')*
    ;


INT :	'0'..'9'+
    ;

WS  :   [ \t\r\n]  -> skip
    ;

fragment
STRING
    :  '"' ( ESC_SEQ | ~('"') )* '"'
    ;

fragment
ESC_SEQ
    :   '\\' ('b'|'t'|'n'|'f'|'r'|'\"'|'\''|'\\')
    |   UNICODE_ESC
    |   OCTAL_ESC
    ;

fragment
OCTAL_ESC
    :   '\\' ('0'..'3') ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7') ('0'..'7')
    |   '\\' ('0'..'7')
    ;

fragment
UNICODE_ESC
    :   '\\' 'u' HEX_DIGIT HEX_DIGIT HEX_DIGIT HEX_DIGIT
    ;
fragment
HEX_DIGIT : ('0'..'9'|'a'..'f'|'A'..'F')
    ;
