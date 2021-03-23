package com.rae.controller;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.TypeReference;
import com.rae.entity.ChartInfo;
import com.rae.entity.FourthObject;
import com.rae.entity.SecondInfo;
import com.rae.util.ObjectToJson;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestHeader;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipOutputStream;

@Controller
@RequestMapping("/mainpage")
public class MainPageController {
    public static void compressZip(String name) throws Exception {
        String pathsecond = "D:\\Upload_Data\\json\\secondpage";
        String pathprojectlist = "D:\\Upload_Data\\json\\projectlist";
        String pathrelation = "D:\\Upload_Data\\json\\relationpointnetwork";
        String pathmethod = "D:\\Upload_Data\\json\\methodpointnetwork";
        if (name != null && !"".equals(name)) {
            String zippath = "D:\\Upload_Data\\json\\tempcompress\\" + name + ".zip";
            // 读取目标文件，通过response将目标文件写到客户端
            // 获取目标文件的绝对路径
            File[] filessecond = new File(pathsecond).listFiles();
            File[] filesproject = new File(pathprojectlist).listFiles();
            File[] filesrelation = new File(pathrelation).listFiles();
            File[] filesmethod = new File(pathmethod).listFiles();

            int lensecond = filessecond.length;
            int lenproject = filesproject.length;
            int lenrelation = filesrelation.length;
            int lenmethod = filesmethod.length;
            List<File> files = new ArrayList<>();
            boolean flag = false;
            for (int i = 0; i < lensecond; i++) {
                if (filessecond[i].getName().contains(name)) {
                    pathsecond += "\\" + filessecond[i].getName();
                    flag = true;
                    System.out.println(pathsecond);
                    break;
                }
            }
            if (flag) {
                File tem = new File(pathsecond);
                files.add(tem);
            }
            flag = false;
            for (int i = 0; i < lenproject; i++) {
                if (filesproject[i].getName().contains(name)) {
                    pathprojectlist += "\\" + filesproject[i].getName();
                    flag = true;
                    System.out.println(pathprojectlist);
                    break;
                }
            }
            if (flag) {
                File tem = new File(pathprojectlist);
                files.add(tem);
            }
            flag = false;
            for (int i = 0; i < lenrelation; i++) {
                if (filesrelation[i].getName().contains(name)) {
                    pathrelation += "\\" + filesrelation[i].getName();
                    flag = true;
                    System.out.println(pathrelation);
                    break;
                }
            }
            if (flag) {
                File tem = new File(pathrelation);
                files.add(tem);
            }
            flag = false;
            for (int i = 0; i < lenmethod; i++) {
                if (filesmethod[i].getName().contains(name)) {
                    pathmethod += "\\" + filesmethod[i].getName();
                    flag = true;
                    System.out.println(pathmethod);
                    break;
                }
            }
            if (flag) {
                File tem = new File(pathmethod);
                files.add(tem);
            }

            // compress start!
            ZipOutputStream zipOutStream = null;
            FileOutputStream out = new FileOutputStream(zippath);
            zipOutStream = new ZipOutputStream(new BufferedOutputStream(out));
            // -- 设置压缩方法
            zipOutStream.setMethod(ZipOutputStream.DEFLATED);
            // -- 将多文件循环写入压缩包
            for (int i = 0; i < files.size(); i++) {
                File file = files.get(i);
                FileInputStream filenputStream = new FileInputStream(file);
                byte[] data = new byte[(int) file.length()];
                filenputStream.read(data);
                // -- 添加ZipEntry，并ZipEntry中写入文件流，这里，加上i是防止要下载的文件有重名的导致下载失败
                zipOutStream.putNextEntry(new ZipEntry(file.getName()));
                zipOutStream.write(data);
                filenputStream.close();
                zipOutStream.closeEntry();

            }
            zipOutStream.flush();
            zipOutStream.close();
            out.close();
        }
    }

