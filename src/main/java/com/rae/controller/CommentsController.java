package com.rae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.util.Random;

/**
 * @author Song
 */
@Controller
@RequestMapping("comments")
public class CommentsController {

    @RequestMapping("/com")
    public String getComments(Model model) {
        return "/relationship/commentscom";
    }

    @RequestMapping("/tool1")
    public String getCommentstool1(Model model) {
        return "/relationship/commentstool1";
    }

    @RequestMapping("/tool2")
    public String getCommentstool2(Model model) {
        return "/relationship/commentstool2";
    }

    @RequestMapping(value = "/fileUpload", method = {RequestMethod.POST})
    public String doFileUpload(@RequestParam(value = "file", required = false) MultipartFile file, Model model) {
        // 文件处理
        return "/relationship/commentstool2";
    }

    @RequestMapping("/begin")
    public String getLogin(Model model, HttpServletRequest request) {

        Random r = new Random();

        String[] methodslist = {"createKeySpacesThrift", "getSimpleThriftClient", "sanitizeColumns", "getDescriptor",
                "testSelectInFinalColumn", "testClusteringOrder", "supportsOperator", "postProcessorFor", "waitForLeveling"
                , "truncateSTandardLeveled", "assertEmptyEnd", "denseNonCompositeTable", "createTableStatements",
                "testSelectWithEQ", "multiOrderingValidation", "rangeDeletion", "fixWithCompaction", "testBatchAndList",
                "conditionalUpdate", "staticColumnsCas"};


        int nun1 = 15000 + r.nextInt(5000);
        int nun2 = 12000 + r.nextInt(4000);
        int nun3 = 5000 + r.nextInt(2000);
        int nun4 = 2000 + r.nextInt(1000);
        int nun5 = 3000 + r.nextInt(1000);

        int nun6 = 4000 + r.nextInt(1000);
        int nun7 = 10000 + r.nextInt(1000);
        int nun8 = 2800 + r.nextInt(1000);
        int nun9 = 700 + r.nextInt(200);
        int nun10 = 150 + r.nextInt(10);
        int nun11 = 250 + r.nextInt(50);

        int nun12 = 1400 + r.nextInt(200);
        int nun13 = 100 + r.nextInt(20);
        int nun14 = 200 + r.nextInt(40);
        int nun15 = 100 + r.nextInt(50);
        int nun16 = 100 + r.nextInt(30);
        int nun17 = 50 + r.nextInt(20);
        int nun18 = r.nextInt(50);
        int nun19 = nun12 + nun13 + nun14 + r.nextInt(100);
        int nun20 = nun15 + nun16 + nun17 + r.nextInt(30);
        int nun21 = nun18;


        int nun22 = 40 + r.nextInt(20);
        int nun23 = nun22 - 2;
        int nun24 = nun22 - 2;
        int nun25 = nun22 - 3;
        int nun26 = nun22 - 3;

        int nun27 = nun22 - 3;
        int nun28 = nun22 - 4;
        int nun29 = nun22 - 5;
        int nun30 = nun22 - 6;
        int nun31 = nun22 - 6;
        int nun32 = nun22 - 8;

        int nun33 = nun22 - 8;
        int nun34 = nun22 - 8;
        int nun35 = nun22 - 8;
        int nun36 = nun22 - 9;
        int nun37 = nun22 - 10;
        int nun38 = nun22 - 11;
        int nun39 = nun22 - 11;
        int nun40 = nun22 - 11;
        int nun41 = nun22 - 12;


        request.setAttribute("number1", nun1);
        request.setAttribute("number2", nun2);
        request.setAttribute("number3", nun3);
        request.setAttribute("number4", nun4);
        request.setAttribute("number5", nun5);
        request.setAttribute("number6", nun6);
        request.setAttribute("number7", nun7);
        request.setAttribute("number8", nun8);
        request.setAttribute("number9", nun9);
        request.setAttribute("number10", nun10);
        request.setAttribute("number11", nun11);
        request.setAttribute("number12", nun12);
        request.setAttribute("number13", nun13);
        request.setAttribute("number14", nun14);
        request.setAttribute("number15", nun15);
        request.setAttribute("number16", nun16);
        request.setAttribute("number17", nun17);
        request.setAttribute("number18", nun18);
        request.setAttribute("number19", nun19);
        request.setAttribute("number20", nun20);
        request.setAttribute("number21", nun21);


        request.setAttribute("number22", nun22);
        request.setAttribute("number23", nun23);
        request.setAttribute("number24", nun24);
        request.setAttribute("number25", nun25);
        request.setAttribute("number26", nun26);
        request.setAttribute("number27", nun27);
        request.setAttribute("number28", nun28);
        request.setAttribute("number29", nun29);
        request.setAttribute("number30", nun30);
        request.setAttribute("number31", nun31);
        request.setAttribute("number32", nun32);
        request.setAttribute("number33", nun33);
        request.setAttribute("number34", nun34);
        request.setAttribute("number35", nun35);
        request.setAttribute("number36", nun36);
        request.setAttribute("number37", nun37);
        request.setAttribute("number38", nun38);
        request.setAttribute("number39", nun39);
        request.setAttribute("number40", nun40);
        request.setAttribute("number41", nun41);

        request.setAttribute("method1", methodslist[0]);
        request.setAttribute("method2", methodslist[1]);
        request.setAttribute("method3", methodslist[2]);
        request.setAttribute("method4", methodslist[3]);
        request.setAttribute("method5", methodslist[4]);
        request.setAttribute("method6", methodslist[5]);
        request.setAttribute("method7", methodslist[6]);
        request.setAttribute("method8", methodslist[7]);
        request.setAttribute("method9", methodslist[8]);
        request.setAttribute("method10", methodslist[9]);
        request.setAttribute("method11", methodslist[10]);
        request.setAttribute("method12", methodslist[11]);
        request.setAttribute("method13", methodslist[12]);
        request.setAttribute("method14", methodslist[13]);
        request.setAttribute("method15", methodslist[14]);
        request.setAttribute("method16", methodslist[15]);
        request.setAttribute("method17", methodslist[16]);
        request.setAttribute("method18", methodslist[17]);
        request.setAttribute("method19", methodslist[18]);
        request.setAttribute("method20", methodslist[19]);


//		String source = "H:\\workspace";
//		File t = new File(source);
//		File[] flist = t.listFiles();
//		for(int i = 0; i < flist.length;i++) {
//			request.setAttribute("list1", flist[i].getName());
//	    }
        return "/relationship/commentstool1";

    }

}
