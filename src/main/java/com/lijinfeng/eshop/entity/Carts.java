package com.lijinfeng.eshop.entity;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/18.
 */
public class Carts {
    private Integer cartId;
    private String goodName;
    private String type;
    private double price;
    private int amount;
    private double total;
    private String time;

    public Carts() {
    }

    public Carts(Integer cartId, String goodName, String type, double price, int amount, double total, String time) {
        this.cartId = cartId;
        this.goodName = goodName;
        this.type = type;
        this.price = price;
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

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
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
        return "Carts{" +
                "cartId=" + cartId +
                ", goodName='" + goodName + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", amount=" + amount +
                ", total=" + total +
                ", time='" + time + '\'' +
                '}';
    }
}
