package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.entity.User;
import com.lijinfeng.eshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
@Controller
@RequestMapping("/")
public class LoginContrlloer {

    @Autowired
    private UserService userService;

    @RequestMapping(method = RequestMethod.GET)
    public String printWelcome(ModelMap model) {
        model.addAttribute("message", "Hello world!");
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST, headers = "content-type=application/x-www-form-urlencoded")
    public String login(@ModelAttribute("user") User user, HttpServletRequest request) {
        User u = userService.findByUsername(user.getUsername());
        if (u != null && u.getPassword().equals(user.getPassword())) {
            request.getSession().setAttribute("username", u.getUsername());
            request.getSession().setAttribute("userId", u.getId());
            return "index";
        } else {
            return "login";
        }
    }
}
