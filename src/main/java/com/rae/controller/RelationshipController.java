package com.rae.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @author Song & Cheng & Zhang & Liao
 */
@Controller
@RequestMapping("relationship")
public class RelationshipController {
    @RequestMapping("/relationship")
    public String getLogin(Model model) {
        return "/relationship/relationship";
    }
}