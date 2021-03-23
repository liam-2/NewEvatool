package com.rae.controller;

import com.rae.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;

/**
 * @author Danny
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Resource
    UserService userService;

}
