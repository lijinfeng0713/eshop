package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Good;
import com.lijinfeng.eshop.service.CartService;
import com.lijinfeng.eshop.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private CartService cartService;

    @Autowired
    private GoodService goodService;

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String cart (Model model, HttpSession session) {
        model.addAttribute("carts",cartService.myCarts(String.valueOf(session.getAttribute("userId"))));
        return "cart";
    }

    @RequestMapping(value = "/cart/add", method = RequestMethod.POST)
    public @ResponseBody String addToCart (@RequestBody Cart cart, HttpSession session) {

        Good good = goodService.findGoodById(Integer.parseInt(cart.getGoodId()));
        goodService.updateGoodStock(Integer.parseInt(cart.getGoodId()),good.getStock() - cart.getAmount());
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        cart.setTime(sdf.format(new Date()));
        cart.setUserId(String.valueOf(session.getAttribute("userId")));
        cartService.addToCart(cart);
        return "{ \"SUCCESS\" : true }";
    }

    @RequestMapping(value = "/cart/delete",method = RequestMethod.POST)
    public @ResponseBody String deleteFromCart (@RequestBody Cart cart) {
        try {
            Integer goodId = cartService.getGoodIdByCartId(cart.getCartId());
            Good good = goodService.findGoodById(goodId);
            goodService.updateGoodStock(goodId, good.getStock() + cart.getAmount());
            cartService.deleteFromCart(cart.getCartId());
            return "{ \"SUCCESS\" : true }";
        } catch (Exception ex) {
            return "{ \"SUCCESS\" : false }";
        }
    }
}
