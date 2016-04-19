package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Order;
import org.apache.ibatis.annotations.Param;
import org.springframework.context.annotation.Configuration;

import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/19.
 */

public interface OrderMapper {
    public void add (Order order);

    /**
     * 批量添加订单
     * @param orders
     */
    void batchAdd(List<Order> orders);

    /**
     * 获取某一用户的所有订单
     * @param userId
     * @return
     */

    List<Order> getOrders (@Param(value = "userId") String userId);
}
