package com.rae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Xie
 */
@Controller
@RequestMapping("recommend")
public class RecommendController {
    @RequestMapping("recommend")
    public String getLogin(Model model) {
        return "/recommendation/recommend";
    }
}
