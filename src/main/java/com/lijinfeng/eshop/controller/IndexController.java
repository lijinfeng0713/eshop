package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.service.CartService;
import com.lijinfeng.eshop.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ljf-梁燕双栖 on 2016/4/16.
 */
@Controller
@RequestMapping("/eshop")
public class IndexController {

    @Autowired
    private GoodService goodService;

    @Autowired
    private CartService cartService;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index (ModelMap model) {
        model.addAttribute("goods",goodService.listGoods());
        model.addAttribute("size",cartService.getSizeOfCart());
        return "index";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String search (HttpServletRequest request, Model model) {
        String condition = request.getParameter("search-condition");
        if ("".equals(condition)) {
            model.addAttribute("goods",goodService.listGoods());
        } else {
            model.addAttribute("goods",goodService.findGoodsByCondition(condition));
        }
        model.addAttribute("size",cartService.getSizeOfCart());
        return "index";
    }

    @RequestMapping(value = "/category/{id}", method = RequestMethod.GET)
    public String category (@PathVariable int id, Model model) {
        String type = null;
        if (id == 1) type = "电子产品";
        if (id == 2) type = "衣服饰品";
        if (id == 3) type = "精美小吃";
        model.addAttribute("goods", goodService.findGoodsByType(type));
        model.addAttribute("size",cartService.getSizeOfCart());
        return "index";
    }
}
