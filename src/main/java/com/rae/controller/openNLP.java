package com.rae.controller;

import opennlp.tools.postag.POSModel;
import opennlp.tools.postag.POSTaggerME;
import opennlp.tools.sentdetect.SentenceDetectorME;
import opennlp.tools.sentdetect.SentenceModel;
import opennlp.tools.tokenize.TokenizerME;
import opennlp.tools.tokenize.TokenizerModel;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

import java.io.*;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;


public class openNLP {

    public static String readfile(String path) throws Exception {
        File file = new File(path);
        FileReader reader = new FileReader(file);
        BufferedReader bReader = new BufferedReader(reader);
        StringBuilder sb = new StringBuilder();
        String s = "";
        while ((s = bReader.readLine()) != null) {
            sb.append(s + "\n");
            System.out.println(s);
        }
        bReader.close();
        String str = sb.toString();
        return str;
    }

    //分句
    public static String[] sentenceSegmentation(String str) {
        try {

            InputStream modelIn = new FileInputStream("./nlpbin/en-sent.bin");
            SentenceModel model = null;
            try {
                model = new SentenceModel(modelIn);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (modelIn != null) {
                    try {
                        modelIn.close();
                    } catch (IOException e) {
                    }
                }
            }

            SentenceDetectorME sentenceDetector = new SentenceDetectorME(model);
            String sentences[] = sentenceDetector.sentDetect(str);
            return sentences;

        } catch (FileNotFoundException e1) {
            e1.printStackTrace();
            return null;
        }
    }

    //分词  
    public static String[] Token(String str) {
        try {
            InputStream modelIn = new FileInputStream("./nlpbin/en-token.bin");

            TokenizerModel model = null;
            try {
                model = new TokenizerModel(modelIn);
            } catch (IOException e) {
                e.printStackTrace();
            } finally {
                if (modelIn != null) {
                    try {
                        modelIn.close();
                    } catch (IOException e) {
                    }
                }
            }

            TokenizerME tokenizer = new TokenizerME(model);
            String tokens[] = tokenizer.tokenize(str);
//      double tokenProbs[] = tokenizer.getTokenProbabilities();//must be called directly after one of the tokenize methods was called.  
            return tokens;
        } catch (FileNotFoundException e) {
            return null;
        }
    }

