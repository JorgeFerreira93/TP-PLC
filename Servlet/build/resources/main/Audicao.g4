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
        public ArrayList<Atuacao> atuacoes;

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

    public class Erro {
        public ArrayList<String> alunos;
        public ArrayList<String> professores;
        public ArrayList<String> pecas;

        public Erro(){
            this.alunos = new ArrayList<>();
            this.professores = new ArrayList<>();
            this.pecas = new ArrayList<>();
        }

        public boolean haErro(){
            return !(this.alunos.isEmpty() && this.professores.isEmpty() && this.pecas.isEmpty());
        }
    }
}

s returns[String a]
    @init{
            Connection con = null;
            Audicao audicao = new Audicao();
            Erro erro = new Erro();

            try{
                con = Connect.connect();
            }
            catch (SQLException | ClassNotFoundException e) {
                e.printStackTrace();
            }
        } :
        metadata[audicao]
        atuacoes[con, audicao.atuacoes, erro]
        {
            if(erro.haErro()){

                String json = "{\"erro\": \"true\",\"alunos\": [ ";

                for(String s: erro.alunos){
                    json += "\"" + s + "\",";
                }
                json = json.substring(0, json.length() - 1);
                json += "],\"professores\": [ ";

                for(String s: erro.professores){
                    json += "\"" + s + "\",";
                }
                json = json.substring(0, json.length() - 1);
                json += "],\"obras\": [ ";

                for(String s: erro.pecas){
                    json += "\"" + s + "\",";
                }

                json = json.substring(0, json.length() - 1);

                json += "]}";

                System.out.println(json);

                $a = json;

                System.out.println(erro.alunos.toString());
                System.out.println(erro.professores.toString());
                System.out.println(erro.pecas.toString());
            }
            else{
                for(Atuacao a: audicao.atuacoes){
                    System.out.println("Atuacao 1:");
                    System.out.println(a.alunos.toString());
                    System.out.println(a.professores.toString());
                    System.out.println(a.pecas.toString());
                }
            }

            try {
                con.close();
            }
            catch (Exception e) {
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

atuacoes[Connection con, ArrayList<Atuacao> ats, Erro erro]:
        {Atuacao atuacao = new Atuacao();}
        'ATUACOES' '{'
            (atuacao[con, atuacao, erro] {ats.add(atuacao); atuacao = new Atuacao();} )+
        '}'
		;

atuacao[Connection con, Atuacao at, Erro erro]
	   : 'ATUACAO'
       designacao[at]
       alunos[con, at, erro]
       professores[con, at, erro]?
       pecas[con, at, erro]
	   ;

designacao[Atuacao at]
		  : 'DESIGNACAO' DADOS {at.designacao = $DADOS.text;}
		  ;

alunos[Connection con, Atuacao at, Erro erro]
	  : 'ALUNOS' '{' aluno[con, at, erro]+ '}'
	  ;

aluno[Connection con, Atuacao at, Erro erro]
      : 'ALUNO'
	  	nome
	  	id {
            try {
                String nome;
                PreparedStatement ps = con.prepareStatement("SELECT 1 FROM aluno WHERE aluno_id = '" + $id.idd + "'");
	  	        System.out.println("SELECT aluno_nome FROM aluno WHERE aluno_id = '" + $id.idd + "'");
                ResultSet rs = ps.executeQuery();
                if(rs.next()) {
                    at.alunos.add($id.idd);
                }
                else{
                    erro.alunos.add($id.idd);
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

id returns[String idd]
  : 'ID' ID {$idd = $ID.text;}
  ;

professores[Connection con, Atuacao at, Erro erro]
           : 'PROFESSORES' '{' professor[con, at, erro]+ '}'
		   ;

professor[Connection con, Atuacao at, Erro erro]
		 : 'PROFESSOR'
		  	nome
		  	id{
                  try {
                      String nome;
                      PreparedStatement ps = con.prepareStatement("SELECT 1 FROM professor WHERE professor_id = '" + $id.idd + "'");

                      ResultSet rs = ps.executeQuery();
                      if(rs.next()) {
                          at.professores.add($id.idd);
                      }
                      else{
                          erro.professores.add($id.idd);
                      }
                  } catch (SQLException e) {
                      e.printStackTrace();
                  }
            }
		 ;

pecas[Connection con, Atuacao at, Erro erro]
	 : 'PECAS' '{' peca[con, at, erro]+ '}'
	 ;

peca[Connection con, Atuacao at, Erro erro]
	: 'PECA'
		titulo
		id{
            try {
                String nome;
                PreparedStatement ps = con.prepareStatement("SELECT 1 FROM obra WHERE obra_id = '" + $id.idd + "'");
System.out.println("SELECT 1 FROM obra WHERE obra_id = '" + $id.idd + "'");
                ResultSet rs = ps.executeQuery();
                if(rs.next()) {
                    at.pecas.add($id.idd);

                }
                else{
                    erro.pecas.add($id.idd);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }
          }
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
