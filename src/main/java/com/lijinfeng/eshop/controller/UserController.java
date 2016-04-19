package com.lijinfeng.eshop.controller;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;
import com.lijinfeng.eshop.entity.Good;
import com.lijinfeng.eshop.entity.Order;
import com.lijinfeng.eshop.service.CartService;
import com.lijinfeng.eshop.service.GoodService;
import com.lijinfeng.eshop.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/16.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private CartService cartService;

    @Autowired
    private GoodService goodService;

    @RequestMapping(value = "/cart", method = RequestMethod.GET)
    public String cart (ModelMap model, HttpSession session) {
        model.addAttribute("carts", cartService.myCarts(String.valueOf(session.getAttribute("userId"))));
        model.addAttribute("size",cartService.getSizeOfCart());
        return "user/cart";
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

    @RequestMapping(value = "/order", method = RequestMethod.GET)
    public String order (Model model) {
        return "user";
    }

    /**
     * 购物车结算功能
     * @param carts
     * @param session
     * @return
     */
    @RequestMapping(value = "/order/add", method = RequestMethod.POST)
    public @ResponseBody String pay(@RequestBody Carts[] carts, HttpSession session) {

        String userId = String.valueOf(session.getAttribute("userId"));
        List<Order> orders = new ArrayList<Order>();
        for (Carts cart : carts) {
            Order order = new Order();
            order.setGoodId(String.valueOf(cartService.getGoodIdByCartId(cart.getCartId())));
            order.setGoodName(cart.getGoodName());
            order.setType(cart.getType());
            order.setAmount(cart.getAmount());
            order.setPrice(cart.getPrice());
            order.setTotal(cart.getTotal());
            order.setUserId(userId);

            SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
            order.setTime(sdf.format(new Date()));

            orders.add(order);
        }

        try {
            userService.batchPay(orders);
            cartService.batchDelete(carts);
            return "{ \"SUCCESS\" : true }";
        } catch (Exception ex) {
            return "{ \"SUCCESS\" : false }";
        }


    }
}
