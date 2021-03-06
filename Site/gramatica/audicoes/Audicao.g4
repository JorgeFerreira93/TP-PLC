/*
Grupo 01

*/
/*
exemplo entrada

METADATA
	ID Aud1
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
		ID "AT1"
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
		ID "AT2"
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
/*
exemplo saida

<audicao>
	<metadata>
		<titulo>
			audicao1
		</titulo>
		<subtitulo>
			audicao experimental1
		</subtitulo>
		<tema>
			tema1
		</tema>
		<data>
			11-01-2016
		</data>
		<hora>
			17:30
		</hora>
		<local>
			auditorio
		</local>
		<organizador>
			organizador1
		</organizador>
		<duracao>
			35:00
		</duracao>
	</metadata >
	<atuacoes>
		<atuacao>
			<designacao>
				atuacao1
			</designacao>
			<alunos>
				<aluno>
					<nome>
						aluno1
					</nome>
					<id>
						A1
					</id>
				</aluno>
				<aluno>
					<nome>
						aluno2
					</nome>
					<id>
						A2
					</id>
				</aluno>
			</alunos>
			<professores>
				<nome>
					professor1
				</nome>
				<id>
					P1
				</id>
			</professores>
			<pecas>
				<peca>
					<titulo>
						peca1
					</titulo>
					<id>
						O1
					</id>
				</peca>
				<peca>
					<titulo>
						peca2
					</titulo>
					<id>
						O2
					</id>
				</peca>
			</pecas>
		</atuacao>
		<atuacao>
			<designacao>
				atuacao2
			</designacao>
			<alunos>
				<aluno>
					<nome>
						aluno1
					</nome>
					<id>
						A1
					</id>
				</aluno>

			<pecas>
				<peca>
					<titulo>
						peca3
					</titulo>
					<id>
						O3
					</id>
				</peca>
			</pecas>
		</atuacao>
	</atuacoes>
</audicao>
*/
grammar Audicao;

@header{
        import java.util.*;
        import java.io.File;
        import javax.xml.parsers.DocumentBuilder;
        import javax.xml.parsers.DocumentBuilderFactory;
        import javax.xml.parsers.ParserConfigurationException;
        import javax.xml.transform.Transformer;
        import javax.xml.transform.TransformerException;
        import javax.xml.transform.TransformerFactory;
        import javax.xml.transform.dom.DOMSource;
        import javax.xml.transform.stream.StreamResult;

        import org.w3c.dom.Attr;
        import org.w3c.dom.Document;
        import org.w3c.dom.Element;

        import java.sql.*;
}

@members{
			DocumentBuilderFactory docFactory;
			DocumentBuilder docBuilder;

			// root elements
			Document doc;
			Element rootElement;
			String file;
			String connection;

			public String query(String query,String coluna) throws SQLException
			{
				String result = null;
				Properties p = new Properties();
				p.put("user","root");
				p.put("password","root");
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:8080/gamu",p);

				Statement stmt = null;

				try{
					stmt = c.createStatement();
					ResultSet rs = stmt.executeQuery(query);
                    result = rs.getString(coluna);
				}catch (SQLException e ) {
					 System.out.println(e);
				 } finally {
					 if (stmt != null) { stmt.close(); }
				 }
				 return result;
			}

			public void insert(String query) throws SQLException
			{
				Properties p = new Properties();
				p.put("user","root");
				p.put("password","root");
				Connection c = DriverManager.getConnection("jdbc:mysql://localhost:8080/gamu",p);

				Statement stmt = null;

				try{
					stmt = c.createStatement();
					int rs = stmt.executeUpdate(query);
				}catch (SQLException e ) {
					  System.out.println(e);
				 } finally {
					 if (stmt != null) { stmt.close(); }
				 }
			}
}

s
@init{
		try{
			docFactory = DocumentBuilderFactory.newInstance();
			docBuilder = docFactory.newDocumentBuilder();

			// root elements
			doc = docBuilder.newDocument();
			rootElement = doc.createElement("audicao");
			doc.appendChild(rootElement);
		} catch (ParserConfigurationException pce) {
			pce.printStackTrace();
		}
	}
