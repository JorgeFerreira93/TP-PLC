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

import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class AudicaoLexer extends Lexer {
	static { RuntimeMetaData.checkVersion("4.5.1", RuntimeMetaData.VERSION); }

	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__0=1, T__1=2, T__2=3, T__3=4, T__4=5, T__5=6, T__6=7, T__7=8, T__8=9, 
		T__9=10, T__10=11, T__11=12, T__12=13, T__13=14, T__14=15, T__15=16, T__16=17, 
		T__17=18, T__18=19, T__19=20, T__20=21, T__21=22, DADOS=23, TIPO=24, ID=25, 
		INT=26, WS=27;
	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "T__20", "T__21", "DADOS", "TIPO", "ID", "INT", 
		"WS", "STRING", "ESC_SEQ", "OCTAL_ESC", "UNICODE_ESC", "HEX_DIGIT"
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


	public AudicaoLexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Audicao.g4"; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2\35\u0114\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t"+
		" \4!\t!\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3"+
		"\3\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\6\3\6"+
		"\3\6\3\6\3\6\3\7\3\7\3\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3"+
		"\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\13"+
		"\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\r\3\r\3\16\3\16\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\24\3\24\3\24\3\24\3\24"+
		"\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25"+
		"\3\25\3\25\3\25\3\26\3\26\3\26\3\26\3\26\3\26\3\27\3\27\3\27\3\27\3\27"+
		"\3\30\3\30\3\31\3\31\3\32\3\32\7\32\u00e3\n\32\f\32\16\32\u00e6\13\32"+
		"\3\33\6\33\u00e9\n\33\r\33\16\33\u00ea\3\34\3\34\3\34\3\34\3\35\3\35\3"+
		"\35\7\35\u00f4\n\35\f\35\16\35\u00f7\13\35\3\35\3\35\3\36\3\36\3\36\3"+
		"\36\5\36\u00ff\n\36\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\3\37\5\37"+
		"\u010a\n\37\3 \3 \3 \3 \3 \3 \3 \3!\3!\2\2\"\3\3\5\4\7\5\t\6\13\7\r\b"+
		"\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'\25)\26"+
		"+\27-\30/\31\61\32\63\33\65\34\67\359\2;\2=\2?\2A\2\3\2\t\4\2CCTT\5\2"+
		"C\\aac|\7\2//\62;C\\aac|\5\2\13\f\17\17\"\"\3\2$$\n\2$$))^^ddhhppttvv"+
		"\5\2\62;CHch\u0116\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13"+
		"\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2"+
		"\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2"+
		"!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3"+
		"\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2"+
		"\3C\3\2\2\2\5L\3\2\2\2\7S\3\2\2\2\t]\3\2\2\2\13b\3\2\2\2\rg\3\2\2\2\17"+
		"l\3\2\2\2\21r\3\2\2\2\23~\3\2\2\2\25\u0086\3\2\2\2\27\u008f\3\2\2\2\31"+
		"\u0091\3\2\2\2\33\u0093\3\2\2\2\35\u009b\3\2\2\2\37\u00a6\3\2\2\2!\u00ad"+
		"\3\2\2\2#\u00b3\3\2\2\2%\u00b8\3\2\2\2\'\u00bb\3\2\2\2)\u00c7\3\2\2\2"+
		"+\u00d1\3\2\2\2-\u00d7\3\2\2\2/\u00dc\3\2\2\2\61\u00de\3\2\2\2\63\u00e0"+
		"\3\2\2\2\65\u00e8\3\2\2\2\67\u00ec\3\2\2\29\u00f0\3\2\2\2;\u00fe\3\2\2"+
		"\2=\u0109\3\2\2\2?\u010b\3\2\2\2A\u0112\3\2\2\2CD\7O\2\2DE\7G\2\2EF\7"+
		"V\2\2FG\7C\2\2GH\7F\2\2HI\7C\2\2IJ\7V\2\2JK\7C\2\2K\4\3\2\2\2LM\7V\2\2"+
		"MN\7K\2\2NO\7V\2\2OP\7W\2\2PQ\7N\2\2QR\7Q\2\2R\6\3\2\2\2ST\7U\2\2TU\7"+
		"W\2\2UV\7D\2\2VW\7V\2\2WX\7K\2\2XY\7V\2\2YZ\7W\2\2Z[\7N\2\2[\\\7Q\2\2"+
		"\\\b\3\2\2\2]^\7V\2\2^_\7G\2\2_`\7O\2\2`a\7C\2\2a\n\3\2\2\2bc\7F\2\2c"+
		"d\7C\2\2de\7V\2\2ef\7C\2\2f\f\3\2\2\2gh\7J\2\2hi\7Q\2\2ij\7T\2\2jk\7C"+
		"\2\2k\16\3\2\2\2lm\7N\2\2mn\7Q\2\2no\7E\2\2op\7C\2\2pq\7N\2\2q\20\3\2"+
		"\2\2rs\7Q\2\2st\7T\2\2tu\7I\2\2uv\7C\2\2vw\7P\2\2wx\7K\2\2xy\7\\\2\2y"+
		"z\7C\2\2z{\7F\2\2{|\7Q\2\2|}\7T\2\2}\22\3\2\2\2~\177\7F\2\2\177\u0080"+
		"\7W\2\2\u0080\u0081\7T\2\2\u0081\u0082\7C\2\2\u0082\u0083\7E\2\2\u0083"+
		"\u0084\7C\2\2\u0084\u0085\7Q\2\2\u0085\24\3\2\2\2\u0086\u0087\7C\2\2\u0087"+
		"\u0088\7V\2\2\u0088\u0089\7W\2\2\u0089\u008a\7C\2\2\u008a\u008b\7E\2\2"+
		"\u008b\u008c\7Q\2\2\u008c\u008d\7G\2\2\u008d\u008e\7U\2\2\u008e\26\3\2"+
		"\2\2\u008f\u0090\7}\2\2\u0090\30\3\2\2\2\u0091\u0092\7\177\2\2\u0092\32"+
		"\3\2\2\2\u0093\u0094\7C\2\2\u0094\u0095\7V\2\2\u0095\u0096\7W\2\2\u0096"+
		"\u0097\7C\2\2\u0097\u0098\7E\2\2\u0098\u0099\7C\2\2\u0099\u009a\7Q\2\2"+
		"\u009a\34\3\2\2\2\u009b\u009c\7F\2\2\u009c\u009d\7G\2\2\u009d\u009e\7"+
		"U\2\2\u009e\u009f\7K\2\2\u009f\u00a0\7I\2\2\u00a0\u00a1\7P\2\2\u00a1\u00a2"+
		"\7C\2\2\u00a2\u00a3\7E\2\2\u00a3\u00a4\7C\2\2\u00a4\u00a5\7Q\2\2\u00a5"+
		"\36\3\2\2\2\u00a6\u00a7\7C\2\2\u00a7\u00a8\7N\2\2\u00a8\u00a9\7W\2\2\u00a9"+
		"\u00aa\7P\2\2\u00aa\u00ab\7Q\2\2\u00ab\u00ac\7U\2\2\u00ac \3\2\2\2\u00ad"+
		"\u00ae\7C\2\2\u00ae\u00af\7N\2\2\u00af\u00b0\7W\2\2\u00b0\u00b1\7P\2\2"+
		"\u00b1\u00b2\7Q\2\2\u00b2\"\3\2\2\2\u00b3\u00b4\7P\2\2\u00b4\u00b5\7Q"+
		"\2\2\u00b5\u00b6\7O\2\2\u00b6\u00b7\7G\2\2\u00b7$\3\2\2\2\u00b8\u00b9"+
		"\7K\2\2\u00b9\u00ba\7F\2\2\u00ba&\3\2\2\2\u00bb\u00bc\7R\2\2\u00bc\u00bd"+
		"\7T\2\2\u00bd\u00be\7Q\2\2\u00be\u00bf\7H\2\2\u00bf\u00c0\7G\2\2\u00c0"+
		"\u00c1\7U\2\2\u00c1\u00c2\7U\2\2\u00c2\u00c3\7Q\2\2\u00c3\u00c4\7T\2\2"+
		"\u00c4\u00c5\7G\2\2\u00c5\u00c6\7U\2\2\u00c6(\3\2\2\2\u00c7\u00c8\7R\2"+
		"\2\u00c8\u00c9\7T\2\2\u00c9\u00ca\7Q\2\2\u00ca\u00cb\7H\2\2\u00cb\u00cc"+
		"\7G\2\2\u00cc\u00cd\7U\2\2\u00cd\u00ce\7U\2\2\u00ce\u00cf\7Q\2\2\u00cf"+
		"\u00d0\7T\2\2\u00d0*\3\2\2\2\u00d1\u00d2\7R\2\2\u00d2\u00d3\7G\2\2\u00d3"+
		"\u00d4\7E\2\2\u00d4\u00d5\7C\2\2\u00d5\u00d6\7U\2\2\u00d6,\3\2\2\2\u00d7"+
		"\u00d8\7R\2\2\u00d8\u00d9\7G\2\2\u00d9\u00da\7E\2\2\u00da\u00db\7C\2\2"+
		"\u00db.\3\2\2\2\u00dc\u00dd\59\35\2\u00dd\60\3\2\2\2\u00de\u00df\t\2\2"+
		"\2\u00df\62\3\2\2\2\u00e0\u00e4\t\3\2\2\u00e1\u00e3\t\4\2\2\u00e2\u00e1"+
		"\3\2\2\2\u00e3\u00e6\3\2\2\2\u00e4\u00e2\3\2\2\2\u00e4\u00e5\3\2\2\2\u00e5"+
		"\64\3\2\2\2\u00e6\u00e4\3\2\2\2\u00e7\u00e9\4\62;\2\u00e8\u00e7\3\2\2"+
		"\2\u00e9\u00ea\3\2\2\2\u00ea\u00e8\3\2\2\2\u00ea\u00eb\3\2\2\2\u00eb\66"+
		"\3\2\2\2\u00ec\u00ed\t\5\2\2\u00ed\u00ee\3\2\2\2\u00ee\u00ef\b\34\2\2"+
		"\u00ef8\3\2\2\2\u00f0\u00f5\7$\2\2\u00f1\u00f4\5;\36\2\u00f2\u00f4\n\6"+
		"\2\2\u00f3\u00f1\3\2\2\2\u00f3\u00f2\3\2\2\2\u00f4\u00f7\3\2\2\2\u00f5"+
		"\u00f3\3\2\2\2\u00f5\u00f6\3\2\2\2\u00f6\u00f8\3\2\2\2\u00f7\u00f5\3\2"+
		"\2\2\u00f8\u00f9\7$\2\2\u00f9:\3\2\2\2\u00fa\u00fb\7^\2\2\u00fb\u00ff"+
		"\t\7\2\2\u00fc\u00ff\5? \2\u00fd\u00ff\5=\37\2\u00fe\u00fa\3\2\2\2\u00fe"+
		"\u00fc\3\2\2\2\u00fe\u00fd\3\2\2\2\u00ff<\3\2\2\2\u0100\u0101\7^\2\2\u0101"+
		"\u0102\4\62\65\2\u0102\u0103\4\629\2\u0103\u010a\4\629\2\u0104\u0105\7"+
		"^\2\2\u0105\u0106\4\629\2\u0106\u010a\4\629\2\u0107\u0108\7^\2\2\u0108"+
		"\u010a\4\629\2\u0109\u0100\3\2\2\2\u0109\u0104\3\2\2\2\u0109\u0107\3\2"+
		"\2\2\u010a>\3\2\2\2\u010b\u010c\7^\2\2\u010c\u010d\7w\2\2\u010d\u010e"+
		"\5A!\2\u010e\u010f\5A!\2\u010f\u0110\5A!\2\u0110\u0111\5A!\2\u0111@\3"+
		"\2\2\2\u0112\u0113\t\b\2\2\u0113B\3\2\2\2\t\2\u00e4\u00ea\u00f3\u00f5"+
		"\u00fe\u0109\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}