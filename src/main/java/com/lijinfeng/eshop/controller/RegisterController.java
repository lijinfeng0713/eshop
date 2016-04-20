package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.entity.User;
import com.lijinfeng.eshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by ljf-梁燕双栖 on 2016/4/20.
 */
@Controller
public class RegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String register () {
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public @ResponseBody
    String register (@RequestBody User u) {
        System.out.println(u);
        try {
            userService.addUser(u);
            return "{ \"SUCCESS\" : true }";
        } catch (Exception ex) {
            return "{ \"SUCCESS\" : false }";
        }
    }

    /*
	 * 功能：检测用户名是否已经被注册
	 */
    @RequestMapping(value = "/check", method = RequestMethod.POST)
    @ResponseBody
    public String registerCheck(@RequestBody User user) {

        User u = userService.findByUsername(user.getUsername());
        if(u == null){
            return "{ \"SUCCESS\" : true }";
        }else{
            return "{ \"SUCCESS\" : false }";
        }
    }

}