@after{
		try{
			// write the content into xml file
			TransformerFactory transformerFactory = TransformerFactory.newInstance();
			Transformer transformer = transformerFactory.newTransformer();
			DOMSource source = new DOMSource(doc);
			StreamResult result = new StreamResult(new File("../../audicoes/"+file));
			transformer.transform(source, result);
		}  catch (TransformerException tfe) {
			tfe.printStackTrace();
		}
	  }

  : metadata
    atuacoes[$metadata.audicaoId]
    	{
    		try{
				insert($metadata.query);
				insert($atuacoes.atuacoesInsert);
				insert($atuacoes.alunosInsert);
				insert($atuacoes.professoresInsert);
				insert($atuacoes.pecasInsert);
			}catch (SQLException e ) {
				  System.out.println(e);
			 }
    	}
  ;

metadata returns [String audicaoId, String query]
		:'METADATA'{
						Element filho = doc.createElement("metadata");
                        rootElement.appendChild(filho);
					}
		  audId[filho]
			  {
			  	$audicaoId = $audId.dados;
			  }
		  titulo[filho]
          subtitulo[filho]
          tema[filho]
          data[filho]
          hora[filho]
          local[filho]
          organizador[filho]
          duracao[filho]
 			{
 				$query = "INSERT INTO `audicao` (`audicao_id`, `audicao_titulo`, `audicao_subtitulo`, `audicao_tema`, `audicao_data`, `audicao_hora`, `audicao_local`, `audicao_responsavel`, `audicao_duracao`) VALUES (`"+$audId.dados+"`, `"+$titulo.dados+"`, `"+$subtitulo.dados+"`, `"+$tema.dados+"`, `"+$data.dados+"`, `"+$hora.dados+"`, `"+$local.dados+"`, `"+$organizador.dados+"`, `"+$duracao.dados+"`);";

 			}
		;

titulo [Element pai]
		returns [String dados]
	  : 'TITULO' DADOS {
							Element filho = doc.createElement("titulo");
							filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
							pai.appendChild(filho);
							$dados=$DADOS.text.replaceAll("\"", "");
						}
	  ;

subtitulo [Element pai]
		returns [String dados]
         : 'SUBTITULO' DADOS{
								Element filho = doc.createElement("subtitulo");
								filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
								pai.appendChild(filho);
								$dados=$DADOS.text.replaceAll("\"", "");
							}
	   	 ;

tema [Element pai]
	returns [String dados]
    : 'TEMA' DADOS{
					Element filho = doc.createElement("tema");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
					$dados=$DADOS.text.replaceAll("\"", "");
				}
	;

data [Element pai]
	returns [String dados]
	: 'DATA' DADOS{
					Element filho = doc.createElement("data");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
					$dados=$DADOS.text.replaceAll("\"", "");
				}
	;

hora [Element pai]
	returns [String dados]
    : 'HORA' DADOS{
					Element filho = doc.createElement("hora");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
					$dados=$DADOS.text.replaceAll("\"", "");
				}
	;

local [Element pai]
	returns [String dados]
	 : 'LOCAL' DADOS{
						Element filho = doc.createElement("local");
						filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
						pai.appendChild(filho);
						$dados=$DADOS.text.replaceAll("\"", "");
					}
	 ;

organizador [Element pai]
		returns [String dados]
           : 'ORGANIZADOR' DADOS{
									Element filho = doc.createElement("organizador");
									filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
									pai.appendChild(filho);
									$dados=$DADOS.text.replaceAll("\"", "");
								}
;

duracao [Element pai]
		returns [String dados]
       : 'DURACAO' DADOS{
							Element filho = doc.createElement("duracao");
							filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
							pai.appendChild(filho);
							$dados=$DADOS.text.replaceAll("\"", "");
						}
	   ;

