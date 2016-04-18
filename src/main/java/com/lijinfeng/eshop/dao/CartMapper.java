package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Cart;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/17.
 */
public interface CartMapper {
    public void addToCart(Cart cart);
    public void deleteFromCart (Integer cartId);
    public Integer getGoodIdByCartId (Integer cartId);
    public List<Cart> myCart(@Param(value = "userId") String userId);
}
