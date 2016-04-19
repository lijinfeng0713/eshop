package com.lijinfeng.eshop.entity;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/19.
 */
public class Order {
    private Integer orderId;
    private String userId;
    private String goodId;
    private String goodName;
    private String type;
    private double price;
    private  int amount;
    private double total;
    private String time;

    public Order() {
    }

    public Order(Integer orderId, String userId, String goodId, String goodName, String type, double price, int amount, double total, String time) {
        this.orderId = orderId;
        this.userId = userId;
        this.goodId = goodId;
        this.goodName = goodName;
        this.type = type;
        this.price = price;
        this.amount = amount;
        this.total = total;
        this.time = time;
    }

    public Integer getOrderId() {
        return orderId;
    }

    public void setOrderId(Integer orderId) {
        this.orderId = orderId;
    }

    public String getGoodId() {
        return goodId;
    }

    public void setGoodId(String goodId) {
        this.goodId = goodId;
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

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    @Override
    public String toString() {
        return "Order{" +
                "orderId=" + orderId +
                ", userId='" + userId + '\'' +
                ", goodId='" + goodId + '\'' +
                ", goodName='" + goodName + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", amount=" + amount +
                ", total=" + total +
                ", time='" + time + '\'' +
                '}';
    }
}
