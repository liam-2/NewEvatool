package com.rae.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.rae.entity.output;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.util.ArrayList;
import java.util.List;

/**
 * @author Zhang & Liao
 */
@Controller
@RequestMapping("baseinfo")
public class BaseinfoController {
    @RequestMapping("/ObjectRelationShip")
    public String getLogin(Model model) {
        return "/relationship/ObjectRelationShip";
    }

    @RequestMapping("/uploadFiles")
    public String uploadfiles(@RequestParam("fileupload") MultipartFile[] files, HttpServletRequest request, HttpServletResponse response) {
        try {
            int count = files.length;
            for (int i = 0; i < count; i++) {
                MultipartFile file = files[i];
                InputStream is = file.getInputStream();
                BufferedInputStream bi = new BufferedInputStream(is);

                String filename = file.getOriginalFilename();
                System.out.println(filename);
                String realpath = request.getSession().getServletContext().getRealPath("/Files");
                String newfilepath = realpath + "\\" + filename;
                File newfile = new File(newfilepath);
                FileOutputStream os = new FileOutputStream(newfile);
                System.out.println(newfilepath);

                int len = 0;
                byte[] bytes = new byte[1024];
                while ((len = is.read(bytes)) != -1) {
                    os.write(bytes, 0, len);
                }
                bi.close();
                os.close();


            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/relationship/relationshipdetials";
    }

    @RequestMapping("/result")
    public String relations(HttpServletRequest request, Model model) throws Exception {
        String dir = request.getParameter("dir");
        String source = "D:\\Upload_Data\\txtfiles";

        // List<output> res = tt.Output(source);
        //	 BatchedASTParser parser = new BatchedASTParser(source);
        // System.out.println("path:    "+dir+"  "+res.size());
        File t = new File(source);
        File[] flist = t.listFiles();
        //List<String> res = new ArrayList<String>();
        for (int i = 0; i < flist.length; i++) {
            //res.add(flist[i].getName());
            if (flist[i].getName().contains(dir)) {
                source += "\\" + flist[i].getName();
                System.out.println(source);
                break;
            }
        }
        System.out.println(source);
        List<output> res = new ArrayList<output>();
        ;
        File file = new File(source);
        String jsonstr = "";
        FileInputStream fis = null;
        InputStreamReader isr = null;
        BufferedReader br = null;
        fis = new FileInputStream(file);
        isr = new InputStreamReader(fis, "utf-8");
        br = new BufferedReader(isr);
        String line = null;
        while ((line = br.readLine()) != null) {
            output tt = JSON.parseObject(line, new TypeReference<output>() {
            });
            res.add(tt);
        }
        fis.close();
        isr.close();
        br.close();
        System.out.println("result:     " + res.size());
        model.addAttribute("details", res);
        return "/relationship/relationshipdetials";
    }

    public List<output> JsonToObject(String path) throws IOException {
        List<output> res = new ArrayList<output>();
        File file = new File(path);
        String jsonstr = "";
        FileInputStream fis = null;
        InputStreamReader isr = null;
        BufferedReader br = null;
        fis = new FileInputStream(file);
        isr = new InputStreamReader(fis, "utf-8");
        br = new BufferedReader(isr);
        String line = null;
        while ((line = br.readLine()) != null) {
            output tt = JSON.parseObject(line, new TypeReference<output>() {
            });
            res.add(tt);
        }
        fis.close();
        isr.close();
        br.close();
        return res;
    }

}
