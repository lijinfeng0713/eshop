package com.lijinfeng.eshop.entity;

import org.apache.ibatis.type.Alias;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/17.
 */
public class Cart {
    public Integer cartId;
    public String userId;
    public String goodId;
    public int amount;
    public double total;
    public String time;

    public Cart() {
    }

    public Cart(Integer cartId, String userId, String goodId, int amount, double total, String time) {
        this.cartId = cartId;
        this.userId = userId;
        this.goodId = goodId;
        this.amount = amount;
        this.total = total;
        this.time = time;
    }

    public Integer getCartId() {
        return cartId;
    }

    public void setCartId(Integer cartId) {
        this.cartId = cartId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getGoodId() {
        return goodId;
    }

    public void setGoodId(String goodId) {
        this.goodId = goodId;
    }

    public int getAmount() {
        return amount;
    }

    public void setAmount(int amount) {
        this.amount = amount;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    @Override
    public String toString() {
        return "Cart{" +
                "cartId=" + cartId +
                ", userId='" + userId + '\'' +
                ", goodId='" + goodId + '\'' +
                ", amount=" + amount +
                ", total=" + total +
                ", time='" + time + '\'' +
                '}';
    }
}
