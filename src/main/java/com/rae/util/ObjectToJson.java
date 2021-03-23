package com.rae.util;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.TypeReference;
import com.rae.entity.FourthObject;
import com.rae.entity.SecondInfo;
import com.rae.entity.barinfo;

import java.io.*;
import java.util.ArrayList;
import java.util.List;


public class ObjectToJson {
    private String path;

    public static FourthObject transferToObjects(String path)
            throws IOException {
        barinfo v1 = new barinfo();
        barinfo v2 = new barinfo();
        barinfo v3 = new barinfo();
        List<SecondInfo> fourth = new ArrayList<SecondInfo>();
        FourthObject res = new FourthObject();
        File file = new File(path);
        FileInputStream fis = null;
        InputStreamReader reader = null;
        BufferedReader br = null;
        fis = new FileInputStream(file);
        reader = new InputStreamReader(fis, "utf-8");
        br = new BufferedReader(reader);
        String line = null;
        int count = 0;
        while ((line = br.readLine()) != null) {
            switch (count) {
                case 0:
                    v1 = JSON.parseObject(line, new TypeReference<barinfo>() {
                    });
                    res.setFirst(v1);
                    System.out.println(v1.getData().size());
                    break;
                case 1:
                    v2 = JSON.parseObject(line, new TypeReference<barinfo>() {
                    });
                    res.setSecond(v2);
                    System.out.println(v2.getData().size());
                    break;
                case 2:
                    v3 = JSON.parseObject(line, new TypeReference<barinfo>() {
                    });
                    res.setThird(v3);
                    System.out.println(v3.getData().size());
                    break;
                case 3:
                    fourth = JSON.parseArray(line, SecondInfo.class);
                    res.setFourth(fourth);
                    System.out.println(fourth.size());
                    break;
                default:
                    break;
            }
            count++;
        }
        fis.close();
        reader.close();
        br.close();
        return res;
    }

    public static boolean transferfourth(Object res1, Object res2, Object res3, List<SecondInfo> fourth, String name)
            throws IOException {
        name += System.currentTimeMillis() + ".json";
        File file = new File(name);
        System.out.println(name);
        if (!file.exists()) {
            System.out.println("not   exist!");
            file.createNewFile();
        }
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));
        JSONArray gson = new JSONArray();
        bw.write(JSON.toJSON(res1).toString());
        bw.newLine();
        bw.write(JSON.toJSON(res2).toString());
        bw.newLine();
        bw.write(JSON.toJSON(res3).toString());
        bw.newLine();
        String temp = "";
//		for (SecondInfo tt : fourth) {
//			temp += gson.toJSON(tt).toString();
//		}
        temp += JSON.toJSON(fourth).toString();
        bw.write(temp);
        bw.newLine();
        System.out.println(JSON.toJSON(res1).toString());
        bw.flush();
        bw.close();
        return true;
    }

    public static boolean transferObject(Object res, String name) throws IOException {
        name += System.currentTimeMillis() + ".json";
        File file = new File(name);
        System.out.println(name);
        if (!file.exists()) {
            System.out.println("not   exist!");
            file.createNewFile();
        }
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));
        JSONArray gson = new JSONArray();
        bw.write(JSON.toJSON(res).toString());
        bw.newLine();
        System.out.println(JSON.toJSON(res).toString());
        bw.flush();
        bw.close();
        return true;
    }

    public static boolean transferListObject(List<Object> res, String name) throws IOException {
        name += System.currentTimeMillis() + ".json";
        File file = new File(name);
        System.out.println(name);
        if (!file.exists()) {
            System.out.println("not   exist!");
            file.createNewFile();
        }
        BufferedWriter bw = new BufferedWriter(new FileWriter(file));
        for (Object tem : res) {
            JSONArray gson = new JSONArray();
            bw.write(JSON.toJSON(tem).toString());
            bw.newLine();
            System.out.println(JSON.toJSON(tem).toString());
        }
        bw.flush();
        bw.close();
        return true;
    }


}
