package com.lijinfeng.eshop.entity;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
public class Good {
    private Integer goodId;
    private String goodName;
    private String description;
    private String type;
    private double price;
    private Integer stock;
    private String url;

    public Good() {
    }

    public Good(Integer goodId, String goodName, String description, String type, double price, Integer stock, String url) {
        this.goodId = goodId;
        this.goodName = goodName;
        this.description = description;
        this.type = type;
        this.price = price;
        this.stock = stock;
        this.url = url;
    }

    public Integer getGoodId() {
        return goodId;
    }

    public void setGoodId(Integer goodId) {
        this.goodId = goodId;
    }

    public String getGoodName() {
        return goodName;
    }

    public void setGoodName(String goodName) {
        this.goodName = goodName;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
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

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    @Override
    public String toString() {
        return "Good{" +
                "goodId=" + goodId +
                ", goodName='" + goodName + '\'' +
                ", description='" + description + '\'' +
                ", type='" + type + '\'' +
                ", price=" + price +
                ", stock=" + stock +
                ", url='" + url + '\'' +
                '}';
    }
}
