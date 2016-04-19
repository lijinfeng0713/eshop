package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Order;
import com.lijinfeng.eshop.entity.User;

import java.util.List;
import java.util.Map;

/**
 * Created by ljf-����˫�� on 2016/4/15.
 */
public interface UserService {

    void addUser(User user);
    void delUser(int id);
    void batchDelete(int ...ids);
    User findUserById(int id);
    List<User> findAll();
    void batchAdd(List<User> list);
    void updateUserById(int id);
    void batchDel(Map map);
    public User findByUsername(String username);

    /**
     * �û����й��ﳵ����
     * @param order
     */
    public void pay(Order order);


    /**
     * �û���������֧��
     * @param orders
     */
    public void batchPay (List orders);
}

