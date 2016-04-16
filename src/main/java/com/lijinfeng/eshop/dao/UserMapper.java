package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.User;

import java.util.List;
import java.util.Map;

/**
 * Created by ljf-梁燕双栖 on 2016/4/15.
 */
public interface UserMapper {

    void addUser(User user);
    void delUser(int id);
    User findUserById(int id);
    List<User> findAll();
    void batchAdd(List<User> list);
    void updateUserById(int id);
    void batchDel(Map map);

}
