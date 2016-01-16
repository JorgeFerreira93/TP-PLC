grammar Audicao;

@header{

    package parser;

    import data.Connect;
    import java.sql.*;
    import java.util.ArrayList;
    import java.util.HashMap;
    import java.text.DateFormat;
    import java.text.SimpleDateFormat;
    import java.util.Date;
    import java.util.Locale;
    import java.time.format.DateTimeFormatter;
    import java.time.LocalDate;
}

@members{

    public class Audicao {

        public String id, titulo, subtitulo, tema, data, hora, local, organizador, duracao = "";
        public ArrayList<Atuacao> atuacoes;

        public Audicao(){
            this.atuacoes = new ArrayList<>();
        }

        public String toString(){
            return id + ", " + titulo + ", " + subtitulo + ", " + tema + ", " + data + ", " + hora + ", " + local + ", " + organizador + ", " + duracao;
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

@rulecatch{
    catch (RecognitionException e) {
            System.out.println("das");
            throw e;
        }
}

s returns[Audicao a, Erro e, Connection con]
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
        metadata[audicao, con, erro]
        atuacoes[con, audicao.atuacoes, erro]
        {
            $a = audicao;
            $e = erro;
            $con = con;
        }
  ;

metadata[Audicao audicao, Connection con, Erro erro]: 'METADATA'
		  audId[audicao]
		  titulo[audicao]
		  subtitulo[audicao]
          tema[audicao]
          data[audicao]
          hora[audicao]
          local[audicao]
          organizador[audicao, con, erro]
          duracao[audicao]
		;

titulo[Audicao audicao]: 'TITULO' DADOS {audicao.titulo = $DADOS.text.replaceAll("(^\")|(\"$)","");}
	  ;

subtitulo[Audicao audicao]: 'SUBTITULO' DADOS {audicao.subtitulo = $DADOS.text.replaceAll("(^\")|(\"$)","");}
	   	 ;

tema[Audicao audicao] : 'TEMA' DADOS {audicao.tema = $DADOS.text.replaceAll("(^\")|(\"$)","");}
	;

data[Audicao audicao]: 'DATA' a=INT '-' m=INT '-' d=INT {
                            String aux = "" + $a.int + "-" + $m.int + "-" + $d.int;
                            audicao.data = aux;}
	;

hora[Audicao audicao]
    : 'HORA' DADOS {audicao.hora = $DADOS.text.replaceAll("(^\")|(\"$)","");}
	;

local[Audicao audicao]: 'LOCAL' DADOS {audicao.local = $DADOS.text.replaceAll("(^\")|(\"$)","");}
	 ;

organizador[Audicao audicao, Connection con, Erro erro]
           : 'ORGANIZADOR' DADOS {
                    String id = $DADOS.text.replaceAll("(^\")|(\"$)","");

                    try {
                          PreparedStatement ps = con.prepareStatement("SELECT 1 FROM professor WHERE professor_id = '" + id + "'");

                          ResultSet rs = ps.executeQuery();
                          if(rs.next()) {
                              audicao.organizador = id;
                          }
                          else{
                              erro.professores.add(id);
                          }
                      } catch (SQLException e) {
                          e.printStackTrace();
                      }

                    }
;

duracao[Audicao audicao]
       : 'DURACAO' DADOS {audicao.duracao = $DADOS.text.replaceAll("(^\")|(\"$)","");}
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
		  : 'DESIGNACAO' DADOS {at.designacao = $DADOS.text.replaceAll("(^\")|(\"$)","");}
		  ;

alunos[Connection con, Atuacao at, Erro erro]
	  : 'ALUNOS' '{' aluno[con, at, erro](',' aluno[con, at, erro])* '}'
	  ;

aluno[Connection con, Atuacao at, Erro erro]
      : id {
            try {
                String nome;
                PreparedStatement ps = con.prepareStatement("SELECT 1 FROM aluno WHERE aluno_id = '" + $id.idd + "'");
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

audId[Audicao audicao]
  : 'ID' ID {audicao.id = $ID.text;}
  ;

id returns[String idd]
  : ID {$idd = $ID.text;}
  ;

professores[Connection con, Atuacao at, Erro erro]
           : 'PROFESSORES' '{' professor[con, at, erro](',' professor[con, at, erro])* '}'
		   ;

professor[Connection con, Atuacao at, Erro erro]
		 : id{
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
	 : 'PECAS' '{' peca[con, at, erro](',' peca[con, at, erro])* '}'
	 ;

peca[Connection con, Atuacao at, Erro erro]
	: id{
            try {
                String nome;
                PreparedStatement ps = con.prepareStatement("SELECT 1 FROM obra WHERE obra_id = '" + $id.idd + "'");
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
