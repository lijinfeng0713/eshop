package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Order;
import com.lijinfeng.eshop.entity.User;

import java.util.List;
import java.util.Map;

/**
 * Created by ljf-梁燕双栖 on 2016/4/15.
 */
public interface UserService {

    void addUser(User user);
    void delUser(int id);
    void batchDelete(int ...ids);
    User findUserById(int id);
    List<User> findAll();
    void batchAdd(List<User> list);

    /**
     * 根据userId更改用户信息
     */
    void updateUserById(int id);

    void batchDel(Map map);

    /**
     * 根据用户名查询用户
     * @param username
     * @return
     */
    User findByUsername(String username);

    /**
     * 用户进行购物车结算
     * @param order
     */
    void pay(Order order);


    /**
     * 用户进行批量支付
     * @param orders
     */
    void batchPay (List orders);

    /**
     * 获取某一用户的所有订单
     * @param userId
     * @return
     */
    List<Order> myOrders (String userId);
}

