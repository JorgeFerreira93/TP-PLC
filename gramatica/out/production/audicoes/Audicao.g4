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
}

@members{
			DocumentBuilderFactory docFactory;
			DocumentBuilder docBuilder;

			// root elements
			Document doc;
			Element rootElement;
			String file;
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
    atuacoes
  ;

metadata: 'METADATA'{
						Element filho = doc.createElement("metadata");
                        rootElement.appendChild(filho);
					}
		  audId[filho]
		  titulo[filho]
          subtitulo[filho]
          tema[filho]
          data[filho]
          hora[filho]
          local[filho]
          organizador[filho]
          duracao[filho]
		;

titulo [Element pai]
	  : 'TITULO' DADOS {
							Element filho = doc.createElement("titulo");
							filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
							pai.appendChild(filho);
						}
	  ;

subtitulo [Element pai]
         : 'SUBTITULO' DADOS{
								Element filho = doc.createElement("subtitulo");
								filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
								pai.appendChild(filho);
							}
	   	 ;

tema [Element pai]
    : 'TEMA' DADOS{
					Element filho = doc.createElement("tema");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
				}
	;

data [Element pai]
	: 'DATA' DADOS{
					Element filho = doc.createElement("data");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
				}
	;

hora [Element pai]
    : 'HORA' DADOS{
					Element filho = doc.createElement("hora");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
				}
	;

local [Element pai]
	 : 'LOCAL' DADOS{
						Element filho = doc.createElement("local");
						filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
						pai.appendChild(filho);
					}
	 ;

organizador [Element pai]
           : 'ORGANIZADOR' DADOS{
									Element filho = doc.createElement("organizador");
									filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
									pai.appendChild(filho);
								}
;

duracao [Element pai]
       : 'DURACAO' DADOS{
							Element filho = doc.createElement("duracao");
							filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
							pai.appendChild(filho);
						}
	   ;

atuacoes: 'ATUACOES' '{' {
							Element filho = doc.createElement("atuacoes");
							rootElement.appendChild(filho);
						}
			(atuacao[filho])+ '}'
		;

atuacao [Element pai]
	   : 'ATUACAO' {
						Element filho = doc.createElement("atuacao");
						pai.appendChild(filho);
					}
       designacao[filho]
       alunos[filho]
       professores[filho]?
       pecas[filho]
	   ;

designacao [Element pai]
		  : 'DESIGNACAO' DADOS{
								Element filho = doc.createElement("designacao");
								filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
								pai.appendChild(filho);
							}
		  ;

alunos [Element pai]
	  : 'ALUNOS' '{' {
						Element filho = doc.createElement("atuacao");
						pai.appendChild(filho);
					}
		(aluno[filho])+ '}'
	  ;

aluno [Element pai]
      : 'ALUNO'{
				Element filho = doc.createElement("atuacao");
				pai.appendChild(filho);
			}
	  	nome[filho]
	  	id[filho]
	  ;

nome [Element pai]
    : 'NOME' DADOS{
					Element filho = doc.createElement("nome");
					filho.appendChild(doc.createTextNode($DADOS.text.replaceAll("\"", "")));
					pai.appendChild(filho);
				}
	;

audId [Element pai]
  : 'ID' ID{
				Element filho = doc.createElement("id");
				filho.appendChild(doc.createTextNode($ID.text.replaceAll("\"", "")));
				pai.appendChild(filho);
				file = $ID.text.replaceAll("\"", "")+".xml";
				if(new File("../../audicoes/"+file).exists()){
					System.out.println("Audição com nome "+file+" já existe!!!");
					System.exit(1);
				}
			}
  ;

id [Element pai]
  : 'ID' ID{
				Element filho = doc.createElement("id");
				filho.appendChild(doc.createTextNode($ID.text.replaceAll("\"", "")));
				pai.appendChild(filho);
			}
  ;

professores [Element pai]
           : 'PROFESSORES' '{' {
									Element filho = doc.createElement("atuacao");
									pai.appendChild(filho);
								}
			(professor[filho])+ '}'
		   ;

professor [Element pai]
		 : 'PROFESSOR'{
						Element filho = doc.createElement("atuacao");
						pai.appendChild(filho);
					}
		  	nome[filho]
		  	id [filho]
		 ;

pecas [Element pai]
	 : 'PECAS' '{' {
						Element filho = doc.createElement("atuacao");
						pai.appendChild(filho);
					}
		(peca[filho])+ '}'
	 ;

peca [Element pai]
	: 'PECA' {
				Element filho = doc.createElement("atuacao");
				pai.appendChild(filho);
			}


		titulo[filho]
		id[filho]
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
