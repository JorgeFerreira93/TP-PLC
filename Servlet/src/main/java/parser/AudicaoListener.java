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

import org.antlr.v4.runtime.tree.ParseTreeListener;

/**
 * This interface defines a complete listener for a parse tree produced by
 * {@link AudicaoParser}.
 */
public interface AudicaoListener extends ParseTreeListener {
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#s}.
	 * @param ctx the parse tree
	 */
	void enterS(AudicaoParser.SContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#s}.
	 * @param ctx the parse tree
	 */
	void exitS(AudicaoParser.SContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#metadata}.
	 * @param ctx the parse tree
	 */
	void enterMetadata(AudicaoParser.MetadataContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#metadata}.
	 * @param ctx the parse tree
	 */
	void exitMetadata(AudicaoParser.MetadataContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#titulo}.
	 * @param ctx the parse tree
	 */
	void enterTitulo(AudicaoParser.TituloContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#titulo}.
	 * @param ctx the parse tree
	 */
	void exitTitulo(AudicaoParser.TituloContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#subtitulo}.
	 * @param ctx the parse tree
	 */
	void enterSubtitulo(AudicaoParser.SubtituloContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#subtitulo}.
	 * @param ctx the parse tree
	 */
	void exitSubtitulo(AudicaoParser.SubtituloContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#tema}.
	 * @param ctx the parse tree
	 */
	void enterTema(AudicaoParser.TemaContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#tema}.
	 * @param ctx the parse tree
	 */
	void exitTema(AudicaoParser.TemaContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#data}.
	 * @param ctx the parse tree
	 */
	void enterData(AudicaoParser.DataContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#data}.
	 * @param ctx the parse tree
	 */
	void exitData(AudicaoParser.DataContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#hora}.
	 * @param ctx the parse tree
	 */
	void enterHora(AudicaoParser.HoraContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#hora}.
	 * @param ctx the parse tree
	 */
	void exitHora(AudicaoParser.HoraContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#local}.
	 * @param ctx the parse tree
	 */
	void enterLocal(AudicaoParser.LocalContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#local}.
	 * @param ctx the parse tree
	 */
	void exitLocal(AudicaoParser.LocalContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#organizador}.
	 * @param ctx the parse tree
	 */
	void enterOrganizador(AudicaoParser.OrganizadorContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#organizador}.
	 * @param ctx the parse tree
	 */
	void exitOrganizador(AudicaoParser.OrganizadorContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#duracao}.
	 * @param ctx the parse tree
	 */
	void enterDuracao(AudicaoParser.DuracaoContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#duracao}.
	 * @param ctx the parse tree
	 */
	void exitDuracao(AudicaoParser.DuracaoContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#atuacoes}.
	 * @param ctx the parse tree
	 */
	void enterAtuacoes(AudicaoParser.AtuacoesContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#atuacoes}.
	 * @param ctx the parse tree
	 */
	void exitAtuacoes(AudicaoParser.AtuacoesContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#atuacao}.
	 * @param ctx the parse tree
	 */
	void enterAtuacao(AudicaoParser.AtuacaoContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#atuacao}.
	 * @param ctx the parse tree
	 */
	void exitAtuacao(AudicaoParser.AtuacaoContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#designacao}.
	 * @param ctx the parse tree
	 */
	void enterDesignacao(AudicaoParser.DesignacaoContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#designacao}.
	 * @param ctx the parse tree
	 */
	void exitDesignacao(AudicaoParser.DesignacaoContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#alunos}.
	 * @param ctx the parse tree
	 */
	void enterAlunos(AudicaoParser.AlunosContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#alunos}.
	 * @param ctx the parse tree
	 */
	void exitAlunos(AudicaoParser.AlunosContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#aluno}.
	 * @param ctx the parse tree
	 */
	void enterAluno(AudicaoParser.AlunoContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#aluno}.
	 * @param ctx the parse tree
	 */
	void exitAluno(AudicaoParser.AlunoContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#audId}.
	 * @param ctx the parse tree
	 */
	void enterAudId(AudicaoParser.AudIdContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#audId}.
	 * @param ctx the parse tree
	 */
	void exitAudId(AudicaoParser.AudIdContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#id}.
	 * @param ctx the parse tree
	 */
	void enterId(AudicaoParser.IdContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#id}.
	 * @param ctx the parse tree
	 */
	void exitId(AudicaoParser.IdContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#professores}.
	 * @param ctx the parse tree
	 */
	void enterProfessores(AudicaoParser.ProfessoresContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#professores}.
	 * @param ctx the parse tree
	 */
	void exitProfessores(AudicaoParser.ProfessoresContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#professor}.
	 * @param ctx the parse tree
	 */
	void enterProfessor(AudicaoParser.ProfessorContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#professor}.
	 * @param ctx the parse tree
	 */
	void exitProfessor(AudicaoParser.ProfessorContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#pecas}.
	 * @param ctx the parse tree
	 */
	void enterPecas(AudicaoParser.PecasContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#pecas}.
	 * @param ctx the parse tree
	 */
	void exitPecas(AudicaoParser.PecasContext ctx);
	/**
	 * Enter a parse tree produced by {@link AudicaoParser#peca}.
	 * @param ctx the parse tree
	 */
	void enterPeca(AudicaoParser.PecaContext ctx);
	/**
	 * Exit a parse tree produced by {@link AudicaoParser#peca}.
	 * @param ctx the parse tree
	 */
	void exitPeca(AudicaoParser.PecaContext ctx);
}