package com.lijinfeng.eshop.entity;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/20.
 */
public class Address {

    private Integer addressId;
    private String userId;
    private String username;
    private String telephone;
    private String address;
    private String postcode;

    public Address() {
    }

    public Address(Integer addressId, String userId, String username, String telephone, String address, String postcode) {
        this.addressId = addressId;
        this.userId = userId;
        this.username = username;
        this.telephone = telephone;
        this.address = address;
        this.postcode = postcode;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTelephone() {
        return telephone;
    }

    public void setTelephone(String telephone) {
        this.telephone = telephone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPostcode() {
        return postcode;
    }

    public void setPostcode(String postcode) {
        this.postcode = postcode;
    }

    @Override
    public String toString() {
        return "Address{" +
                "addressId=" + addressId +
                ", userId='" + userId + '\'' +
                ", username='" + username + '\'' +
                ", telephone='" + telephone + '\'' +
                ", address='" + address + '\'' +
                ", postcode='" + postcode + '\'' +
                '}';
    }
}
