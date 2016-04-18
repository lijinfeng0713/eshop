package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Cart;

import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/17.
 */
public interface CartService {
    public void addToCart(Cart cart);

    /**
     * 根据购物车中删除cartId的记录
     * @param cartId
     */
    public void deleteFromCart (Integer cartId);

    /**
     * 获取某一个用户的购物车清单
     * @param userId
     * @return : 所有的清单
     */
    public List<Cart> myCarts (String userId);

    /**
     * 根据cartId获取goodId
     * @param cartId
     * @return
     */
    public Integer getGoodIdByCartId (Integer cartId);
}
