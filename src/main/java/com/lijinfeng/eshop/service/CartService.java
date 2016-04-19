package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;

import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/17.
 */
public interface CartService {
    void addToCart(Cart cart);

    /**
     * 根据购物车中删除cartId的记录
     * @param cartId
     */
    void deleteFromCart (Integer cartId);

    /**
     * 获取某一个用户的购物车清单
     * @param userId
     * @return : 所有的清单
     */
    List<Cart> myCarts (String userId);

    /**
     * 根据cartId获取goodId
     * @param cartId
     * @return
     */
    Integer getGoodIdByCartId (Integer cartId);

    /**
     * 批量删除购物车中的订单
     * @param carts
     */
    void batchDelete (Carts[] carts);


}
