package com.rae.controller;

/**
 * @author ：liam
 * @date ： 2021/3/23 9:16
 * @description：1.0
 */

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FirstController {
    @RequestMapping("/")
    public String test() {
        return "/login";
    }

}