    public static void docmu(String words[], XSSFSheet sheetdoc) throws Exception {
        // String testString = readfile();
        //给出词性模型所在的路径
        //words= Token(testString);
        //File posModeFile=new File("./nlpbin/en-pos-maxent.bin");
        File posModeFile = new File("en-pos-maxent.bin");
        System.out.println(posModeFile.getAbsolutePath());
        FileInputStream posModeStream = new FileInputStream(posModeFile);
        POSModel model = new POSModel(posModeStream);
        //将句子切分成词
        POSTaggerME tagger = new POSTaggerME(model);
        // String[] words=SimpleTokenizer.INSTANCE.tokenize(str);
        //将切好的词的句子传递给标注器
        String[] tagResult = tagger.tag(words);
        /*
        for (int i=0; i<words.length;i++){
            System.out.print(words[i]+"/"+tagResult[i]+"\n");
        }
        System.out.println();
*/
        List<String> wordsList = Arrays.asList(words);

        List<String> tagList = Arrays.asList(tagResult);

        String wo = "";

        String ta = "";

        //3.1、创建行----表头行
        Row row = sheetdoc.createRow(0);
        //4、创建格
        Cell cell = row.createCell(2);
        cell.setCellValue("openNLP_Tokens");
        // cell.setCellStyle(cs);
        cell = row.createCell(3);
        cell.setCellValue("openNLP_Tags");
        //cell.setCellStyle(cs);

        //5、写入实体数据
        //List<String> wordsList = Test.getUser();
        int numofNoun = 0;
        int numofVerb = 0;
        int numofAdj = 0;
        int numofOther = 0;
        for (int i = 0; i < wordsList.size(); i++) {
            //3.2、创建行----内容行

            row = sheetdoc.createRow(i + 1);
            /*
            if (row==null){
                System.out.println("------" +
                        "row is NULL------");
            }
*/
            //User us = (User)list.get(i);
            Cell cell1 = row.createCell(2);
            /*
            if(cell1==null){
                System.out.println("cell1 is null-----------");
            }
            System.out.println();
            */
            cell1.setCellValue(wordsList.get(i));

            row.createCell(3).setCellValue(tagList.get(i));

            String b = tagList.get(i);
            if ("NNP".equals(b) || "NN".equals(b) || "NNS".equals(b) || "NNPS".equals(b)
                    || "VB".equals(b) || "VBN".equals(b) || "VBZ".equals(b)
                    || "VBP".equals(b) || "VBD".equals(b) || "VBG".equals(b)
                    || "JJ".equals(b) || "JJR".equals(b)) {
                wo += wordsList.get(i);
                wo += " ";
                ta += tagList.get(i);
                ta += " ";
            }


            if ("NN".equals(tagList.get(i))) {
                numofNoun++;
            } else if ("VBZ".equals(tagList.get(i))) {
                numofVerb++;
            } else if ("JJ".equals(tagList.get(i))) {
                numofAdj++;
            } else {
                numofOther++;
            }
        }
        if (sheetdoc.getRow(0) == null) {
            Row row1 = sheetdoc.createRow(0);
            Cell c1 = row1.createCell(83);
            c1.setCellValue("OP");
        } else {
            Row row1 = sheetdoc.getRow(0);
            Cell c1 = row1.createCell(83);
            c1.setCellValue("OP");
        }

        if (sheetdoc.getRow(1) == null) {
            Row row2 = sheetdoc.createRow(1);
            Cell c2 = row2.createCell(83);
            c2.setCellValue(wo);
        } else {
            Row row2 = sheetdoc.getRow(1);
            Cell c2 = row2.createCell(83);
            c2.setCellValue(wo);
        }

        if (sheetdoc.getRow(2) == null) {
            Row row3 = sheetdoc.createRow(2);
            Cell c3 = row3.createCell(83);
            c3.setCellValue(ta);
        } else {
            Row row3 = sheetdoc.getRow(2);
            Cell c3 = row3.createCell(83);
            c3.setCellValue(ta);
        }
/*
        row=sheetdoc.getRow(wordsList.size()+1);
        row.createCell(2).setCellValue("Noun");
        row.createCell(3).setCellValue(numofNoun);
        row=sheetdoc.getRow(wordsList.size()+2);
        if (row==null){
            System.out.println("NULL------" +
                    "");
        }
        row.createCell(2).setCellValue("Verb");
        row.createCell(3).setCellValue(numofVerb);
        row=sheetdoc.getRow(wordsList.size()+3);
        row.createCell(2).setCellValue("Adj");
        row.createCell(3).setCellValue(numofAdj);
        row=sheetdoc.getRow(wordsList.size()+4);
        row.createCell(2).setCellValue("Other");
        row.createCell(3).setCellValue(numofOther);
*/
    }

    public static void eveSentence(String words[], XSSFSheet sheetsen) throws Exception {

        //3.1、创建行----表头行

        // String[] words= Token(sentence);
        //File posModeFile=new File("./nlpbin/en-pos-maxent.bin");
        File posModeFile = new File("en-pos-maxent.bin");
        FileInputStream posModeStream = new FileInputStream(posModeFile);
        POSModel model = new POSModel(posModeStream);
        //将句子切分成词
        POSTaggerME tagger = new POSTaggerME(model);
        // String[] words=SimpleTokenizer.INSTANCE.tokenize(str);
        //将切好的词的句子传递给标注器
        String[] tagResult = tagger.tag(words);
        /*
        for (int i=0; i<words.length;i++){
            System.out.print(words[i]+"/"+tagResult[i]+"\n");
        }
        //System.out.println();
*/
        List<String> wordsList = Arrays.asList(words);
        List<String> tagList = Arrays.asList(tagResult);


        //3.1、创建行----表头行
        Row row = sheetsen.createRow(0);
        //4、创建格
        Cell cell = row.createCell(2);
        cell.setCellValue("openNLP_Tokens");
        // cell.setCellStyle(cs);
        cell = row.createCell(3);
        cell.setCellValue("openNLP_Tags");
        //cell.setCellStyle(cs);

        //5、写入实体数据
        //List<String> wordsList = Test.getUser();
        String wo = "";
        String ta = "";
        for (int i = 0; i < wordsList.size(); i++) {
            //3.2、创建行----内容行
            row = sheetsen.createRow(i + 1);
            //User us = (User)list.get(i);
            row.createCell(2).setCellValue(wordsList.get(i));
            row.createCell(3).setCellValue(tagList.get(i));
            String b = tagList.get(i);
            if ("NNP".equals(b) || "NN".equals(b) || "NNS".equals(b) || "NNPS".equals(b)
                    || "VB".equals(b) || "VBN".equals(b) || "VBZ".equals(b)
                    || "VBP".equals(b) || "VBD".equals(b) || "VBG".equals(b)
                    || "JJ".equals(b) || "JJR".equals(b)) {
                wo += wordsList.get(i);
                wo += " ";
                ta += b;
                ta += " ";
            }
        }

        if (sheetsen.getRow(0) == null) {
            Row row1 = sheetsen.createRow(0);
            Cell c1 = row1.createCell(83);
            c1.setCellValue("OP");
        } else {
            Row row1 = sheetsen.getRow(0);
            Cell c1 = row1.createCell(83);
            c1.setCellValue("OP");
        }

        if (sheetsen.getRow(1) == null) {
            Row row2 = sheetsen.createRow(1);
            Cell c2 = row2.createCell(83);
            c2.setCellValue(wo);
        } else {
            Row row2 = sheetsen.getRow(1);
            Cell c2 = row2.createCell(83);
            c2.setCellValue(wo);
        }

        if (sheetsen.getRow(2) == null) {
            Row row3 = sheetsen.createRow(2);
            Cell c3 = row3.createCell(83);
            c3.setCellValue(ta);
        } else {
            Row row3 = sheetsen.getRow(2);
            Cell c3 = row3.createCell(83);
            c3.setCellValue(ta);
        }

    }