atuacoes [String audicaoId]
		returns [String atuacoesInsert, String alunosInsert,String professoresInsert,String pecasInsert ]
	 	:'ATUACOES' '{' {
							Element filho = doc.createElement("atuacoes");
							rootElement.appendChild(filho);
						}
			 a1=atuacao[filho, $audicaoId] {$atuacoesInsert = $a1.query;
			 							$alunosInsert = $alunosInsert+$a1.alunosInsert;
							       		$professoresInsert = $alunosInsert+$a1.professoresInsert;
							       		$pecasInsert = $alunosInsert+$a1.pecasInsert;}
			(a2=atuacao[filho, $audicaoId]{$atuacoesInsert = $atuacoesInsert+", "+$a2.query;
										$alunosInsert = $alunosInsert+$a2.alunosInsert;
							       		$professoresInsert = $alunosInsert+$a2.professoresInsert;
							       		$pecasInsert = $alunosInsert+$a2.pecasInsert;})* '}'
										{$atuacoesInsert = $atuacoesInsert+";";

										}
		;

atuacao [Element pai, String audicaoId]
		returns [String query, String alunosInsert,String professoresInsert,String pecasInsert]
	   : 'ATUACAO' {
						Element filho = doc.createElement("atuacao");
						pai.appendChild(filho);
					}
	   id[filho]
       designacao[filho]
	       {
	       		String q = "SELECT atuacao_id FROM atuacao WHERE atuacao_id="+$id.dados;
	       		String r = null;
	       		try{
					r = query(q,"atuacao_id");
				}catch (SQLException e ) {
					  System.out.println(e);
				 }
				if(r!=null)
				{
					System.out.println("Atuacao com id "+$id.dados+" j� existe!!!");
					System.exit(1);
				}
	       		$query = "INSERT INTO `atuacao` (`atuacao_id`, `atuacao_designacao`, `atuacao_audicao`) VALUES (`"+$id.dados+"`, `"+$designacao.dados+"`, `"+$audicaoId+"`)";
	       }
       alunos[filho,$id.dados]
       professores[filho,$id.dados]?
       pecas[filho,$id.dados]
	       {
	       		$alunosInsert = $alunos.alunosInsert;
	       		$professoresInsert = $professores.professoresInsert;
	       		$pecasInsert = $pecas.pecasInsert;
	       }
	   ;

designacao [Element pai]
		returns [String dados]
		  : 'DESIGNACAO' DADOS{
								Element filho = doc.createElement("designacao");
								filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
								pai.appendChild(filho);
								$dados=$DADOS.text.replaceAll("\"", "");
							}
		  ;

alunos [Element pai, String atuacao_id]
		returns [String alunosInsert]
	  : 'ALUNOS' '{' {
						Element filho = doc.createElement("alunos");
						pai.appendChild(filho);
					}
					a1=aluno[filho,atuacao_id] {$alunosInsert = $a1.query;}
			(a2=aluno[filho,atuacao_id]{$alunosInsert = $alunosInsert+", "+$a2.query;})* '}'
										{$alunosInsert = $alunosInsert+";";}
	  ;

aluno [Element pai, String atuacao_id]
	returns [String query]
      : 'ALUNO'{
				Element filho = doc.createElement("aluno");
				pai.appendChild(filho);
			}
	  	nome[filho]
	  	id[filho]
		  	{
		       		String q = "SELECT aluno_id FROM aluno WHERE aluno_id="+$id.dados;
		       		String r = null;
		       		try{
						r = query(q,"aluno_id");
					}catch (SQLException e ) {
						  System.out.println(e);
					 }
					if(r==null)
					{
						System.out.println("Aluno com id "+$id.dados+" n�o existe!!!");
						System.exit(1);
					}
		       		$query = "INSERT INTO `atuacao_aluno` (`atuacao_id`, `aluno_id`) VALUES (`"+atuacao_id+"`, `"+$id.dados+"`)";

		    }
	  ;

nome [Element pai]
	returns [String dados]
    : 'NOME' DADOS{
					Element filho = doc.createElement("nome");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
					$dados=$DADOS.text.replaceAll("\"", "");
				}
	;

