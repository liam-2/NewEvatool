package com.rae.controller;

import com.rae.entity.EvaRecord;
import com.rae.service.EvaService;
import com.rae.service.FreService;
import com.rae.util.NameSim;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.math.BigDecimal;
import java.util.*;

/**
 * @author Danny & Han
 */
@Controller
@RequestMapping("assessment")
public class EvaluationController {
    @Autowired
    private EvaService evaService;

    @Autowired
    private FreService freService;

    private NameSim nameSim;

    @RequestMapping("/assessment")
    public String getAssessment(Model model) {
        return "/evaluation/assessment";
    }

    @RequestMapping("/assess")
    public String assess(Model model) {
        return "/evaluation/assess";
    }

    @RequestMapping("/fileUpload")
    public String doFileUpload(@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, HttpServletResponse response) throws IOException {
        // 文件处理
        String fileType = file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."),
                file.getOriginalFilename().length());
        String fileRealName = file.getOriginalFilename().substring(0, file.getOriginalFilename().lastIndexOf("."));
        Reader reader = null;
        reader = new InputStreamReader(file.getInputStream(), "utf-8");
        BufferedReader br = new BufferedReader(reader);
        int sum = 0;
        int correct = 0;
        double utility = 0;
        float newCorrect = 0;
        //存储所有目标API及其出现频率，推荐列表
        List<String[]> list1 = new ArrayList<>();
        //存储推荐点所在方法及其共推荐次数和正确推荐次数
        Map<String, Integer[]> list2 = new HashMap<String, Integer[]>();
        //存储所有推荐的API
        List<String> list3 = new ArrayList<String>();
        //list中是三元组,正确，最相似API，相似因子
        List<String[]> list4 = new ArrayList<>();

