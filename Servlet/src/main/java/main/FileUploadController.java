package main;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.BitSet;

import org.antlr.runtime.tree.CommonTree;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.ATNConfigSet;
import org.antlr.v4.runtime.dfa.DFA;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import parser.*;

import parser.AudicaoParser.Audicao;
import parser.AudicaoParser.Atuacao;
import parser.AudicaoParser.Erro;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.ParserConfigurationException;

@Controller
public class FileUploadController {
    @CrossOrigin(origins = "http://localhost")
    @RequestMapping(value="/upload", method=RequestMethod.GET, headers = "content-type=multipart/*")
    public @ResponseBody String provideUploadInfo() {
        System.out.println("BOA!Fail");return "{\"status\" : \"FAIL\"}";
    }

    @CrossOrigin(origins = "http://localhost")
    @RequestMapping(value="/upload", method=RequestMethod.POST)
    public @ResponseBody String handleFileUpload(@RequestParam("file") MultipartFile file){
        if (!file.isEmpty()) {
            try {
                String name = "ficheiro";
                byte[] bytes = file.getBytes();
                BufferedOutputStream stream =
                        new BufferedOutputStream(new FileOutputStream(new File(name)));
                stream.write(bytes);
                stream.close();

                Error e = new Error();

                ANTLRInputStream in = new ANTLRInputStream(new FileInputStream(new File("ficheiro")));
                AudicaoLexer lexer = new AudicaoLexer(in);
                CommonTokenStream tokens = new CommonTokenStream(lexer);
                AudicaoParser parser = new AudicaoParser(tokens);

                parser.removeErrorListeners();
                parser.addErrorListener(e);

                AudicaoParser.SContext s = parser.s();

                Audicao audicao = s.a;
                Erro erro = s.e;
                Connection con = s.con;

                if(e.getErros() > 0){
                    String json = "{\"erro\": \"gram\"}";
                    System.out.println(json);
                }
                else{
                    if(erro.haErro()){

                        String json = "{\"erro\": \"true\",\"alunos\": [ ";

                        for(String aluno: erro.alunos){
                            json += "\"" + aluno + "\",";
                        }
                        json = json.substring(0, json.length() - 1);
                        json += "],\"professores\": [ ";

                        for(String professor: erro.professores){
                            json += "\"" + professor + "\",";
                        }
                        json = json.substring(0, json.length() - 1);
                        json += "],\"obras\": [ ";

                        for(String peca: erro.pecas){
                            json += "\"" + peca + "\",";
                        }

                        json = json.substring(0, json.length() - 1);

                        json += "]}";

                        return json;
                    }
                    else{
                        insereAudicao(audicao, con);

                        String json = "{\"erro\": \"false\"}";

                        return json;
                    }
                }

                return "Li bem o ficheiro";
            } catch (Exception e) {
                return "Houve um erro qql" + e.getMessage();
            }
        } else {
            //System.out.println("BOA! Sem ficherio");
            return "Nao li o ficheiro";
        }
    }

    private void insereAudicao(Audicao audicao, Connection con){
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
            //System.out.println(ps.toString());
            ps.executeUpdate();

            for(Atuacao a: audicao.atuacoes){
                ps = con.prepareStatement("INSERT INTO atuacao VALUES (?, ?, ?)");
                ps.setString(1, a.designacao);
                ps.setString(2, a.designacao);
                ps.setString(3, audicao.id);
                //System.out.println(ps.toString());
                ps.executeUpdate();

                for(String aluno: a.alunos){
                    ps = con.prepareStatement("INSERT INTO atuacao_aluno VALUES (?, ?)");
                    ps.setString(1, a.designacao);
                    ps.setString(2, aluno);
                    //System.out.println(ps.toString());
                    ps.executeUpdate();
                }

                for(String professor: a.professores){
                    ps = con.prepareStatement("INSERT INTO atuacao_professor VALUES (?, ?)");
                    ps.setString(1, a.designacao);
                    ps.setString(2, professor);
                    //System.out.println(ps.toString());
                    ps.executeUpdate();
                }

                for(String obra: a.pecas){
                    ps = con.prepareStatement("INSERT INTO atuacao_obra VALUES (?, ?)");
                    ps.setString(1, a.designacao);
                    ps.setString(2, obra);
                    //System.out.println(ps.toString());
                    ps.executeUpdate();
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
}
