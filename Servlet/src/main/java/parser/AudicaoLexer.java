// Generated from C:/xampp/htdocs/GAMu/TP-PLC/Servlet/src/main/resources\Audicao.g4 by ANTLR 4.5.1


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
		T__17=18, T__18=19, T__19=20, DADOS=21, TIPO=22, ID=23, INT=24, WS=25;
	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] ruleNames = {
		"T__0", "T__1", "T__2", "T__3", "T__4", "T__5", "T__6", "T__7", "T__8", 
		"T__9", "T__10", "T__11", "T__12", "T__13", "T__14", "T__15", "T__16", 
		"T__17", "T__18", "T__19", "DADOS", "TIPO", "ID", "INT", "WS", "STRING", 
		"ESC_SEQ", "OCTAL_ESC", "UNICODE_ESC", "HEX_DIGIT"
	};

	private static final String[] _LITERAL_NAMES = {
		null, "'METADATA'", "'TITULO'", "'SUBTITULO'", "'TEMA'", "'DATA'", "'-'", 
		"'HORA'", "'LOCAL'", "'ORGANIZADOR'", "'DURACAO'", "'ATUACOES'", "'{'", 
		"'}'", "'ATUACAO'", "'DESIGNACAO'", "'ALUNOS'", "','", "'ID'", "'PROFESSORES'", 
		"'PECAS'"
	};
	private static final String[] _SYMBOLIC_NAMES = {
		null, null, null, null, null, null, null, null, null, null, null, null, 
		null, null, null, null, null, null, null, null, null, "DADOS", "TIPO", 
		"ID", "INT", "WS"
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
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2\33\u00fa\b\1\4\2"+
		"\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4"+
		"\13\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22"+
		"\t\22\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31"+
		"\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\3\2"+
		"\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\3\3\3\3\3\3\3\3\3\3\3\4\3\4\3"+
		"\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6"+
		"\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3"+
		"\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\13"+
		"\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\17"+
		"\3\17\3\17\3\17\3\17\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\23\3\23\3\23"+
		"\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\25\3\25"+
		"\3\25\3\25\3\25\3\25\3\26\3\26\3\27\3\27\3\30\3\30\7\30\u00c9\n\30\f\30"+
		"\16\30\u00cc\13\30\3\31\6\31\u00cf\n\31\r\31\16\31\u00d0\3\32\3\32\3\32"+
		"\3\32\3\33\3\33\3\33\7\33\u00da\n\33\f\33\16\33\u00dd\13\33\3\33\3\33"+
		"\3\34\3\34\3\34\3\34\5\34\u00e5\n\34\3\35\3\35\3\35\3\35\3\35\3\35\3\35"+
		"\3\35\3\35\5\35\u00f0\n\35\3\36\3\36\3\36\3\36\3\36\3\36\3\36\3\37\3\37"+
		"\2\2 \3\3\5\4\7\5\t\6\13\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35"+
		"\20\37\21!\22#\23%\24\'\25)\26+\27-\30/\31\61\32\63\33\65\2\67\29\2;\2"+
		"=\2\3\2\t\4\2CCTT\5\2C\\aac|\7\2//\62;C\\aac|\5\2\13\f\17\17\"\"\3\2$"+
		"$\n\2$$))^^ddhhppttvv\5\2\62;CHch\u00fc\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3"+
		"\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2\2\2\2\17\3\2\2\2\2\21\3\2\2\2"+
		"\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2\2\31\3\2\2\2\2\33\3\2\2\2\2\35"+
		"\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)"+
		"\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2\2\2\61\3\2\2\2\2\63\3\2\2\2\3"+
		"?\3\2\2\2\5H\3\2\2\2\7O\3\2\2\2\tY\3\2\2\2\13^\3\2\2\2\rc\3\2\2\2\17e"+
		"\3\2\2\2\21j\3\2\2\2\23p\3\2\2\2\25|\3\2\2\2\27\u0084\3\2\2\2\31\u008d"+
		"\3\2\2\2\33\u008f\3\2\2\2\35\u0091\3\2\2\2\37\u0099\3\2\2\2!\u00a4\3\2"+
		"\2\2#\u00ab\3\2\2\2%\u00ad\3\2\2\2\'\u00b0\3\2\2\2)\u00bc\3\2\2\2+\u00c2"+
		"\3\2\2\2-\u00c4\3\2\2\2/\u00c6\3\2\2\2\61\u00ce\3\2\2\2\63\u00d2\3\2\2"+
		"\2\65\u00d6\3\2\2\2\67\u00e4\3\2\2\29\u00ef\3\2\2\2;\u00f1\3\2\2\2=\u00f8"+
		"\3\2\2\2?@\7O\2\2@A\7G\2\2AB\7V\2\2BC\7C\2\2CD\7F\2\2DE\7C\2\2EF\7V\2"+
		"\2FG\7C\2\2G\4\3\2\2\2HI\7V\2\2IJ\7K\2\2JK\7V\2\2KL\7W\2\2LM\7N\2\2MN"+
		"\7Q\2\2N\6\3\2\2\2OP\7U\2\2PQ\7W\2\2QR\7D\2\2RS\7V\2\2ST\7K\2\2TU\7V\2"+
		"\2UV\7W\2\2VW\7N\2\2WX\7Q\2\2X\b\3\2\2\2YZ\7V\2\2Z[\7G\2\2[\\\7O\2\2\\"+
		"]\7C\2\2]\n\3\2\2\2^_\7F\2\2_`\7C\2\2`a\7V\2\2ab\7C\2\2b\f\3\2\2\2cd\7"+
		"/\2\2d\16\3\2\2\2ef\7J\2\2fg\7Q\2\2gh\7T\2\2hi\7C\2\2i\20\3\2\2\2jk\7"+
		"N\2\2kl\7Q\2\2lm\7E\2\2mn\7C\2\2no\7N\2\2o\22\3\2\2\2pq\7Q\2\2qr\7T\2"+
		"\2rs\7I\2\2st\7C\2\2tu\7P\2\2uv\7K\2\2vw\7\\\2\2wx\7C\2\2xy\7F\2\2yz\7"+
		"Q\2\2z{\7T\2\2{\24\3\2\2\2|}\7F\2\2}~\7W\2\2~\177\7T\2\2\177\u0080\7C"+
		"\2\2\u0080\u0081\7E\2\2\u0081\u0082\7C\2\2\u0082\u0083\7Q\2\2\u0083\26"+
		"\3\2\2\2\u0084\u0085\7C\2\2\u0085\u0086\7V\2\2\u0086\u0087\7W\2\2\u0087"+
		"\u0088\7C\2\2\u0088\u0089\7E\2\2\u0089\u008a\7Q\2\2\u008a\u008b\7G\2\2"+
		"\u008b\u008c\7U\2\2\u008c\30\3\2\2\2\u008d\u008e\7}\2\2\u008e\32\3\2\2"+
		"\2\u008f\u0090\7\177\2\2\u0090\34\3\2\2\2\u0091\u0092\7C\2\2\u0092\u0093"+
		"\7V\2\2\u0093\u0094\7W\2\2\u0094\u0095\7C\2\2\u0095\u0096\7E\2\2\u0096"+
		"\u0097\7C\2\2\u0097\u0098\7Q\2\2\u0098\36\3\2\2\2\u0099\u009a\7F\2\2\u009a"+
		"\u009b\7G\2\2\u009b\u009c\7U\2\2\u009c\u009d\7K\2\2\u009d\u009e\7I\2\2"+
		"\u009e\u009f\7P\2\2\u009f\u00a0\7C\2\2\u00a0\u00a1\7E\2\2\u00a1\u00a2"+
		"\7C\2\2\u00a2\u00a3\7Q\2\2\u00a3 \3\2\2\2\u00a4\u00a5\7C\2\2\u00a5\u00a6"+
		"\7N\2\2\u00a6\u00a7\7W\2\2\u00a7\u00a8\7P\2\2\u00a8\u00a9\7Q\2\2\u00a9"+
		"\u00aa\7U\2\2\u00aa\"\3\2\2\2\u00ab\u00ac\7.\2\2\u00ac$\3\2\2\2\u00ad"+
		"\u00ae\7K\2\2\u00ae\u00af\7F\2\2\u00af&\3\2\2\2\u00b0\u00b1\7R\2\2\u00b1"+
		"\u00b2\7T\2\2\u00b2\u00b3\7Q\2\2\u00b3\u00b4\7H\2\2\u00b4\u00b5\7G\2\2"+
		"\u00b5\u00b6\7U\2\2\u00b6\u00b7\7U\2\2\u00b7\u00b8\7Q\2\2\u00b8\u00b9"+
		"\7T\2\2\u00b9\u00ba\7G\2\2\u00ba\u00bb\7U\2\2\u00bb(\3\2\2\2\u00bc\u00bd"+
		"\7R\2\2\u00bd\u00be\7G\2\2\u00be\u00bf\7E\2\2\u00bf\u00c0\7C\2\2\u00c0"+
		"\u00c1\7U\2\2\u00c1*\3\2\2\2\u00c2\u00c3\5\65\33\2\u00c3,\3\2\2\2\u00c4"+
		"\u00c5\t\2\2\2\u00c5.\3\2\2\2\u00c6\u00ca\t\3\2\2\u00c7\u00c9\t\4\2\2"+
		"\u00c8\u00c7\3\2\2\2\u00c9\u00cc\3\2\2\2\u00ca\u00c8\3\2\2\2\u00ca\u00cb"+
		"\3\2\2\2\u00cb\60\3\2\2\2\u00cc\u00ca\3\2\2\2\u00cd\u00cf\4\62;\2\u00ce"+
		"\u00cd\3\2\2\2\u00cf\u00d0\3\2\2\2\u00d0\u00ce\3\2\2\2\u00d0\u00d1\3\2"+
		"\2\2\u00d1\62\3\2\2\2\u00d2\u00d3\t\5\2\2\u00d3\u00d4\3\2\2\2\u00d4\u00d5"+
		"\b\32\2\2\u00d5\64\3\2\2\2\u00d6\u00db\7$\2\2\u00d7\u00da\5\67\34\2\u00d8"+
		"\u00da\n\6\2\2\u00d9\u00d7\3\2\2\2\u00d9\u00d8\3\2\2\2\u00da\u00dd\3\2"+
		"\2\2\u00db\u00d9\3\2\2\2\u00db\u00dc\3\2\2\2\u00dc\u00de\3\2\2\2\u00dd"+
		"\u00db\3\2\2\2\u00de\u00df\7$\2\2\u00df\66\3\2\2\2\u00e0\u00e1\7^\2\2"+
		"\u00e1\u00e5\t\7\2\2\u00e2\u00e5\5;\36\2\u00e3\u00e5\59\35\2\u00e4\u00e0"+
		"\3\2\2\2\u00e4\u00e2\3\2\2\2\u00e4\u00e3\3\2\2\2\u00e58\3\2\2\2\u00e6"+
		"\u00e7\7^\2\2\u00e7\u00e8\4\62\65\2\u00e8\u00e9\4\629\2\u00e9\u00f0\4"+
		"\629\2\u00ea\u00eb\7^\2\2\u00eb\u00ec\4\629\2\u00ec\u00f0\4\629\2\u00ed"+
		"\u00ee\7^\2\2\u00ee\u00f0\4\629\2\u00ef\u00e6\3\2\2\2\u00ef\u00ea\3\2"+
		"\2\2\u00ef\u00ed\3\2\2\2\u00f0:\3\2\2\2\u00f1\u00f2\7^\2\2\u00f2\u00f3"+
		"\7w\2\2\u00f3\u00f4\5=\37\2\u00f4\u00f5\5=\37\2\u00f5\u00f6\5=\37\2\u00f6"+
		"\u00f7\5=\37\2\u00f7<\3\2\2\2\u00f8\u00f9\t\b\2\2\u00f9>\3\2\2\2\t\2\u00ca"+
		"\u00d0\u00d9\u00db\u00e4\u00ef\3\b\2\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}