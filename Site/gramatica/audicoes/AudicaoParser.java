// Generated from C:/xampp/htdocs/TP_PLC/Site/gramatica/audicoes\Audicao.g4 by ANTLR 4.5.1

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

import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.misc.*;
import org.antlr.v4.runtime.tree.*;
import java.util.List;
import java.util.Iterator;
import java.util.ArrayList;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class AudicaoParser extends Parser {
	static { RuntimeMetaData.checkVersion("4.5.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, DADOS=23, TIPO=24, ID=25, 
		INT=26, WS=27;
	public static final int
		RULE_s = 0, RULE_metadata = 1, RULE_titulo = 2, RULE_subtitulo = 3, RULE_tema = 4, 
		RULE_data = 5, RULE_hora = 6, RULE_local = 7, RULE_organizador = 8, RULE_duracao = 9, 
		RULE_atuacoes = 10, RULE_atuacao = 11, RULE_designacao = 12, RULE_alunos = 13, 
		RULE_aluno = 14, RULE_nome = 15, RULE_audId = 16, RULE_id = 17, RULE_professores = 18, 
		RULE_professor = 19, RULE_pecas = 20, RULE_peca = 21;
	public static final String[] ruleNames = {
		"s", "metadata", "titulo", "subtitulo", "tema", "data", "hora", "local", 
		"organizador", "duracao", "atuacoes", "atuacao", "designacao", "alunos", 
		"aluno", "nome", "audId", "id", "professores", "professor", "pecas", "peca"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'METADATA'", "'TITULO'", "'SUBTITULO'", "'TEMA'", "'DATA'", "'HORA'", 
		"'LOCAL'", "'ORGANIZADOR'", "'DURACAO'", "'ATUACOES'", "'{'", "'}'", "'ATUACAO'", 
		"'DESIGNACAO'", "'ALUNOS'", "'ALUNO'", "'NOME'", "'ID'", "'PROFESSORES'", 
		"'PROFESSOR'", "'PECAS'", "'PECA'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, null, null, "DADOS", 
		"TIPO", "ID", "INT", "WS"
	};
	public static final Vocabulary VOCABULARY = new VocabularyImpl(_LITERAL_NAMES, _SYMBOLIC_NAMES);

	/**
	 * @deprecated Use {@link #VOCABULARY} instead.
	 */
	@Deprecated
	public static final String[] tokenNames;
	static {
		tokenNames = new String[_SYMBOLIC_NAMES.length];
		for (int i = 0; i < tokenNames.length; i++) {
			tokenNames[i] = VOCABULARY.getLiteralName(i);
			if (tokenNames[i] == null) {
				tokenNames[i] = VOCABULARY.getSymbolicName(i);
			}

			if (tokenNames[i] == null) {
				tokenNames[i] = "<INVALID>";
			}
		}
	}

	@Override
	@Deprecated
	public String[] getTokenNames() {
		return tokenNames;
	}

	@Override

	public Vocabulary getVocabulary() {
		return VOCABULARY;
	}

	@Override
	public String getGrammarFileName() { return "Audicao.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public ATN getATN() { return _ATN; }


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

	public AudicaoParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class SContext extends ParserRuleContext {
		public MetadataContext metadata;
		public AtuacoesContext atuacoes;
		public MetadataContext metadata() {
			return getRuleContext(MetadataContext.class,0);
		}
		public AtuacoesContext atuacoes() {
			return getRuleContext(AtuacoesContext.class,0);
		}
		public SContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_s; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterS(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitS(this);
		}
	}

	public final SContext s() throws RecognitionException {
		SContext _localctx = new SContext(_ctx, getState());
		enterRule(_localctx, 0, RULE_s);

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
			
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(44);
			((SContext)_localctx).metadata = metadata();
			setState(45);
			((SContext)_localctx).atuacoes = atuacoes(((SContext)_localctx).metadata.audicaoId);

			    		try{
							insert(((SContext)_localctx).metadata.query);
							insert(((SContext)_localctx).atuacoes.atuacoesInsert);
							insert(((SContext)_localctx).atuacoes.alunosInsert);
							insert(((SContext)_localctx).atuacoes.professoresInsert);
							insert(((SContext)_localctx).atuacoes.pecasInsert);
						}catch (SQLException e ) {
							  System.out.println(e);
						 }
			    	
			}

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
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class MetadataContext extends ParserRuleContext {
		public String audicaoId;
		public String query;
		public AudIdContext audId;
		public TituloContext titulo;
		public SubtituloContext subtitulo;
		public TemaContext tema;
		public DataContext data;
		public HoraContext hora;
		public LocalContext local;
		public OrganizadorContext organizador;
		public DuracaoContext duracao;
		public AudIdContext audId() {
			return getRuleContext(AudIdContext.class,0);
		}
		public TituloContext titulo() {
			return getRuleContext(TituloContext.class,0);
		}
		public SubtituloContext subtitulo() {
			return getRuleContext(SubtituloContext.class,0);
		}
		public TemaContext tema() {
			return getRuleContext(TemaContext.class,0);
		}
		public DataContext data() {
			return getRuleContext(DataContext.class,0);
		}
		public HoraContext hora() {
			return getRuleContext(HoraContext.class,0);
		}
		public LocalContext local() {
			return getRuleContext(LocalContext.class,0);
		}
		public OrganizadorContext organizador() {
			return getRuleContext(OrganizadorContext.class,0);
		}
		public DuracaoContext duracao() {
			return getRuleContext(DuracaoContext.class,0);
		}
		public MetadataContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
		}
		@Override public int getRuleIndex() { return RULE_metadata; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterMetadata(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitMetadata(this);
		}
	}

	public final MetadataContext metadata() throws RecognitionException {
		MetadataContext _localctx = new MetadataContext(_ctx, getState());
		enterRule(_localctx, 2, RULE_metadata);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			match(T__0);

									Element filho = doc.createElement("metadata");
			                        rootElement.appendChild(filho);
								
			setState(50);
			((MetadataContext)_localctx).audId = audId(filho);

						  	((MetadataContext)_localctx).audicaoId =  ((MetadataContext)_localctx).audId.dados;
						  
			setState(52);
			((MetadataContext)_localctx).titulo = titulo(filho);
			setState(53);
			((MetadataContext)_localctx).subtitulo = subtitulo(filho);
			setState(54);
			((MetadataContext)_localctx).tema = tema(filho);
			setState(55);
			((MetadataContext)_localctx).data = data(filho);
			setState(56);
			((MetadataContext)_localctx).hora = hora(filho);
			setState(57);
			((MetadataContext)_localctx).local = local(filho);
			setState(58);
			((MetadataContext)_localctx).organizador = organizador(filho);
			setState(59);
			((MetadataContext)_localctx).duracao = duracao(filho);

			 				((MetadataContext)_localctx).query =  "INSERT INTO `audicao` (`audicao_id`, `audicao_titulo`, `audicao_subtitulo`, `audicao_tema`, `audicao_data`, `audicao_hora`, `audicao_local`, `audicao_responsavel`, `audicao_duracao`) VALUES (`"+((MetadataContext)_localctx).audId.dados+"`, `"+((MetadataContext)_localctx).titulo.dados+"`, `"+((MetadataContext)_localctx).subtitulo.dados+"`, `"+((MetadataContext)_localctx).tema.dados+"`, `"+((MetadataContext)_localctx).data.dados+"`, `"+((MetadataContext)_localctx).hora.dados+"`, `"+((MetadataContext)_localctx).local.dados+"`, `"+((MetadataContext)_localctx).organizador.dados+"`, `"+((MetadataContext)_localctx).duracao.dados+"`);";

			 			
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TituloContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public TituloContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public TituloContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_titulo; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterTitulo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitTitulo(this);
		}
	}

	public final TituloContext titulo(Element pai) throws RecognitionException {
		TituloContext _localctx = new TituloContext(_ctx, getState(), pai);
		enterRule(_localctx, 4, RULE_titulo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(62);
			match(T__1);
			setState(63);
			((TituloContext)_localctx).DADOS = match(DADOS);

										Element filho = doc.createElement("titulo");
										filho.appendChild(doc.createTextNode((((TituloContext)_localctx).DADOS!=null?((TituloContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
										pai.appendChild(filho);
										((TituloContext)_localctx).dados = (((TituloContext)_localctx).DADOS!=null?((TituloContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
									
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class SubtituloContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public SubtituloContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public SubtituloContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_subtitulo; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterSubtitulo(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitSubtitulo(this);
		}
	}

	public final SubtituloContext subtitulo(Element pai) throws RecognitionException {
		SubtituloContext _localctx = new SubtituloContext(_ctx, getState(), pai);
		enterRule(_localctx, 6, RULE_subtitulo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(66);
			match(T__2);
			setState(67);
			((SubtituloContext)_localctx).DADOS = match(DADOS);

											Element filho = doc.createElement("subtitulo");
											filho.appendChild(doc.createTextNode((((SubtituloContext)_localctx).DADOS!=null?((SubtituloContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
											pai.appendChild(filho);
											((SubtituloContext)_localctx).dados = (((SubtituloContext)_localctx).DADOS!=null?((SubtituloContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
										
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class TemaContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public TemaContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public TemaContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_tema; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterTema(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitTema(this);
		}
	}

	public final TemaContext tema(Element pai) throws RecognitionException {
		TemaContext _localctx = new TemaContext(_ctx, getState(), pai);
		enterRule(_localctx, 8, RULE_tema);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(70);
			match(T__3);
			setState(71);
			((TemaContext)_localctx).DADOS = match(DADOS);

								Element filho = doc.createElement("tema");
								filho.appendChild(doc.createTextNode((((TemaContext)_localctx).DADOS!=null?((TemaContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
								pai.appendChild(filho);
								((TemaContext)_localctx).dados = (((TemaContext)_localctx).DADOS!=null?((TemaContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
							
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DataContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DataContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DataContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_data; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterData(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitData(this);
		}
	}

	public final DataContext data(Element pai) throws RecognitionException {
		DataContext _localctx = new DataContext(_ctx, getState(), pai);
		enterRule(_localctx, 10, RULE_data);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(74);
			match(T__4);
			setState(75);
			((DataContext)_localctx).DADOS = match(DADOS);

								Element filho = doc.createElement("data");
								filho.appendChild(doc.createTextNode((((DataContext)_localctx).DADOS!=null?((DataContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
								pai.appendChild(filho);
								((DataContext)_localctx).dados = (((DataContext)_localctx).DADOS!=null?((DataContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
							
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class HoraContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public HoraContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public HoraContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_hora; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterHora(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitHora(this);
		}
	}

	public final HoraContext hora(Element pai) throws RecognitionException {
		HoraContext _localctx = new HoraContext(_ctx, getState(), pai);
		enterRule(_localctx, 12, RULE_hora);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(78);
			match(T__5);
			setState(79);
			((HoraContext)_localctx).DADOS = match(DADOS);

								Element filho = doc.createElement("hora");
								filho.appendChild(doc.createTextNode((((HoraContext)_localctx).DADOS!=null?((HoraContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
								pai.appendChild(filho);
								((HoraContext)_localctx).dados = (((HoraContext)_localctx).DADOS!=null?((HoraContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
							
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class LocalContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public LocalContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public LocalContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_local; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterLocal(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitLocal(this);
		}
	}

	public final LocalContext local(Element pai) throws RecognitionException {
		LocalContext _localctx = new LocalContext(_ctx, getState(), pai);
		enterRule(_localctx, 14, RULE_local);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(82);
			match(T__6);
			setState(83);
			((LocalContext)_localctx).DADOS = match(DADOS);

									Element filho = doc.createElement("local");
									filho.appendChild(doc.createTextNode((((LocalContext)_localctx).DADOS!=null?((LocalContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
									pai.appendChild(filho);
									((LocalContext)_localctx).dados = (((LocalContext)_localctx).DADOS!=null?((LocalContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
								
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class OrganizadorContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public OrganizadorContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public OrganizadorContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_organizador; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterOrganizador(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitOrganizador(this);
		}
	}

	public final OrganizadorContext organizador(Element pai) throws RecognitionException {
		OrganizadorContext _localctx = new OrganizadorContext(_ctx, getState(), pai);
		enterRule(_localctx, 16, RULE_organizador);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(86);
			match(T__7);
			setState(87);
			((OrganizadorContext)_localctx).DADOS = match(DADOS);

												Element filho = doc.createElement("organizador");
												filho.appendChild(doc.createTextNode((((OrganizadorContext)_localctx).DADOS!=null?((OrganizadorContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
												pai.appendChild(filho);
												((OrganizadorContext)_localctx).dados = (((OrganizadorContext)_localctx).DADOS!=null?((OrganizadorContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
											
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DuracaoContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DuracaoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DuracaoContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_duracao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterDuracao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitDuracao(this);
		}
	}

	public final DuracaoContext duracao(Element pai) throws RecognitionException {
		DuracaoContext _localctx = new DuracaoContext(_ctx, getState(), pai);
		enterRule(_localctx, 18, RULE_duracao);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(90);
			match(T__8);
			setState(91);
			((DuracaoContext)_localctx).DADOS = match(DADOS);

										Element filho = doc.createElement("duracao");
										filho.appendChild(doc.createTextNode((((DuracaoContext)_localctx).DADOS!=null?((DuracaoContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
										pai.appendChild(filho);
										((DuracaoContext)_localctx).dados = (((DuracaoContext)_localctx).DADOS!=null?((DuracaoContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
									
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AtuacoesContext extends ParserRuleContext {
		public String audicaoId;
		public String atuacoesInsert;
		public String alunosInsert;
		public String professoresInsert;
		public String pecasInsert;
		public AtuacaoContext a1;
		public AtuacaoContext a2;
		public List<AtuacaoContext> atuacao() {
			return getRuleContexts(AtuacaoContext.class);
		}
		public AtuacaoContext atuacao(int i) {
			return getRuleContext(AtuacaoContext.class,i);
		}
		public AtuacoesContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AtuacoesContext(ParserRuleContext parent, int invokingState, String audicaoId) {
			super(parent, invokingState);
			this.audicaoId = audicaoId;
		}
		@Override public int getRuleIndex() { return RULE_atuacoes; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterAtuacoes(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitAtuacoes(this);
		}
	}

	public final AtuacoesContext atuacoes(String audicaoId) throws RecognitionException {
		AtuacoesContext _localctx = new AtuacoesContext(_ctx, getState(), audicaoId);
		enterRule(_localctx, 20, RULE_atuacoes);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(94);
			match(T__9);
			setState(95);
			match(T__10);

										Element filho = doc.createElement("atuacoes");
										rootElement.appendChild(filho);
									
			setState(97);
			((AtuacoesContext)_localctx).a1 = atuacao(filho, _localctx.audicaoId);
			((AtuacoesContext)_localctx).atuacoesInsert =  ((AtuacoesContext)_localctx).a1.query;
						 							((AtuacoesContext)_localctx).alunosInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a1.alunosInsert;
										       		((AtuacoesContext)_localctx).professoresInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a1.professoresInsert;
										       		((AtuacoesContext)_localctx).pecasInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a1.pecasInsert;
			setState(104);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__12) {
				{
				{
				setState(99);
				((AtuacoesContext)_localctx).a2 = atuacao(filho, _localctx.audicaoId);
				((AtuacoesContext)_localctx).atuacoesInsert =  _localctx.atuacoesInsert+", "+((AtuacoesContext)_localctx).a2.query;
														((AtuacoesContext)_localctx).alunosInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a2.alunosInsert;
											       		((AtuacoesContext)_localctx).professoresInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a2.professoresInsert;
											       		((AtuacoesContext)_localctx).pecasInsert =  _localctx.alunosInsert+((AtuacoesContext)_localctx).a2.pecasInsert;
				}
				}
				setState(106);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(107);
			match(T__11);
			((AtuacoesContext)_localctx).atuacoesInsert =  _localctx.atuacoesInsert+";";

													
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AtuacaoContext extends ParserRuleContext {
		public Element pai;
		public String audicaoId;
		public String query;
		public String alunosInsert;
		public String professoresInsert;
		public String pecasInsert;
		public IdContext id;
		public DesignacaoContext designacao;
		public AlunosContext alunos;
		public ProfessoresContext professores;
		public PecasContext pecas;
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public DesignacaoContext designacao() {
			return getRuleContext(DesignacaoContext.class,0);
		}
		public AlunosContext alunos() {
			return getRuleContext(AlunosContext.class,0);
		}
		public PecasContext pecas() {
			return getRuleContext(PecasContext.class,0);
		}
		public ProfessoresContext professores() {
			return getRuleContext(ProfessoresContext.class,0);
		}
		public AtuacaoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AtuacaoContext(ParserRuleContext parent, int invokingState, Element pai, String audicaoId) {
			super(parent, invokingState);
			this.pai = pai;
			this.audicaoId = audicaoId;
		}
		@Override public int getRuleIndex() { return RULE_atuacao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterAtuacao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitAtuacao(this);
		}
	}

	public final AtuacaoContext atuacao(Element pai,String audicaoId) throws RecognitionException {
		AtuacaoContext _localctx = new AtuacaoContext(_ctx, getState(), pai, audicaoId);
		enterRule(_localctx, 22, RULE_atuacao);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(110);
			match(T__12);

									Element filho = doc.createElement("atuacao");
									pai.appendChild(filho);
								
			setState(112);
			((AtuacaoContext)_localctx).id = id(filho);
			setState(113);
			((AtuacaoContext)_localctx).designacao = designacao(filho);

				       		String q = "SELECT atuacao_id FROM atuacao WHERE atuacao_id="+((AtuacaoContext)_localctx).id.dados;
				       		String r = null;
				       		try{
								r = query(q,"atuacao_id");
							}catch (SQLException e ) {
								  System.out.println(e);
							 }
							if(r!=null)
							{
								System.out.println("Atuacao com id "+((AtuacaoContext)_localctx).id.dados+" já existe!!!");
								System.exit(1);
							}
				       		((AtuacaoContext)_localctx).query =  "INSERT INTO `atuacao` (`atuacao_id`, `atuacao_designacao`, `atuacao_audicao`) VALUES (`"+((AtuacaoContext)_localctx).id.dados+"`, `"+((AtuacaoContext)_localctx).designacao.dados+"`, `"+_localctx.audicaoId+"`)";
				       
			setState(115);
			((AtuacaoContext)_localctx).alunos = alunos(filho,((AtuacaoContext)_localctx).id.dados);
			setState(117);
			_la = _input.LA(1);
			if (_la==T__18) {
				{
				setState(116);
				((AtuacaoContext)_localctx).professores = professores(filho,((AtuacaoContext)_localctx).id.dados);
				}
			}

			setState(119);
			((AtuacaoContext)_localctx).pecas = pecas(filho,((AtuacaoContext)_localctx).id.dados);

				       		((AtuacaoContext)_localctx).alunosInsert =  ((AtuacaoContext)_localctx).alunos.alunosInsert;
				       		((AtuacaoContext)_localctx).professoresInsert =  ((AtuacaoContext)_localctx).professores.professoresInsert;
				       		((AtuacaoContext)_localctx).pecasInsert =  ((AtuacaoContext)_localctx).pecas.pecasInsert;
				       
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class DesignacaoContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DesignacaoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DesignacaoContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_designacao; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterDesignacao(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitDesignacao(this);
		}
	}

	public final DesignacaoContext designacao(Element pai) throws RecognitionException {
		DesignacaoContext _localctx = new DesignacaoContext(_ctx, getState(), pai);
		enterRule(_localctx, 24, RULE_designacao);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(122);
			match(T__13);
			setState(123);
			((DesignacaoContext)_localctx).DADOS = match(DADOS);

											Element filho = doc.createElement("designacao");
											filho.appendChild(doc.createTextNode((((DesignacaoContext)_localctx).DADOS!=null?((DesignacaoContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
											pai.appendChild(filho);
											((DesignacaoContext)_localctx).dados = (((DesignacaoContext)_localctx).DADOS!=null?((DesignacaoContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
										
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AlunosContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String alunosInsert;
		public AlunoContext a1;
		public AlunoContext a2;
		public List<AlunoContext> aluno() {
			return getRuleContexts(AlunoContext.class);
		}
		public AlunoContext aluno(int i) {
			return getRuleContext(AlunoContext.class,i);
		}
		public AlunosContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AlunosContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_alunos; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterAlunos(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitAlunos(this);
		}
	}

	public final AlunosContext alunos(Element pai,String atuacao_id) throws RecognitionException {
		AlunosContext _localctx = new AlunosContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 26, RULE_alunos);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(126);
			match(T__14);
			setState(127);
			match(T__10);

									Element filho = doc.createElement("alunos");
									pai.appendChild(filho);
								
			setState(129);
			((AlunosContext)_localctx).a1 = aluno(filho,atuacao_id);
			((AlunosContext)_localctx).alunosInsert =  ((AlunosContext)_localctx).a1.query;
			setState(136);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__15) {
				{
				{
				setState(131);
				((AlunosContext)_localctx).a2 = aluno(filho,atuacao_id);
				((AlunosContext)_localctx).alunosInsert =  _localctx.alunosInsert+", "+((AlunosContext)_localctx).a2.query;
				}
				}
				setState(138);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(139);
			match(T__11);
			((AlunosContext)_localctx).alunosInsert =  _localctx.alunosInsert+";";
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AlunoContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String query;
		public IdContext id;
		public NomeContext nome() {
			return getRuleContext(NomeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public AlunoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AlunoContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_aluno; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterAluno(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitAluno(this);
		}
	}

	public final AlunoContext aluno(Element pai,String atuacao_id) throws RecognitionException {
		AlunoContext _localctx = new AlunoContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 28, RULE_aluno);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(142);
			match(T__15);

							Element filho = doc.createElement("aluno");
							pai.appendChild(filho);
						
			setState(144);
			nome(filho);
			setState(145);
			((AlunoContext)_localctx).id = id(filho);

					       		String q = "SELECT aluno_id FROM aluno WHERE aluno_id="+((AlunoContext)_localctx).id.dados;
					       		String r = null;
					       		try{
									r = query(q,"aluno_id");
								}catch (SQLException e ) {
									  System.out.println(e);
								 }
								if(r==null)
								{
									System.out.println("Aluno com id "+((AlunoContext)_localctx).id.dados+" não existe!!!");
									System.exit(1);
								}
					       		((AlunoContext)_localctx).query =  "INSERT INTO `atuacao_aluno` (`atuacao_id`, `aluno_id`) VALUES (`"+atuacao_id+"`, `"+((AlunoContext)_localctx).id.dados+"`)";

					    
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class NomeContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public NomeContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public NomeContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_nome; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterNome(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitNome(this);
		}
	}

	public final NomeContext nome(Element pai) throws RecognitionException {
		NomeContext _localctx = new NomeContext(_ctx, getState(), pai);
		enterRule(_localctx, 30, RULE_nome);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			match(T__16);
			setState(149);
			((NomeContext)_localctx).DADOS = match(DADOS);

								Element filho = doc.createElement("nome");
								filho.appendChild(doc.createTextNode((((NomeContext)_localctx).DADOS!=null?((NomeContext)_localctx).DADOS.getText():null).replaceAll("\"", "")));
								pai.appendChild(filho);
								((NomeContext)_localctx).dados = (((NomeContext)_localctx).DADOS!=null?((NomeContext)_localctx).DADOS.getText():null).replaceAll("\"", "");
							
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class AudIdContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token ID;
		public TerminalNode ID() { return getToken(AudicaoParser.ID, 0); }
		public AudIdContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AudIdContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_audId; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterAudId(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitAudId(this);
		}
	}

	public final AudIdContext audId(Element pai) throws RecognitionException {
		AudIdContext _localctx = new AudIdContext(_ctx, getState(), pai);
		enterRule(_localctx, 32, RULE_audId);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(152);
			match(T__17);
			setState(153);
			((AudIdContext)_localctx).ID = match(ID);

							Element filho = doc.createElement("id");
							filho.appendChild(doc.createTextNode((((AudIdContext)_localctx).ID!=null?((AudIdContext)_localctx).ID.getText():null).replaceAll("\"", "")));
							pai.appendChild(filho);
							String q = "SELECT audicao_id FROM audicao WHERE audicao_id="+(((AudIdContext)_localctx).ID!=null?((AudIdContext)_localctx).ID.getText():null);
							String r = null;
							try{
							 	r = query(q,"audicao_id");
							}catch (SQLException e ) {
								  System.out.println(e);
							 }
							if(r!=null)
							{
								System.out.println("Audição com id "+(((AudIdContext)_localctx).ID!=null?((AudIdContext)_localctx).ID.getText():null)+" já existe!!!");
								System.exit(1);
							}

							/*if(new File("../../audicoes/"+file).exists()){
								System.out.println("Audição com nome "+file+" já existe!!!");
								System.exit(1);
							}*/
							file = (((AudIdContext)_localctx).ID!=null?((AudIdContext)_localctx).ID.getText():null).replaceAll("\"", "")+".xml";
							((AudIdContext)_localctx).dados = (((AudIdContext)_localctx).ID!=null?((AudIdContext)_localctx).ID.getText():null).replaceAll("\"", "");
						
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class IdContext extends ParserRuleContext {
		public Element pai;
		public String dados;
		public Token ID;
		public TerminalNode ID() { return getToken(AudicaoParser.ID, 0); }
		public IdContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public IdContext(ParserRuleContext parent, int invokingState, Element pai) {
			super(parent, invokingState);
			this.pai = pai;
		}
		@Override public int getRuleIndex() { return RULE_id; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterId(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitId(this);
		}
	}

	public final IdContext id(Element pai) throws RecognitionException {
		IdContext _localctx = new IdContext(_ctx, getState(), pai);
		enterRule(_localctx, 34, RULE_id);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(156);
			match(T__17);
			setState(157);
			((IdContext)_localctx).ID = match(ID);

							Element filho = doc.createElement("id");
							filho.appendChild(doc.createTextNode((((IdContext)_localctx).ID!=null?((IdContext)_localctx).ID.getText():null).replaceAll("\"", "")));
							pai.appendChild(filho);
							((IdContext)_localctx).dados = (((IdContext)_localctx).ID!=null?((IdContext)_localctx).ID.getText():null).replaceAll("\"", "");
						
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProfessoresContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String professoresInsert;
		public ProfessorContext a1;
		public ProfessorContext a2;
		public List<ProfessorContext> professor() {
			return getRuleContexts(ProfessorContext.class);
		}
		public ProfessorContext professor(int i) {
			return getRuleContext(ProfessorContext.class,i);
		}
		public ProfessoresContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public ProfessoresContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_professores; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterProfessores(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitProfessores(this);
		}
	}

	public final ProfessoresContext professores(Element pai,String atuacao_id) throws RecognitionException {
		ProfessoresContext _localctx = new ProfessoresContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 36, RULE_professores);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(160);
			match(T__18);
			setState(161);
			match(T__10);

												Element filho = doc.createElement("professores");
												pai.appendChild(filho);
											
			setState(163);
			((ProfessoresContext)_localctx).a1 = professor(filho,atuacao_id);
			((ProfessoresContext)_localctx).professoresInsert =  ((ProfessoresContext)_localctx).a1.query;
			setState(170);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__19) {
				{
				{
				setState(165);
				((ProfessoresContext)_localctx).a2 = professor(filho,atuacao_id);
				((ProfessoresContext)_localctx).professoresInsert =  _localctx.professoresInsert+", "+((ProfessoresContext)_localctx).a2.query;
				}
				}
				setState(172);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(173);
			match(T__11);
			((ProfessoresContext)_localctx).professoresInsert =  _localctx.professoresInsert+";";
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class ProfessorContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String query;
		public IdContext id;
		public NomeContext nome() {
			return getRuleContext(NomeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ProfessorContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public ProfessorContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_professor; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterProfessor(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitProfessor(this);
		}
	}

	public final ProfessorContext professor(Element pai,String atuacao_id) throws RecognitionException {
		ProfessorContext _localctx = new ProfessorContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 38, RULE_professor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(176);
			match(T__19);

									Element filho = doc.createElement("professor");
									pai.appendChild(filho);
								
			setState(178);
			nome(filho);
			setState(179);
			((ProfessorContext)_localctx).id = id(filho);

					       		String q = "SELECT professor_id FROM professor WHERE professor_id="+((ProfessorContext)_localctx).id.dados;
					       		String r = null;
					       		try{
									r = query(q,"professor_id");
								}catch (SQLException e ) {
									  System.out.println(e);
								 }
								if(r==null)
								{
									System.out.println("Professor com id "+((ProfessorContext)_localctx).id.dados+" não existe!!!");
									System.exit(1);
								}
					       		((ProfessorContext)_localctx).query =  "INSERT INTO `atuacao_professor` (`atuacao_id`, `professor_id`) VALUES (`"+atuacao_id+"`, `"+((ProfessorContext)_localctx).id.dados+"`)";

					    
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PecasContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String pecasInsert;
		public PecaContext a1;
		public PecaContext a2;
		public List<PecaContext> peca() {
			return getRuleContexts(PecaContext.class);
		}
		public PecaContext peca(int i) {
			return getRuleContext(PecaContext.class,i);
		}
		public PecasContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public PecasContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_pecas; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterPecas(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitPecas(this);
		}
	}

	public final PecasContext pecas(Element pai,String atuacao_id) throws RecognitionException {
		PecasContext _localctx = new PecasContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 40, RULE_pecas);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(182);
			match(T__20);
			setState(183);
			match(T__10);

									Element filho = doc.createElement("pecas");
									pai.appendChild(filho);
								
			setState(185);
			((PecasContext)_localctx).a1 = peca(filho,atuacao_id);
			((PecasContext)_localctx).pecasInsert =  ((PecasContext)_localctx).a1.query;
			setState(192);
			_errHandler.sync(this);
			_la = _input.LA(1);
			while (_la==T__21) {
				{
				{
				setState(187);
				((PecasContext)_localctx).a2 = peca(filho,atuacao_id);
				((PecasContext)_localctx).pecasInsert =  _localctx.pecasInsert+", "+((PecasContext)_localctx).a2.query;
				}
				}
				setState(194);
				_errHandler.sync(this);
				_la = _input.LA(1);
			}
			setState(195);
			match(T__11);
			((PecasContext)_localctx).pecasInsert =  _localctx.pecasInsert+";";
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static class PecaContext extends ParserRuleContext {
		public Element pai;
		public String atuacao_id;
		public String query;
		public IdContext id;
		public TituloContext titulo() {
			return getRuleContext(TituloContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public PecaContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public PecaContext(ParserRuleContext parent, int invokingState, Element pai, String atuacao_id) {
			super(parent, invokingState);
			this.pai = pai;
			this.atuacao_id = atuacao_id;
		}
		@Override public int getRuleIndex() { return RULE_peca; }
		@Override
		public void enterRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).enterPeca(this);
		}
		@Override
		public void exitRule(ParseTreeListener listener) {
			if ( listener instanceof AudicaoListener ) ((AudicaoListener)listener).exitPeca(this);
		}
	}

	public final PecaContext peca(Element pai,String atuacao_id) throws RecognitionException {
		PecaContext _localctx = new PecaContext(_ctx, getState(), pai, atuacao_id);
		enterRule(_localctx, 42, RULE_peca);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(198);
			match(T__21);

							Element filho = doc.createElement("peca");
							pai.appendChild(filho);
						
			setState(200);
			titulo(filho);
			setState(201);
			((PecaContext)_localctx).id = id(filho);

					       		String q = "SELECT obra_id FROM obra WHERE obra_id="+((PecaContext)_localctx).id.dados;
					       		String r = null;
					       		try{
									r = query(q,"obra_id");
								}catch (SQLException e ) {
									  System.out.println(e);
								 }
								if(r==null)
								{
									System.out.println("Obra com id "+((PecaContext)_localctx).id.dados+" não existe!!!");
									System.exit(1);
								}
					       		((PecaContext)_localctx).query =  "INSERT INTO `atuacao_obra` (`atuacao_id`, `obra_id`) VALUES (`"+atuacao_id+"`, `"+((PecaContext)_localctx).id.dados+"`)";

					    
			}
		}
		catch (RecognitionException re) {
			_localctx.exception = re;
			_errHandler.reportError(this, re);
			_errHandler.recover(this, re);
		}
		finally {
			exitRule();
		}
		return _localctx;
	}

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3\35\u00cf\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\3\2\3\2\3\2\3\2\3\3"+
		"\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\4\3"+
		"\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\t\3\t"+
		"\3\t\3\t\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\f\7\fi\n\f\f\f\16\fl\13\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r"+
		"\5\rx\n\r\3\r\3\r\3\r\3\16\3\16\3\16\3\16\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\7\17\u0089\n\17\f\17\16\17\u008c\13\17\3\17\3\17\3\17\3\20"+
		"\3\20\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\23"+
		"\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\7\24\u00ab\n\24"+
		"\f\24\16\24\u00ae\13\24\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3"+
		"\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\7\26\u00c1\n\26\f\26\16\26\u00c4"+
		"\13\26\3\26\3\26\3\26\3\27\3\27\3\27\3\27\3\27\3\27\3\27\2\2\30\2\4\6"+
		"\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,\2\2\u00bd\2.\3\2\2\2\4\62\3"+
		"\2\2\2\6@\3\2\2\2\bD\3\2\2\2\nH\3\2\2\2\fL\3\2\2\2\16P\3\2\2\2\20T\3\2"+
		"\2\2\22X\3\2\2\2\24\\\3\2\2\2\26`\3\2\2\2\30p\3\2\2\2\32|\3\2\2\2\34\u0080"+
		"\3\2\2\2\36\u0090\3\2\2\2 \u0096\3\2\2\2\"\u009a\3\2\2\2$\u009e\3\2\2"+
		"\2&\u00a2\3\2\2\2(\u00b2\3\2\2\2*\u00b8\3\2\2\2,\u00c8\3\2\2\2./\5\4\3"+
		"\2/\60\5\26\f\2\60\61\b\2\1\2\61\3\3\2\2\2\62\63\7\3\2\2\63\64\b\3\1\2"+
		"\64\65\5\"\22\2\65\66\b\3\1\2\66\67\5\6\4\2\678\5\b\5\289\5\n\6\29:\5"+
		"\f\7\2:;\5\16\b\2;<\5\20\t\2<=\5\22\n\2=>\5\24\13\2>?\b\3\1\2?\5\3\2\2"+
		"\2@A\7\4\2\2AB\7\31\2\2BC\b\4\1\2C\7\3\2\2\2DE\7\5\2\2EF\7\31\2\2FG\b"+
		"\5\1\2G\t\3\2\2\2HI\7\6\2\2IJ\7\31\2\2JK\b\6\1\2K\13\3\2\2\2LM\7\7\2\2"+
		"MN\7\31\2\2NO\b\7\1\2O\r\3\2\2\2PQ\7\b\2\2QR\7\31\2\2RS\b\b\1\2S\17\3"+
		"\2\2\2TU\7\t\2\2UV\7\31\2\2VW\b\t\1\2W\21\3\2\2\2XY\7\n\2\2YZ\7\31\2\2"+
		"Z[\b\n\1\2[\23\3\2\2\2\\]\7\13\2\2]^\7\31\2\2^_\b\13\1\2_\25\3\2\2\2`"+
		"a\7\f\2\2ab\7\r\2\2bc\b\f\1\2cd\5\30\r\2dj\b\f\1\2ef\5\30\r\2fg\b\f\1"+
		"\2gi\3\2\2\2he\3\2\2\2il\3\2\2\2jh\3\2\2\2jk\3\2\2\2km\3\2\2\2lj\3\2\2"+
		"\2mn\7\16\2\2no\b\f\1\2o\27\3\2\2\2pq\7\17\2\2qr\b\r\1\2rs\5$\23\2st\5"+
		"\32\16\2tu\b\r\1\2uw\5\34\17\2vx\5&\24\2wv\3\2\2\2wx\3\2\2\2xy\3\2\2\2"+
		"yz\5*\26\2z{\b\r\1\2{\31\3\2\2\2|}\7\20\2\2}~\7\31\2\2~\177\b\16\1\2\177"+
		"\33\3\2\2\2\u0080\u0081\7\21\2\2\u0081\u0082\7\r\2\2\u0082\u0083\b\17"+
		"\1\2\u0083\u0084\5\36\20\2\u0084\u008a\b\17\1\2\u0085\u0086\5\36\20\2"+
		"\u0086\u0087\b\17\1\2\u0087\u0089\3\2\2\2\u0088\u0085\3\2\2\2\u0089\u008c"+
		"\3\2\2\2\u008a\u0088\3\2\2\2\u008a\u008b\3\2\2\2\u008b\u008d\3\2\2\2\u008c"+
		"\u008a\3\2\2\2\u008d\u008e\7\16\2\2\u008e\u008f\b\17\1\2\u008f\35\3\2"+
		"\2\2\u0090\u0091\7\22\2\2\u0091\u0092\b\20\1\2\u0092\u0093\5 \21\2\u0093"+
		"\u0094\5$\23\2\u0094\u0095\b\20\1\2\u0095\37\3\2\2\2\u0096\u0097\7\23"+
		"\2\2\u0097\u0098\7\31\2\2\u0098\u0099\b\21\1\2\u0099!\3\2\2\2\u009a\u009b"+
		"\7\24\2\2\u009b\u009c\7\33\2\2\u009c\u009d\b\22\1\2\u009d#\3\2\2\2\u009e"+
		"\u009f\7\24\2\2\u009f\u00a0\7\33\2\2\u00a0\u00a1\b\23\1\2\u00a1%\3\2\2"+
		"\2\u00a2\u00a3\7\25\2\2\u00a3\u00a4\7\r\2\2\u00a4\u00a5\b\24\1\2\u00a5"+
		"\u00a6\5(\25\2\u00a6\u00ac\b\24\1\2\u00a7\u00a8\5(\25\2\u00a8\u00a9\b"+
		"\24\1\2\u00a9\u00ab\3\2\2\2\u00aa\u00a7\3\2\2\2\u00ab\u00ae\3\2\2\2\u00ac"+
		"\u00aa\3\2\2\2\u00ac\u00ad\3\2\2\2\u00ad\u00af\3\2\2\2\u00ae\u00ac\3\2"+
		"\2\2\u00af\u00b0\7\16\2\2\u00b0\u00b1\b\24\1\2\u00b1\'\3\2\2\2\u00b2\u00b3"+
		"\7\26\2\2\u00b3\u00b4\b\25\1\2\u00b4\u00b5\5 \21\2\u00b5\u00b6\5$\23\2"+
		"\u00b6\u00b7\b\25\1\2\u00b7)\3\2\2\2\u00b8\u00b9\7\27\2\2\u00b9\u00ba"+
		"\7\r\2\2\u00ba\u00bb\b\26\1\2\u00bb\u00bc\5,\27\2\u00bc\u00c2\b\26\1\2"+
		"\u00bd\u00be\5,\27\2\u00be\u00bf\b\26\1\2\u00bf\u00c1\3\2\2\2\u00c0\u00bd"+
		"\3\2\2\2\u00c1\u00c4\3\2\2\2\u00c2\u00c0\3\2\2\2\u00c2\u00c3\3\2\2\2\u00c3"+
		"\u00c5\3\2\2\2\u00c4\u00c2\3\2\2\2\u00c5\u00c6\7\16\2\2\u00c6\u00c7\b"+
		"\26\1\2\u00c7+\3\2\2\2\u00c8\u00c9\7\30\2\2\u00c9\u00ca\b\27\1\2\u00ca"+
		"\u00cb\5\6\4\2\u00cb\u00cc\5$\23\2\u00cc\u00cd\b\27\1\2\u00cd-\3\2\2\2"+
		"\7jw\u008a\u00ac\u00c2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}