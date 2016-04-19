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

    /**
     * ����userId�����û���Ϣ
     */
    void updateUserById(int id);

    void batchDel(Map map);

    /**
     * �����û�����ѯ�û�
     * @param username
     * @return
     */
    User findByUsername(String username);

    /**
     * �û����й��ﳵ����
     * @param order
     */
    void pay(Order order);


    /**
     * �û���������֧��
     * @param orders
     */
    void batchPay (List orders);

    /**
     * ��ȡĳһ�û������ж���
     * @param userId
     * @return
     */
    List<Order> myOrders (String userId);
}