audId [Element pai]
	  returns [String dados]
  : 'ID' ID{
				Element filho = doc.createElement("id");
				filho.appendChild(doc.createTextNode($ID.text.replaceAll("\"", "")));
				pai.appendChild(filho);
				String q = "SELECT audicao_id FROM audicao WHERE audicao_id="+$ID.text;
				String r = null;
				try{
				 	r = query(q,"audicao_id");
				}catch (SQLException e ) {
					  System.out.println(e);
				 }
				if(r!=null)
				{
					System.out.println("Audi��o com id "+$ID.text+" j� existe!!!");
					System.exit(1);
				}

				/*if(new File("../../audicoes/"+file).exists()){
					System.out.println("Audi��o com nome "+file+" j� existe!!!");
					System.exit(1);
				}*/
				file = $ID.text.replaceAll("\"", "")+".xml";
				$dados=$ID.text.replaceAll("\"", "");
			}
  ;

id [Element pai]
	returns [String dados]
  : 'ID' ID{
				Element filho = doc.createElement("id");
				filho.appendChild(doc.createTextNode($ID.text.replaceAll("\"", "")));
				pai.appendChild(filho);
				$dados=$ID.text.replaceAll("\"", "");
			}
  ;

professores [Element pai, String atuacao_id]
			returns [String professoresInsert]
           : 'PROFESSORES' '{' {
									Element filho = doc.createElement("professores");
									pai.appendChild(filho);
								}
			a1=professor[filho,atuacao_id] {$professoresInsert = $a1.query;}
			(a2=professor[filho,atuacao_id]{$professoresInsert = $professoresInsert+", "+$a2.query;})* '}'
										{$professoresInsert = $professoresInsert+";";}
		   ;

professor [Element pai, String atuacao_id]
		returns[String query]
		 : 'PROFESSOR'{
						Element filho = doc.createElement("professor");
						pai.appendChild(filho);
					}
		  	nome[filho]
		  	id [filho]
		  	{
		       		String q = "SELECT professor_id FROM professor WHERE professor_id="+$id.dados;
		       		String r = null;
		       		try{
						r = query(q,"professor_id");
					}catch (SQLException e ) {
						  System.out.println(e);
					 }
					if(r==null)
					{
						System.out.println("Professor com id "+$id.dados+" n�o existe!!!");
						System.exit(1);
					}
		       		$query = "INSERT INTO `atuacao_professor` (`atuacao_id`, `professor_id`) VALUES (`"+atuacao_id+"`, `"+$id.dados+"`)";

		    }
		 ;

pecas [Element pai, String atuacao_id]
		returns [String pecasInsert]
	 : 'PECAS' '{' {
						Element filho = doc.createElement("pecas");
						pai.appendChild(filho);
					}
		a1=peca[filho,atuacao_id] {$pecasInsert = $a1.query;}
			(a2=peca[filho,atuacao_id]{$pecasInsert = $pecasInsert+", "+$a2.query;})* '}'
										{$pecasInsert = $pecasInsert+";";}
	 ;

peca [Element pai, String atuacao_id]
	returns[String query]
	: 'PECA' {
				Element filho = doc.createElement("peca");
				pai.appendChild(filho);
			}


		titulo[filho]
		id[filho]
		{
		       		String q = "SELECT obra_id FROM obra WHERE obra_id="+$id.dados;
		       		String r = null;
		       		try{
						r = query(q,"obra_id");
					}catch (SQLException e ) {
						  System.out.println(e);
					 }
					if(r==null)
					{
						System.out.println("Obra com id "+$id.dados+" n�o existe!!!");
						System.exit(1);
					}
		       		$query = "INSERT INTO `atuacao_obra` (`atuacao_id`, `obra_id`) VALUES (`"+atuacao_id+"`, `"+$id.dados+"`)";

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



 WS
	  :   [ \t\r\n]  -> skip
	  ;

fragment
STRING
	   :  '"' ( ESC_SEQ | ~('"') )* '"';

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
