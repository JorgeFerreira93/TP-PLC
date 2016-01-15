grammar Audicao;

@header{

    package parser;

    import data.Connect;
    import java.sql.*;
    import java.util.ArrayList;
    import java.util.HashMap;
}

@members{
    public class Audicao {

        public String id, titulo, subtitulo, tema, data, hora, local, organizador, duracao = "";
        public ArrayList<String> atuacoes;

        public Audicao(){
            this.atuacoes = new ArrayList<>();
        }

        public String toString(){
            return id + ", " + subtitulo + ", " + tema;
        }
    }

    public class Atuacao {
        public String designacao = "";
        public ArrayList<String> alunos;
        public ArrayList<String> professores;
        public ArrayList<String> pecas;

        public Atuacao(){
            this.alunos = new ArrayList<>();
            this.professores = new ArrayList<>();
            this.pecas = new ArrayList<>();
        }
    }
}

s returns[String a]
    @init{
            Connection con = null;
            Audicao audicao = new Audicao();
            HashMap<String, String> erros = new HashMap<>();

            try{
                con = Connect.connect();
            }
            catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        } :
        metadata[audicao] {
            System.out.println(audicao.toString());
        }
        atuacoes[con, audicao.atuacoes, erros]
        {
                            try {
                                con.close();
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
        }
  ;

metadata[Audicao audicao]: 'METADATA'
		  audId {audicao.titulo = $audId.text;}
		  titulo
		  subtitulo[audicao]
          tema[audicao]
          data[audicao]
          hora[audicao]
          local[audicao]
          organizador[audicao]
          duracao[audicao]
		;

titulo: 'TITULO' DADOS
	  ;

subtitulo[Audicao audicao]: 'SUBTITULO' DADOS {audicao.subtitulo = $DADOS.text;}
	   	 ;

tema[Audicao audicao] : 'TEMA' DADOS {audicao.tema = $DADOS.text;}
	;

data[Audicao audicao]: 'DATA' DADOS {audicao.data = $DADOS.text;}
	;

hora[Audicao audicao]
    : 'HORA' DADOS {audicao.hora = $DADOS.text;}
	;

local[Audicao audicao]: 'LOCAL' DADOS {audicao.local = $DADOS.text;}
	 ;

organizador[Audicao audicao]
           : 'ORGANIZADOR' DADOS {audicao.organizador = $DADOS.text;}
;

duracao[Audicao audicao]
       : 'DURACAO' DADOS {audicao.duracao = $DADOS.text;}
	   ;

atuacoes[Connection con, ArrayList<String> ats, HashMap<String, String> erros]:
        {Atuacao atuacao = new Atuacao();}
        'ATUACOES' '{'
            (atuacao[con, atuacao, erros] )+
        '}'
		;

atuacao[Connection con, Atuacao at, HashMap<String, String> erros]
	   : 'ATUACAO'
       designacao[at]
       alunos[con, erros]
       professores?
       pecas
	   ;

designacao[Atuacao at]
		  : 'DESIGNACAO' DADOS {at.designacao = $DADOS.text;}
		  ;

alunos[Connection con, HashMap<String, String> erros]
	  : 'ALUNOS' '{' aluno[con, erros]+ '}'
	  ;

aluno[Connection con, HashMap<String, String> erros]
      : 'ALUNO'
	  	nome
	  	id {


            try {
                String nome;
                PreparedStatement ps = con.prepareStatement("SELECT aluno_nome FROM aluno WHERE aluno_id = '" + $id.text + "'");
	  	        System.out.println("SELECT aluno_nome FROM aluno WHERE aluno_id = '" + $id.text + "'");
                ResultSet rs = ps.executeQuery();
                if(rs.next()) {
                    nome = rs.getString(1);
                    System.out.println("dsa");
                }
                else{
                    erros.put("Aluno", $id.text);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
	  	}
	  ;

nome
    : 'NOME' DADOS
	;

audId
  : 'ID' ID
  ;

id
  : 'ID' ID
  ;

professores
           : 'PROFESSORES' '{' professor+ '}'
		   ;

professor
		 : 'PROFESSOR'
		  	nome
		  	id
		 ;

pecas
	 : 'PECAS' '{' peca+
		 '}'
	 ;

peca
	: 'PECA'
		titulo
		id
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
