// Generated from C:/xampp/htdocs/GAMu/TP-PLC/Servlet/src/main/resources\Audicao.g4 by ANTLR 4.5.1


    package parser;

    import data.Connect;
    import java.sql.*;
    import java.util.ArrayList;
    import java.util.HashMap;

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

	public AudicaoParser(TokenStream input) {
		super(input);
		_interp = new ParserATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}
	public static class SContext extends ParserRuleContext {
		public String a;
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

		            Connection con = null;
		            Audicao audicao = new Audicao();
		            HashMap<String, String> erros = new HashMap<>();

		            try{
		                con = Connect.connect();
		            }
		            catch (SQLException | ClassNotFoundException e) {
		                e.printStackTrace();
		            }
		        
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(44);
			metadata(audicao);
			setState(45);
			atuacoes(con, audicao.atuacoes, erros);

			                     for(Atuacao a: audicao.atuacoes){
			                         System.out.println(a.alunos.toString());
			                     }

			                            try {
			                                con.close();
			                            } catch (Exception e) {
			                                e.printStackTrace();
			                            }
			        
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
		public Audicao audicao;
		public AudIdContext audId;
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
		public MetadataContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public MetadataContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final MetadataContext metadata(Audicao audicao) throws RecognitionException {
		MetadataContext _localctx = new MetadataContext(_ctx, getState(), audicao);
		enterRule(_localctx, 2, RULE_metadata);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(48);
			match(T__0);
			setState(49);
			((MetadataContext)_localctx).audId = audId();
			audicao.titulo = (((MetadataContext)_localctx).audId!=null?_input.getText(((MetadataContext)_localctx).audId.start,((MetadataContext)_localctx).audId.stop):null);
			setState(51);
			titulo();
			setState(52);
			subtitulo(audicao);
			setState(53);
			tema(audicao);
			setState(54);
			data(audicao);
			setState(55);
			hora(audicao);
			setState(56);
			local(audicao);
			setState(57);
			organizador(audicao);
			setState(58);
			duracao(audicao);
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
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public TituloContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final TituloContext titulo() throws RecognitionException {
		TituloContext _localctx = new TituloContext(_ctx, getState());
		enterRule(_localctx, 4, RULE_titulo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(60);
			match(T__1);
			setState(61);
			match(DADOS);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public SubtituloContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public SubtituloContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final SubtituloContext subtitulo(Audicao audicao) throws RecognitionException {
		SubtituloContext _localctx = new SubtituloContext(_ctx, getState(), audicao);
		enterRule(_localctx, 6, RULE_subtitulo);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(63);
			match(T__2);
			setState(64);
			((SubtituloContext)_localctx).DADOS = match(DADOS);
			audicao.subtitulo = (((SubtituloContext)_localctx).DADOS!=null?((SubtituloContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public TemaContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public TemaContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final TemaContext tema(Audicao audicao) throws RecognitionException {
		TemaContext _localctx = new TemaContext(_ctx, getState(), audicao);
		enterRule(_localctx, 8, RULE_tema);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(67);
			match(T__3);
			setState(68);
			((TemaContext)_localctx).DADOS = match(DADOS);
			audicao.tema = (((TemaContext)_localctx).DADOS!=null?((TemaContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DataContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DataContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final DataContext data(Audicao audicao) throws RecognitionException {
		DataContext _localctx = new DataContext(_ctx, getState(), audicao);
		enterRule(_localctx, 10, RULE_data);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(71);
			match(T__4);
			setState(72);
			((DataContext)_localctx).DADOS = match(DADOS);
			audicao.data = (((DataContext)_localctx).DADOS!=null?((DataContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public HoraContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public HoraContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final HoraContext hora(Audicao audicao) throws RecognitionException {
		HoraContext _localctx = new HoraContext(_ctx, getState(), audicao);
		enterRule(_localctx, 12, RULE_hora);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(75);
			match(T__5);
			setState(76);
			((HoraContext)_localctx).DADOS = match(DADOS);
			audicao.hora = (((HoraContext)_localctx).DADOS!=null?((HoraContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public LocalContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public LocalContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final LocalContext local(Audicao audicao) throws RecognitionException {
		LocalContext _localctx = new LocalContext(_ctx, getState(), audicao);
		enterRule(_localctx, 14, RULE_local);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(79);
			match(T__6);
			setState(80);
			((LocalContext)_localctx).DADOS = match(DADOS);
			audicao.local = (((LocalContext)_localctx).DADOS!=null?((LocalContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public OrganizadorContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public OrganizadorContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final OrganizadorContext organizador(Audicao audicao) throws RecognitionException {
		OrganizadorContext _localctx = new OrganizadorContext(_ctx, getState(), audicao);
		enterRule(_localctx, 16, RULE_organizador);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(83);
			match(T__7);
			setState(84);
			((OrganizadorContext)_localctx).DADOS = match(DADOS);
			audicao.organizador = (((OrganizadorContext)_localctx).DADOS!=null?((OrganizadorContext)_localctx).DADOS.getText():null);
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
		public Audicao audicao;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DuracaoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DuracaoContext(ParserRuleContext parent, int invokingState, Audicao audicao) {
			super(parent, invokingState);
			this.audicao = audicao;
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

	public final DuracaoContext duracao(Audicao audicao) throws RecognitionException {
		DuracaoContext _localctx = new DuracaoContext(_ctx, getState(), audicao);
		enterRule(_localctx, 18, RULE_duracao);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(87);
			match(T__8);
			setState(88);
			((DuracaoContext)_localctx).DADOS = match(DADOS);
			audicao.duracao = (((DuracaoContext)_localctx).DADOS!=null?((DuracaoContext)_localctx).DADOS.getText():null);
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
		public Connection con;
		public ArrayList<Atuacao> ats;
		public HashMap<String, String> erros;
		public List<AtuacaoContext> atuacao() {
			return getRuleContexts(AtuacaoContext.class);
		}
		public AtuacaoContext atuacao(int i) {
			return getRuleContext(AtuacaoContext.class,i);
		}
		public AtuacoesContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AtuacoesContext(ParserRuleContext parent, int invokingState, Connection con, ArrayList<Atuacao> ats, HashMap<String, String> erros) {
			super(parent, invokingState);
			this.con = con;
			this.ats = ats;
			this.erros = erros;
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

	public final AtuacoesContext atuacoes(Connection con,ArrayList<Atuacao> ats,HashMap<String, String> erros) throws RecognitionException {
		AtuacoesContext _localctx = new AtuacoesContext(_ctx, getState(), con, ats, erros);
		enterRule(_localctx, 20, RULE_atuacoes);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			Atuacao atuacao = new Atuacao();
			setState(92);
			match(T__9);
			setState(93);
			match(T__10);
			setState(97); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(94);
				atuacao(con, atuacao, erros);
				ats.add(atuacao); atuacao = new Atuacao();
				}
				}
				setState(99); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__12 );
			setState(101);
			match(T__11);
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
		public Connection con;
		public Atuacao at;
		public HashMap<String, String> erros;
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
		public AtuacaoContext(ParserRuleContext parent, int invokingState, Connection con, Atuacao at, HashMap<String, String> erros) {
			super(parent, invokingState);
			this.con = con;
			this.at = at;
			this.erros = erros;
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

	public final AtuacaoContext atuacao(Connection con,Atuacao at,HashMap<String, String> erros) throws RecognitionException {
		AtuacaoContext _localctx = new AtuacaoContext(_ctx, getState(), con, at, erros);
		enterRule(_localctx, 22, RULE_atuacao);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(103);
			match(T__12);
			setState(104);
			designacao(at);
			setState(105);
			alunos(con, at, erros);
			setState(107);
			_la = _input.LA(1);
			if (_la==T__18) {
				{
				setState(106);
				professores();
				}
			}

			setState(109);
			pecas();
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
		public Atuacao at;
		public Token DADOS;
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public DesignacaoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public DesignacaoContext(ParserRuleContext parent, int invokingState, Atuacao at) {
			super(parent, invokingState);
			this.at = at;
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

	public final DesignacaoContext designacao(Atuacao at) throws RecognitionException {
		DesignacaoContext _localctx = new DesignacaoContext(_ctx, getState(), at);
		enterRule(_localctx, 24, RULE_designacao);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(111);
			match(T__13);
			setState(112);
			((DesignacaoContext)_localctx).DADOS = match(DADOS);
			at.designacao = (((DesignacaoContext)_localctx).DADOS!=null?((DesignacaoContext)_localctx).DADOS.getText():null);
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
		public Connection con;
		public Atuacao at;
		public HashMap<String, String> erros;
		public List<AlunoContext> aluno() {
			return getRuleContexts(AlunoContext.class);
		}
		public AlunoContext aluno(int i) {
			return getRuleContext(AlunoContext.class,i);
		}
		public AlunosContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AlunosContext(ParserRuleContext parent, int invokingState, Connection con, Atuacao at, HashMap<String, String> erros) {
			super(parent, invokingState);
			this.con = con;
			this.at = at;
			this.erros = erros;
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

	public final AlunosContext alunos(Connection con,Atuacao at,HashMap<String, String> erros) throws RecognitionException {
		AlunosContext _localctx = new AlunosContext(_ctx, getState(), con, at, erros);
		enterRule(_localctx, 26, RULE_alunos);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(115);
			match(T__14);
			setState(116);
			match(T__10);
			setState(118); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(117);
				aluno(con, at, erros);
				}
				}
				setState(120); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__15 );
			setState(122);
			match(T__11);
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
		public Connection con;
		public Atuacao at;
		public HashMap<String, String> erros;
		public IdContext id;
		public NomeContext nome() {
			return getRuleContext(NomeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public AlunoContext(ParserRuleContext parent, int invokingState) { super(parent, invokingState); }
		public AlunoContext(ParserRuleContext parent, int invokingState, Connection con, Atuacao at, HashMap<String, String> erros) {
			super(parent, invokingState);
			this.con = con;
			this.at = at;
			this.erros = erros;
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

	public final AlunoContext aluno(Connection con,Atuacao at,HashMap<String, String> erros) throws RecognitionException {
		AlunoContext _localctx = new AlunoContext(_ctx, getState(), con, at, erros);
		enterRule(_localctx, 28, RULE_aluno);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(124);
			match(T__15);
			setState(125);
			nome();
			setState(126);
			((AlunoContext)_localctx).id = id();

			            try {
			                String nome;
			                PreparedStatement ps = con.prepareStatement("SELECT 1 FROM aluno WHERE aluno_id = '" + ((AlunoContext)_localctx).id.idd + "'");
				  	        System.out.println("SELECT aluno_nome FROM aluno WHERE aluno_id = '" + ((AlunoContext)_localctx).id.idd + "'");
			                ResultSet rs = ps.executeQuery();
			                if(rs.next()) {
			                    at.alunos.add(((AlunoContext)_localctx).id.idd);
			                }
			                else{
			                    erros.put("Aluno", ((AlunoContext)_localctx).id.idd);
			                }
			            } catch (SQLException e) {
			                e.printStackTrace();
			            }
				  	
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
		public TerminalNode DADOS() { return getToken(AudicaoParser.DADOS, 0); }
		public NomeContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final NomeContext nome() throws RecognitionException {
		NomeContext _localctx = new NomeContext(_ctx, getState());
		enterRule(_localctx, 30, RULE_nome);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(129);
			match(T__16);
			setState(130);
			match(DADOS);
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
		public TerminalNode ID() { return getToken(AudicaoParser.ID, 0); }
		public AudIdContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final AudIdContext audId() throws RecognitionException {
		AudIdContext _localctx = new AudIdContext(_ctx, getState());
		enterRule(_localctx, 32, RULE_audId);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(132);
			match(T__17);
			setState(133);
			match(ID);
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
		public String idd;
		public Token ID;
		public TerminalNode ID() { return getToken(AudicaoParser.ID, 0); }
		public IdContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final IdContext id() throws RecognitionException {
		IdContext _localctx = new IdContext(_ctx, getState());
		enterRule(_localctx, 34, RULE_id);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(135);
			match(T__17);
			setState(136);
			((IdContext)_localctx).ID = match(ID);
			((IdContext)_localctx).idd =  (((IdContext)_localctx).ID!=null?((IdContext)_localctx).ID.getText():null);
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
		public List<ProfessorContext> professor() {
			return getRuleContexts(ProfessorContext.class);
		}
		public ProfessorContext professor(int i) {
			return getRuleContext(ProfessorContext.class,i);
		}
		public ProfessoresContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final ProfessoresContext professores() throws RecognitionException {
		ProfessoresContext _localctx = new ProfessoresContext(_ctx, getState());
		enterRule(_localctx, 36, RULE_professores);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(139);
			match(T__18);
			setState(140);
			match(T__10);
			setState(142); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(141);
				professor();
				}
				}
				setState(144); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__19 );
			setState(146);
			match(T__11);
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
		public NomeContext nome() {
			return getRuleContext(NomeContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public ProfessorContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final ProfessorContext professor() throws RecognitionException {
		ProfessorContext _localctx = new ProfessorContext(_ctx, getState());
		enterRule(_localctx, 38, RULE_professor);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(148);
			match(T__19);
			setState(149);
			nome();
			setState(150);
			id();
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
		public List<PecaContext> peca() {
			return getRuleContexts(PecaContext.class);
		}
		public PecaContext peca(int i) {
			return getRuleContext(PecaContext.class,i);
		}
		public PecasContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final PecasContext pecas() throws RecognitionException {
		PecasContext _localctx = new PecasContext(_ctx, getState());
		enterRule(_localctx, 40, RULE_pecas);
		int _la;
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(152);
			match(T__20);
			setState(153);
			match(T__10);
			setState(155); 
			_errHandler.sync(this);
			_la = _input.LA(1);
			do {
				{
				{
				setState(154);
				peca();
				}
				}
				setState(157); 
				_errHandler.sync(this);
				_la = _input.LA(1);
			} while ( _la==T__21 );
			setState(159);
			match(T__11);
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
		public TituloContext titulo() {
			return getRuleContext(TituloContext.class,0);
		}
		public IdContext id() {
			return getRuleContext(IdContext.class,0);
		}
		public PecaContext(ParserRuleContext parent, int invokingState) {
			super(parent, invokingState);
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

	public final PecaContext peca() throws RecognitionException {
		PecaContext _localctx = new PecaContext(_ctx, getState());
		enterRule(_localctx, 42, RULE_peca);
		try {
			enterOuterAlt(_localctx, 1);
			{
			setState(161);
			match(T__21);
			setState(162);
			titulo();
			setState(163);
			id();
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
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\3\35\u00a8\4\2\t\2"+
		"\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\3\2\3\2\3\2\3\2\3\3"+
		"\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3\4\3\5\3\5\3\5\3"+
		"\5\3\6\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\n"+
		"\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\6\fd\n\f\r\f"+
		"\16\fe\3\f\3\f\3\r\3\r\3\r\3\r\5\rn\n\r\3\r\3\r\3\16\3\16\3\16\3\16\3"+
		"\17\3\17\3\17\6\17y\n\17\r\17\16\17z\3\17\3\17\3\20\3\20\3\20\3\20\3\20"+
		"\3\21\3\21\3\21\3\22\3\22\3\22\3\23\3\23\3\23\3\23\3\24\3\24\3\24\6\24"+
		"\u0091\n\24\r\24\16\24\u0092\3\24\3\24\3\25\3\25\3\25\3\25\3\26\3\26\3"+
		"\26\6\26\u009e\n\26\r\26\16\26\u009f\3\26\3\26\3\27\3\27\3\27\3\27\3\27"+
		"\2\2\30\2\4\6\b\n\f\16\20\22\24\26\30\32\34\36 \"$&(*,\2\2\u0096\2.\3"+
		"\2\2\2\4\62\3\2\2\2\6>\3\2\2\2\bA\3\2\2\2\nE\3\2\2\2\fI\3\2\2\2\16M\3"+
		"\2\2\2\20Q\3\2\2\2\22U\3\2\2\2\24Y\3\2\2\2\26]\3\2\2\2\30i\3\2\2\2\32"+
		"q\3\2\2\2\34u\3\2\2\2\36~\3\2\2\2 \u0083\3\2\2\2\"\u0086\3\2\2\2$\u0089"+
		"\3\2\2\2&\u008d\3\2\2\2(\u0096\3\2\2\2*\u009a\3\2\2\2,\u00a3\3\2\2\2."+
		"/\5\4\3\2/\60\5\26\f\2\60\61\b\2\1\2\61\3\3\2\2\2\62\63\7\3\2\2\63\64"+
		"\5\"\22\2\64\65\b\3\1\2\65\66\5\6\4\2\66\67\5\b\5\2\678\5\n\6\289\5\f"+
		"\7\29:\5\16\b\2:;\5\20\t\2;<\5\22\n\2<=\5\24\13\2=\5\3\2\2\2>?\7\4\2\2"+
		"?@\7\31\2\2@\7\3\2\2\2AB\7\5\2\2BC\7\31\2\2CD\b\5\1\2D\t\3\2\2\2EF\7\6"+
		"\2\2FG\7\31\2\2GH\b\6\1\2H\13\3\2\2\2IJ\7\7\2\2JK\7\31\2\2KL\b\7\1\2L"+
		"\r\3\2\2\2MN\7\b\2\2NO\7\31\2\2OP\b\b\1\2P\17\3\2\2\2QR\7\t\2\2RS\7\31"+
		"\2\2ST\b\t\1\2T\21\3\2\2\2UV\7\n\2\2VW\7\31\2\2WX\b\n\1\2X\23\3\2\2\2"+
		"YZ\7\13\2\2Z[\7\31\2\2[\\\b\13\1\2\\\25\3\2\2\2]^\b\f\1\2^_\7\f\2\2_c"+
		"\7\r\2\2`a\5\30\r\2ab\b\f\1\2bd\3\2\2\2c`\3\2\2\2de\3\2\2\2ec\3\2\2\2"+
		"ef\3\2\2\2fg\3\2\2\2gh\7\16\2\2h\27\3\2\2\2ij\7\17\2\2jk\5\32\16\2km\5"+
		"\34\17\2ln\5&\24\2ml\3\2\2\2mn\3\2\2\2no\3\2\2\2op\5*\26\2p\31\3\2\2\2"+
		"qr\7\20\2\2rs\7\31\2\2st\b\16\1\2t\33\3\2\2\2uv\7\21\2\2vx\7\r\2\2wy\5"+
		"\36\20\2xw\3\2\2\2yz\3\2\2\2zx\3\2\2\2z{\3\2\2\2{|\3\2\2\2|}\7\16\2\2"+
		"}\35\3\2\2\2~\177\7\22\2\2\177\u0080\5 \21\2\u0080\u0081\5$\23\2\u0081"+
		"\u0082\b\20\1\2\u0082\37\3\2\2\2\u0083\u0084\7\23\2\2\u0084\u0085\7\31"+
		"\2\2\u0085!\3\2\2\2\u0086\u0087\7\24\2\2\u0087\u0088\7\33\2\2\u0088#\3"+
		"\2\2\2\u0089\u008a\7\24\2\2\u008a\u008b\7\33\2\2\u008b\u008c\b\23\1\2"+
		"\u008c%\3\2\2\2\u008d\u008e\7\25\2\2\u008e\u0090\7\r\2\2\u008f\u0091\5"+
		"(\25\2\u0090\u008f\3\2\2\2\u0091\u0092\3\2\2\2\u0092\u0090\3\2\2\2\u0092"+
		"\u0093\3\2\2\2\u0093\u0094\3\2\2\2\u0094\u0095\7\16\2\2\u0095\'\3\2\2"+
		"\2\u0096\u0097\7\26\2\2\u0097\u0098\5 \21\2\u0098\u0099\5$\23\2\u0099"+
		")\3\2\2\2\u009a\u009b\7\27\2\2\u009b\u009d\7\r\2\2\u009c\u009e\5,\27\2"+
		"\u009d\u009c\3\2\2\2\u009e\u009f\3\2\2\2\u009f\u009d\3\2\2\2\u009f\u00a0"+
		"\3\2\2\2\u00a0\u00a1\3\2\2\2\u00a1\u00a2\7\16\2\2\u00a2+\3\2\2\2\u00a3"+
		"\u00a4\7\30\2\2\u00a4\u00a5\5\6\4\2\u00a5\u00a6\5$\23\2\u00a6-\3\2\2\2"+
		"\7emz\u0092\u009f";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}