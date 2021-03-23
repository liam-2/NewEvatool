package com.rae.controller;

import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

/**
 * @author Cheng
 */
@Controller
@RequestMapping("/nlp")
public class NlpController {
    @RequestMapping("/nlp")
    public String getLogin(Model model) {
        return "/relationship/nlp";
    }

    @RequestMapping("/descrip")
    public String getLogin2(Model model) {
        return "/relationship/descrip";
    }

    @RequestMapping("/fileUpLoadopen")
    public boolean testUpload(@RequestParam("file_upload") MultipartFile[] files) {

        boolean result = false;
        try {
            String realPath;
            for (int i = 0; i < files.length; i++) {

                if (!files[i].isEmpty()) {
                    String uniqueName = files[i].getOriginalFilename();//�õ��ļ���
                    realPath = "E:" + File.separator + uniqueName;//�ļ��ϴ���·������ΪE��
                    System.out.println(realPath);
                    files[i].transferTo(new File(realPath));  // ת���ļ�
                    result = true;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }

    @RequestMapping("/fileDownLoadopen")
    public ResponseEntity<byte[]> fileDownLoad(HttpServletRequest request) throws Exception {

        ServletContext servletContext = request.getSession().getServletContext();
        String fileName = "finalre.txt";
        //String realPath = servletContext.getRealPath("/WEB-INF/"+fileName);//得到文件所在位置
        String realPath = "C://Users//Lenouo//Desktop//nlp_select//finalre.txt";
        System.out.println(realPath);
        InputStream in = new FileInputStream(new File(realPath));//将该文件加入到输入流之中
        byte[] body = null;
        body = new byte[in.available()];// 返回下一次对此输入流调用的方法可以不受阻塞地从此输入流读取（或跳过）的估计剩余字节数
        in.read(body);//读入到输入流里面

        fileName = new String(fileName.getBytes("gbk"), "iso8859-1");//防止中文乱码
        HttpHeaders headers = new HttpHeaders();//设置响应头
        headers.add("Content-Disposition", "attachment;filename=" + fileName);
        HttpStatus statusCode = HttpStatus.OK;//设置响应吗
        ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(body, headers, statusCode);
        return response;

    }

    @RequestMapping("/fileDownLoadnew")
    public ResponseEntity<byte[]> fileDownLoadnew(HttpServletRequest request) throws Exception {

        ServletContext servletContext = request.getSession().getServletContext();
        String fileName = "aa.xlsx";
        //String realPath = servletContext.getRealPath("/WEB-INF/"+fileName);//得到文件所在位置
        String realPath = "C://Users//Lenouo//Desktop//nlp_select//aa.xlsx";
        System.out.println(realPath);
        InputStream in = new FileInputStream(new File(realPath));//将该文件加入到输入流之中
        byte[] body = null;
        body = new byte[in.available()];// 返回下一次对此输入流调用的方法可以不受阻塞地从此输入流读取（或跳过）的估计剩余字节数
        in.read(body);//读入到输入流里面

        fileName = new String(fileName.getBytes("gbk"), "iso8859-1");//防止中文乱码
        HttpHeaders headers = new HttpHeaders();//设置响应头
        headers.add("Content-Disposition", "attachment;filename=" + fileName);
        HttpStatus statusCode = HttpStatus.OK;//设置响应吗
        ResponseEntity<byte[]> response = new ResponseEntity<byte[]>(body, headers, statusCode);
        return response;

    }

}