package com.rae.controller;

import com.rae.entity.User;
import com.rae.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;

/**
 * @author Danny
 */
@Controller
@RequestMapping("/login")
public class LoginController {
    @Autowired
    private UserService userService;

    @GetMapping(value = {"/", "/login"})
    public String loginPage() {

        return "login";
    }

    @RequestMapping("/home")
    public String getHome(Model model) {
        return "/home";
    }

    @RequestMapping("/index")
    public String getIndex(Model model) {
        return "/index";
    }

    @RequestMapping("/login")
    public String getLogin(Model model) {
        return "/login";
    }

    @RequestMapping("/register")
    public String getRegister(Model model) {
        return "/register";
    }

    @RequestMapping("/login.do")
    public String doLogin(@ModelAttribute("domain") User user, HttpServletRequest request) {
        if (userService.hasUser(user)) {
            request.getSession().setAttribute("user", user);

            return "/evaluation/assessment";
        } else {

            return "/login";
        }

    }

    @RequestMapping("/register.do")
    public String doRegister(@ModelAttribute("domain") User user, Model model) {
        user.setId(null);
        try {
            if (userService.doSave(user)) {
                return "/login";
            } else {
                return "/register";
            }
        } catch (Exception e) {
            return "/register";
        }
    }
}
