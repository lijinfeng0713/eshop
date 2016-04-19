package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Order;

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
    public void batchAdd(List<Order> orders);
}
