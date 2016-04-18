package com.lijinfeng.eshop;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.service.CartService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/17.
 */

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/mybatis/spring-mybatis.xml"})
public class TestCartService {

    @Autowired
    private CartService cartService;

    @Test
    public void testAdd() {
        Cart catr = new Cart(1,"92","2",12,150,"2016-04-17 09:45:12");
        cartService.addToCart(catr);
    }

    @Test
    public void testListCart() {
        System.out.println(cartService.myCarts("92"));
    }

    @Test
    public void testDeleteFromCart () {
        cartService.deleteFromCart(1);
    }

    @Test
    public void testGetGoodId () {
        System.out.println(cartService.getGoodIdByCartId(5));
    }
}
