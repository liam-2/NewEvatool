package com.rae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;

@Controller
@RequestMapping("gragh")
public class GraghController {
    @RequestMapping("/skip")
    public String skip(HttpServletRequest request, ModelAndView view) {
        view.setViewName("forward:RelationGragh");
        return "/relationship/RelationGragh";
    }

    @ResponseBody
    @RequestMapping(value = "/ciclegragh", produces = {"application/json;chartset=UTF-8"})
    public String CicleGragh(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String res = null;
        String projectname = request.getParameter("dir");
        String source = "D:\\Upload_Data\\json\\relationpointnetwork";
        File t = new File(source);
        File[] flist = t.listFiles();
        boolean flag = false;
        for (int i = 0; i < flist.length; i++) {
            if (flist[i].getName().contains(projectname)) {
                source += "\\" + flist[i].getName();
                flag = true;
                System.out.println(source);
                break;
            }
        }
        System.out.println("11" + source);
        if (flag) {
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
                res = line;
                System.out.println("line:" + line);
                //DiagramNode tt = JSON.parseObject(line, new TypeReference<DiagramNode>() {});
                //	result.add(tt);
            }
            fis.close();
            isr.close();
            br.close();
        }
        //System.out.println("result:     "+res.size());
        //model.addAttribute("details", res);
        return res;
    }

    @ResponseBody
    @RequestMapping(value = "/methodgragh", produces = {"application/json;chartset=UTF-8"})
    public String MethodCicleGragh(HttpServletRequest request, HttpServletResponse response) throws Exception {
        String res = null;
        String projectname = request.getParameter("dir");
        String source = "D:\\Upload_Data\\json\\methodpointnetwork";
        File t = new File(source);
        File[] flist = t.listFiles();
        //List<String> res = new ArrayList<String>();
        boolean flag = false;
        for (int i = 0; i < flist.length; i++) {
            //res.add(flist[i].getName());
            if (flist[i].getName().contains(projectname)) {
                source += "\\" + flist[i].getName();
                flag = true;
                System.out.println(source);
                break;
            }
        }
        System.out.println(source);
        //	List<DiagramNode> result = new ArrayList<DiagramNode>();
        if (flag) {
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
                res = line;
                //DiagramNode tt = JSON.parseObject(line, new TypeReference<DiagramNode>() {});
                //	result.add(tt);
            }
            fis.close();
            isr.close();
            br.close();
        }
        //System.out.println("result:     "+res.size());
        //model.addAttribute("details", res);
        return res;
    }
}
