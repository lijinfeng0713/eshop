package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Order;

import java.util.List;

/**
 * Created by ljf-����˫�� on 2016/4/19.
 */
public interface OrderMapper {
    public void add (Order order);

    /**
     * ������Ӷ���
     * @param orders
     */
    public void batchAdd(List<Order> orders);
}
