package com.rae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Du
 */
@Controller
@RequestMapping("codesearch")
public class SearchController {
    @RequestMapping("/codesearch")
    public String getLogin(Model model) {
        return "/search/codesearch";
    }

}