        String line;
        String cAPI = null;
        String cClass = null;
        String cMethod = null;
        while ((line = br.readLine()) != null) {
            System.out.println(line);
            if (line.contains("index total point:")) {// 目标API
                String newStr = line.substring(line.indexOf("(") + 1, line.lastIndexOf(")"));
                cClass = newStr.split(",")[1];
                cAPI = newStr.split(",")[2];
                cClass = cClass.substring(cClass.indexOf("'") + 1, cClass.lastIndexOf("'"));
                cAPI = cAPI.substring(cAPI.indexOf("'") + 1, cAPI.lastIndexOf("'"));
                sum++;
            }
            if (line.contains("target method:")) {// 推荐点所在方法
                String newStr = line.substring(line.indexOf("[") + 1, line.lastIndexOf("]"));
                String newstra[] = newStr.split(",");
                cMethod = newstra[1].trim() + ":" + newstra[2].trim();


            }
            if (line.contains("sorted method score list:")) {// 推荐列表
                String newStr = line.substring(line.indexOf("[") + 1, line.lastIndexOf("]"));
                String[] temp = newStr.split("\'");
                int num = temp.length;
                list3.add(newStr);
                boolean cor = false;
                if (newStr.indexOf("'" + cAPI + "'") != -1) {
                    cor = true;
                    correct++;
                    newCorrect++;
                    int fre = freService.findFre(cClass, cAPI);
                    if (fre > 200) {
                        double res = new BigDecimal((float) 200 / fre).setScale(2, BigDecimal.ROUND_HALF_UP).doubleValue();
                        utility += res;
                        Map<String, String> map = new HashMap();
                        map.put(cClass + "," + cAPI, newStr);
                        list1.add(new String[]{cClass, cAPI, String.valueOf(fre), String.valueOf(res), String.valueOf(1)});
                    } else {
                        utility += 1;
                    }
                } else {
                    //计算newCorrect并且把推荐的API和目标API保存下来
                    int tempi = 0;
                    if (num > 2) {
                        float sim = 0;
                        float temp2 = 0;
                        for (int i = 1; i < num; i++) {
                            temp2 = NameSim.getSimilarityRatio(temp[i], cAPI);
                            sim = (sim > temp2) ? sim : temp2;
                            tempi = (sim > temp2) ? i : tempi;
                            //只计算数组中奇数，因为只有奇数是方法名
                            i++;
                        }
                        if (sim > 0.5) {
                            sim -= 0.3;
                            newCorrect += sim;
                            list4.add(new String[]{cAPI, temp[tempi], String.valueOf(sim)});
                        }

                    }
                }
                if (list2.containsKey(cMethod)) {
                    if (cor) {
                        int a = list2.get(cMethod)[0] + 1;
                        int b = list2.get(cMethod)[1] + 1;
                        list2.put(cMethod, new Integer[]{a, b});
                    } else {
                        int a = list2.get(cMethod)[0] + 1;
                        int b = list2.get(cMethod)[1] + 0;
                        list2.put(cMethod, new Integer[]{a, b});
                    }
                } else {
                    if (cor) {
                        list2.put(cMethod, new Integer[]{1, 1});
                    } else {
                        list2.put(cMethod, new Integer[]{1, 0});
                    }
                }
            }

        }
        utility = (utility / sum) * 100;
        reader.close();
        request.getSession().setAttribute("sum", sum);
        request.getSession().setAttribute("correct", correct);
        request.getSession().setAttribute("utility", utility);
        request.getSession().setAttribute("newCorrect", newCorrect);
        request.getSession().setAttribute("method", list2);
        request.getSession().setAttribute("effect", list1);
        request.getSession().setAttribute("SimList", list4);
        System.out.println("s数组长度" + list2.size());
        return fileRealName;
    }

    @RequestMapping("/doAssess")
    public String doAssess(@ModelAttribute("domain") EvaRecord eva, Model model, HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException, IOException {
        int sum = (int) request.getSession().getAttribute("sum");
        int correct = (int) request.getSession().getAttribute("correct");
        float newCorrect = (float) request.getSession().getAttribute("newCorrect");
        String temp = String.valueOf(request.getSession().getAttribute("utility"));
        int utility = Integer.valueOf(temp.substring(0, temp.indexOf(".")));
        Map<String, Integer[]> method = (Map<String, Integer[]>) request.getSession().getAttribute("method");
        List<String[]> effect = (List<String[]>) request.getSession().getAttribute("effect");
        int accuracy = (correct * 100) / sum;
        int precision = accuracy / 5;
        int recall = accuracy;
        int f1 = 2 * 100 / (1 * 100 / precision + 1 * 100 / recall);
        int acc = (int) (newCorrect * 100) / sum;
        request.setAttribute("accuracy", accuracy);
        request.setAttribute("precision", precision);
        request.setAttribute("recall", recall);
        request.setAttribute("f1", f1);
        request.setAttribute("utility", utility);
        request.setAttribute("correct", correct);
        request.setAttribute("sum", sum);
        request.setAttribute("newCorrect", acc);

        eva.setEvaAcc(String.valueOf(acc));
        eva.setEvaAccuracy(String.valueOf(accuracy));
        eva.setEvaFvalue(String.valueOf(f1));
        eva.setEvaPrecision(String.valueOf(precision));
        eva.setEvaRecall(String.valueOf(recall));
        eva.setEvaUtility(String.valueOf(utility));
        eva.setToolName("default");
        eva.setUtilType("default");
        if (evaService.doSave(eva)) {
            //alert("保存成功");
        } else {

        }
        //推荐最多的方法
        List<Map.Entry<String, Integer[]>> list = new ArrayList<>(method.entrySet());
        Collections.sort(list, new Comparator<Map.Entry<String, Integer[]>>() {
            @Override
            public int compare(Map.Entry<String, Integer[]> o1, Map.Entry<String, Integer[]> o2) {
                return o2.getValue()[0] - o1.getValue()[0];
            }
        });
        System.out.println("s数组长度" + list.size());

        request.getSession().setAttribute("accuracy", accuracy);
        request.getSession().setAttribute("effect", effect);

        request.setAttribute("method1", list.get(0).getKey());
        request.setAttribute("method2", list.get(1).getKey());
        request.setAttribute("method3", list.get(2).getKey());
        request.setAttribute("method4", list.get(3).getKey());
        request.setAttribute("method5", list.get(4).getKey());
        request.setAttribute("method6", list.get(5).getKey());
        request.setAttribute("method7", list.get(6).getKey());
        request.setAttribute("method8", list.get(7).getKey());
        request.setAttribute("method9", list.get(8).getKey());
        request.setAttribute("method10", list.get(9).getKey());
        request.setAttribute("method1b", list.get(0).getValue()[0] - list.get(0).getValue()[1]);
        request.setAttribute("method2b", list.get(1).getValue()[0] - list.get(1).getValue()[1]);
        request.setAttribute("method3b", list.get(2).getValue()[0] - list.get(2).getValue()[1]);
        request.setAttribute("method4b", list.get(3).getValue()[0] - list.get(3).getValue()[1]);
        request.setAttribute("method5b", list.get(4).getValue()[0] - list.get(4).getValue()[1]);
        request.setAttribute("method6b", list.get(5).getValue()[0] - list.get(5).getValue()[1]);
        request.setAttribute("method7b", list.get(6).getValue()[0] - list.get(6).getValue()[1]);
        request.setAttribute("method8b", list.get(7).getValue()[0] - list.get(7).getValue()[1]);
        request.setAttribute("method9b", list.get(8).getValue()[0] - list.get(8).getValue()[1]);
        request.setAttribute("method10b", list.get(9).getValue()[0] - list.get(9).getValue()[1]);
        request.setAttribute("method1c", list.get(0).getValue()[1]);
        request.setAttribute("method2c", list.get(1).getValue()[1]);
        request.setAttribute("method3c", list.get(2).getValue()[1]);
        request.setAttribute("method4c", list.get(3).getValue()[1]);
        request.setAttribute("method5c", list.get(4).getValue()[1]);
        request.setAttribute("method6c", list.get(5).getValue()[1]);
        request.setAttribute("method7c", list.get(6).getValue()[1]);
        request.setAttribute("method8c", list.get(7).getValue()[1]);
        request.setAttribute("method9c", list.get(8).getValue()[1]);
        request.setAttribute("method10c", list.get(9).getValue()[1]);
        System.out.println("评估成功");
        return "/evaluation/assess";

    }

    @RequestMapping("/history")
    public String getHistory(Model model, HttpServletRequest request) {
        List<EvaRecord> evaLists = evaService.findEva();

        request.getSession().setAttribute("evaLists", evaLists);

        return evaLists.toString();
    }

    @RequestMapping(value = "/gethistory", produces = {"application/json;charset=UTF-8"})
    @ResponseBody
    public List<EvaRecord> getHistory(HttpServletRequest request) {
        List<EvaRecord> evaLists = evaService.findEva();

        return evaLists;
    }

    @RequestMapping("/newCorrectness")
    public String newCorrectness(Model model, HttpServletRequest request) {
        List<String[]> list4 = (List) request.getSession().getAttribute("SimList");
        model.addAttribute("SimList", list4);
        return "/evaluation/newCorrectness";
    }

    @RequestMapping("/utility")
    public String getUtility(Model model, HttpServletRequest request) {
        String temp = String.valueOf(request.getSession().getAttribute("utility"));
        int accuracy = (int) request.getSession().getAttribute("accuracy");
        int utility = Integer.valueOf(temp.substring(0, temp.indexOf(".")));
        List<String[]> effect = (List<String[]>) request.getSession().getAttribute("effect");
        request.setAttribute("utility", utility);
        model.addAttribute("accuracy", accuracy);
        model.addAttribute("effect", effect);
        System.out.print(effect);
        return "/evaluation/utility";
    }

}