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

                System.out.println(audicao.toString());

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
            }
            else{
                try {
                    PreparedStatement ps = con.prepareStatement("INSERT INTO audicao VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)");
                    ps.setString(1, audicao.id);
                    ps.setString(2, audicao.titulo);
                    ps.setString(3, audicao.subtitulo);
                    ps.setString(4, audicao.tema);
                    ps.setString(5, audicao.data);
                    ps.setString(6, audicao.hora);
                    ps.setString(7, audicao.local);
                    ps.setString(8, audicao.organizador);
                    ps.setString(9, audicao.duracao);
                    System.out.println(ps.toString());
                            ps.executeUpdate();

                    for(Atuacao a: audicao.atuacoes){
                        ps = con.prepareStatement("INSERT INTO atuacao VALUES (?, ?, ?)");
                        ps.setString(1, a.designacao);
                        ps.setString(2, a.designacao);
                        ps.setString(3, audicao.id);

                        System.out.println(ps.toString());

                        ps.executeUpdate();

                        for(String aluno: a.alunos){
                            ps = con.prepareStatement("INSERT INTO atuacao_aluno VALUES (?, ?)");
                            ps.setString(1, a.designacao);
                            ps.setString(2, aluno);
                            ps.executeUpdate();
                            System.out.println(ps.toString());
                        }

                        for(String professor: a.professores){
                            ps = con.prepareStatement("INSERT INTO atuacao_professor VALUES (?, ?)");
                            ps.setString(1, a.designacao);
                            ps.setString(2, professor);
                            ps.executeUpdate();
                            System.out.println(ps.toString());
                        }

                        for(String obra: a.pecas){
                            ps = con.prepareStatement("INSERT INTO atuacao_obra VALUES (?, ?)");
                            ps.setString(1, a.designacao);
                            ps.setString(2, obra);
                            ps.executeUpdate();
                            System.out.println(ps.toString());
                        }
                    }
                 } catch (SQLException e) {
                     e.printStackTrace();
                 } finally {
                     try {
                         con.close();
                     } catch (Exception e) {
                         e.printStackTrace();
                     }
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
		  audId[audicao]
		  titulo[audicao]
		  subtitulo[audicao]
          tema[audicao]
          data[audicao]
          hora[audicao]
          local[audicao]
          organizador[audicao]
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

organizador[Audicao audicao]
           : 'ORGANIZADOR' DADOS {audicao.organizador = $DADOS.text.replaceAll("(^\")|(\"$)","");}
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
	  : 'ALUNOS' '{' aluno[con, at, erro]+ '}'
	  ;

aluno[Connection con, Atuacao at, Erro erro]
      : 'ALUNO'
	  	nome
	  	id {
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

nome
    : 'NOME' DADOS
	;

audId[Audicao audicao]
  : 'ID' ID {audicao.id = $ID.text;}
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
		'TITULO' DADOS
		id{
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