    @RequestMapping("/downJsonFiles")
    public String downloadJsonFiles(HttpServletRequest request, HttpServletResponse response,
                                    Model model, @RequestHeader("User-Agent") String userAgent) throws Exception {
        String name = request.getParameter("dir");
//		String pathsecond = "D:\\Upload_Data\\json\\secondpage";
//		String pathprojectlist = "D:\\Upload_Data\\json\\projectlist";
//		String pathrelation = "D:\\Upload_Data\\json\\relationpointnetwork";
//		String pathmethod = "D:\\Upload_Data\\json\\methodpointnetwork";		
        if (name != null && !"".equals(name)) {
//			response.setCharacterEncoding("utf-8");
//			response.setContentType("application/octet-stream");
//			response.setHeader("Content-Disposition", "attachment;fileName*=UTF-8''" + name);
            String zippath = "D:\\Upload_Data\\json\\tempcompress\\";
            // 读取目标文件，通过response将目标文件写到客户端
            // 获取目标文件的绝对路径
            File zip = new File(zippath + name + ".zip");
            if (!zip.exists()) {
                compressZip(name);
            }
            String path = zippath;
            String fileName = name + ".zip";
            response.reset();
            response.setCharacterEncoding("UTF-8");
            response.setContentType("multipart/form-data");
            response.setHeader("Content-Disposition",
                    "attachment;fileName=" + URLEncoder.encode(fileName, "UTF-8"));

            File file = new File(path, fileName);
            //2、 读取文件--输入流
            InputStream input = new FileInputStream(file);
            //3、 写出文件--输出流
            OutputStream out = response.getOutputStream();
            byte[] buff = new byte[1024];
            int index = 0;
            //4、执行 写出操作
            while ((index = input.read(buff)) != -1) {
                out.write(buff, 0, index);
                out.flush();
            }
            out.close();
            input.close();
            return null;


            //model.addAttribute(zip);
//			BodyBuilder builder = ResponseEntity.ok();
//			File file = new File(zippath);
//			builder.contentLength(file.length());
//
//			// application/octet-stream 二进制数据流（最常见的文件下载）
//			builder.contentType(MediaType.APPLICATION_OCTET_STREAM);
//			// 使用URLEncoding.decode对文件名进行解码
//			String filename = URLEncoder.encode(name, "UTF-8");
//			if (userAgent.indexOf("MSIE") > 0) {
//				builder.header("Content-Disposition", "attachment; filename=" + filename);
//			} else {
//				builder.header("Content-Disposition", "attacher; filename*=UTF-8''" + filename);
//			}
//			return builder.body(FileUtils.readFileToByteArray(file));

            // compress start!
//			OutputStream resout = response.getOutputStream();
//			File zipfile = new File(zippath);
//			FileInputStream input = new FileInputStream(zippath);
//			byte[] data = new byte[(int) zipfile.length()];
//			input.read(data);
//			resout.write(data);
//			resout.flush();
        }
        return "/relationship/secondpage";
        //return null;
    }

    @RequestMapping("/detailOfproject")
    public String getDetailOfProject(HttpServletRequest request, Model model) throws IOException {
        String name = request.getParameter("dir");
        System.out.println(name);
        String path = "D:\\Upload_Data\\json\\secondpage";
        if (name != null && !"".equals(name)) {
            File[] files = new File(path).listFiles();
            int len = files.length;
            boolean flag = false;
            for (int i = 0; i < len; i++) {
                if (files[i].getName().contains(name)) {
                    path += "\\" + files[i].getName();
                    flag = true;
                    System.out.println(path);
                    break;
                }
            }
            if (flag) {
                FourthObject res = new FourthObject();
                ObjectToJson json = new ObjectToJson();
                res = ObjectToJson.transferToObjects(path);
                List<Integer> number = new ArrayList<>();
                List<Double> per = new ArrayList<>();
                List<SecondInfo> fourth = res.getFourth();
                for (SecondInfo tem : fourth) {
                    number.add(tem.getNumbers());
                    per.add(tem.getPer());
                }
                model.addAttribute("firstbar", res.getFirst().getNumbers());
                model.addAttribute("second", res.getSecond().getData());
                model.addAttribute("second1", res.getSecond().getNumbers());
                model.addAttribute("third", res.getThird().getData());
                model.addAttribute("third1", res.getThird().getNumbers());
                model.addAttribute("fourthnumber", number);
                model.addAttribute("fourthper", per);
                model.addAttribute("dir", name);
            }
        }
        return "/relationship/secondpage";
    }

    @ResponseBody
    @RequestMapping(value = "/relatedgragh", produces = {"application/json;chartset=UTF-8"})
    public String getrelatedgragh(HttpServletRequest request, ModelAndView view) throws Exception {
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
        System.out.println(source);
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
                // DiagramNode tt = JSON.parseObject(line, new TypeReference<DiagramNode>() {});
                // result.add(tt);
            }
            fis.close();
            isr.close();
            br.close();
        }
        // System.out.println("result: "+res.size());
        // model.addAttribute("details", res);
        return res;
    }

    @RequestMapping("/methodgragh")
    public ModelAndView getmethodgragh(HttpServletRequest request, ModelAndView view) {
        view.setViewName("forward:MethodGragh");
        return view;
    }

    @RequestMapping("/projectlist")
    public String getProjectList(Model model) throws Exception {
        List<ChartInfo> res = getChartInfo();
        model.addAttribute("details", res);
        return "/relationship/mainpage";
    }

    @RequestMapping("/firstrelationgragh")
    public String getFirst(HttpServletRequest request, Model view) {
        String name = request.getParameter("dir");
        view.addAttribute("dir", name);
        return "/relationship/FirstRelationGragh";
    }

    @RequestMapping("/secondrelationgragh")
    public String getSecond(HttpServletRequest request, Model view) {
        String name = request.getParameter("dir");
        view.addAttribute("dir", name);
        return "/relationship/SecondRelationGragh";
    }

    public List<ChartInfo> getChartInfo() throws Exception {
        List<ChartInfo> res = new ArrayList<>();
        String path = "D:\\Upload_Data\\json\\projectlist";
        File[] files = new File(path).listFiles();
        for (File file : files) {
            String jsonstr = "";
            FileInputStream fis = null;
            InputStreamReader isr = null;
            BufferedReader br = null;
            fis = new FileInputStream(file);
            isr = new InputStreamReader(fis, "utf-8");
            br = new BufferedReader(isr);
            String line = null;
            while ((line = br.readLine()) != null) {
                ChartInfo tt = JSON.parseObject(line, new TypeReference<ChartInfo>() {
                });
                res.add(tt);
            }
            fis.close();
            isr.close();
            br.close();
        }
        return res;
    }
}