    /*
        public static void main(String[] args)throws Exception {
            long startTime = System.currentTimeMillis();
            System.out.println("Enter the number of files:");
            Scanner c=new Scanner(System.in);
            int filenum=c.nextInt();

          // int filenum=1;
            String path="E:\\sentences\\data.txt";
            String testString = readfile(path);
            //给出词性模型所在的路径
            FileInputStream fs=new FileInputStream("D:\\graduate student\\PycharmProjects\\PycharmProjects\\aa.xlsx");
            //POIFSFileSystem ps=new POIFSFileSystem(fs);aa
            XSSFWorkbook wb= new XSSFWorkbook(fs);
            String words[] = Token(testString);
            String sentences[] = sentenceSegmentation(testString);

            XSSFSheet sheetdoc=wb.createSheet("result");
            if (sheetdoc==null)
                System.out.println("sheetdoc is null");
            docmu(words,sheetdoc);

            for(int i=0;i<filenum;i++){
                int num=i+1;
                String shs="result"+num;
                XSSFSheet sheetsen = wb.createSheet(shs);
                //System.out.println(shs);
                String path1="E:\\sentences\\textsens"+num+".txt";
                String senString = readfile(path1);

                //System.out.println(path1);
                String words1[] = Token(senString);
                eveSentence(words1,sheetsen);
            }

            try {
                FileOutputStream fout = new FileOutputStream("D:\\graduate student\\PycharmProjects\\PycharmProjects\\aa.xlsx");
                wb.write(fout);
                fout.close();
            } catch (IOException e) {
                e.printStackTrace();
            }

        }
        */
    public static void test() throws Exception {
        System.out.println("Enter the number of files:");
        Scanner c = new Scanner(System.in);
        //int filenum=c.nextInt();
        int filenum = 2;
        // int filenum=1;
        String path = "E:\\sentences\\data.txt";
        String testString = readfile(path);
        //给出词性模型所在的路径
        FileInputStream fs = new FileInputStream("C://Users//Lenouo//Desktop//nlp_select//aa.xlsx");
        //POIFSFileSystem ps=new POIFSFileSystem(fs);aa
        XSSFWorkbook wb = new XSSFWorkbook(fs);
        String words[] = Token(testString);
        String sentences[] = sentenceSegmentation(testString);

        XSSFSheet sheetdoc = wb.createSheet("result");
        if (sheetdoc == null) {
            System.out.println("sheetdoc is null");
        }
        docmu(words, sheetdoc);

        for (int i = 0; i < filenum; i++) {
            int num = i + 1;
            String shs = "result" + num;
            XSSFSheet sheetsen = wb.createSheet(shs);
            //System.out.println(shs);
            String path1 = "E:\\sentences\\textsens" + num + ".txt";
            String senString = readfile(path1);

            //System.out.println(path1);
            String words1[] = Token(senString);
            eveSentence(words1, sheetsen);
        }

        try {
            FileOutputStream fout = new FileOutputStream("C://Users//Lenouo//Desktop//nlp_select//aa.xlsx");
            wb.write(fout);
            fout.close();
        } catch (IOException e) {
            e.printStackTrace();
        }

    }
}
