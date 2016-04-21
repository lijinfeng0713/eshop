package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.entity.User;
import com.lijinfeng.eshop.service.UserService;
import net.sf.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

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
        User user = userService.findByUsername(u.getUsername());
        if (user != null || "".equals(u.getUsername()) || "".equals(u.getPassword()) ||"".equals(u.getEmail()))
            return "{ \"SUCCESS\" : false }";
        try {
            userService.addUser(u);
            return "{ \"SUCCESS\" : true }";
        } catch (Exception ex) {
            return "{ \"SUCCESS\" : false }";
        }
    }

}
