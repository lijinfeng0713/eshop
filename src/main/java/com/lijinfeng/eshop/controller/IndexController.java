package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
@Controller
@RequestMapping("/eshop")
public class IndexController {

    @Autowired
    private GoodService goodService;
    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index (Model model) {
        model.addAttribute("goods",goodService.listGoods());
        return "index";
    }
}
