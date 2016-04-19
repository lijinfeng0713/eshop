package com.lijinfeng.eshop;

import com.lijinfeng.eshop.entity.Order;
import com.lijinfeng.eshop.entity.User;
import com.lijinfeng.eshop.service.UserService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by ljf-梁燕双栖 on 2016/4/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/mybatis/spring-mybatis.xml"})
public class TestUserService {

    @Autowired
    private UserService userService;

    @Test
    public void testAdd() {
        User u = new User();
        u.setUsername("xxx");
        u.setPassword("xxx");
        u.setEmail("xxx@com");
        userService.addUser(u);
    }

    @Test
    public void testDel(){
        userService.delUser(120);
    }

    @Test
    public void testBatchDelete() {
        userService.batchDelete(110, 111, 112);
    }

    @Test
    public void testBatchAdd() {
        List<User> list = new ArrayList<User>();
        User u1 = new User();
        u1.setUsername("AAA");
        u1.setPassword("AAA");
        u1.setEmail("AAA");
        list.add(u1);

        User u2 = new User();
        u2.setUsername("BBB");
        u2.setPassword("BBB");
        u2.setEmail("BBB");
        list.add(u2);

        userService.batchAdd(list);
    }

    @Test
    public void testBatchDel() {
        List<Integer> list = new ArrayList<Integer>();
        list.add(121);
        list.add(122);
        list.add(123);
        list.add(124);
        Map<String, Object> param = new HashMap<String, Object>();
        param.put("ids", list);
        userService.batchDel(param);
    }

    @Test
    public void testFindUserByUsername () {
        System.out.println(userService.findByUsername("admin"));
    }

    @Test
    public void testPay() {
        Order order = new Order(1, "92", "2","热干面", "精美小吃", 4.0, 1, 4.0, "2016-04-19 12:09:11","");
        userService.pay(order);
    }

    @Test
    public void testBatchPay () {
        List<Order> orders = new ArrayList<Order>();
        Order order1 = new Order(1, "92", "2","热干面", "精美小吃", 4.0, 1, 4.0, "2016-04-19 12:09:11","");
        Order order2 = new Order(2, "92", "2","热干面", "精美小吃", 4.0, 1, 4.0, "2016-04-19 12:09:11","");

        orders.add(order1);
        orders.add(order2);

        userService.batchPay(orders);

    }

    @Test
    public void testMyOrders () {
        System.out.println(userService.myOrders("92"));
    }
}

