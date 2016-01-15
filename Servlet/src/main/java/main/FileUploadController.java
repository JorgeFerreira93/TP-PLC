package main;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

import parser.*;


import org.antlr.v4.runtime.ANTLRInputStream;
import org.antlr.v4.runtime.CommonTokenStream;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

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

                ANTLRInputStream in = new ANTLRInputStream(new FileInputStream(new File("ficheiro")));
                AudicaoLexer lexer = new AudicaoLexer(in);
                CommonTokenStream tokens = new CommonTokenStream(lexer);
                AudicaoParser parser = new AudicaoParser(tokens);

                parser.s();


                /*
                * Le ficheiro txt
                * Manda-o para o parser do antlr e faz as cenas                *
                * */

                return "Li bem o ficheiro";
            } catch (Exception e) {
                return "Houve um erro qql" + e.getMessage();
            }
        } else {
            //System.out.println("BOA! Sem ficherio");
            return "Nao li o ficheiro";
        }
    }

}
