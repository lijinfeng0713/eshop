package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/17.
 */
public interface CartMapper {

    void addToCart(Cart cart);
    void deleteFromCart (Integer cartId);
    Integer getGoodIdByCartId (Integer cartId);

    /**
     * 根据userId获取购物车中所有订单
     * @param userId
     * @return
     */
    List<Cart> myCart (@Param(value = "userId") String userId);

    /**
     * 批量删除购物车中订单
     * @param carts
     */
    void batchDelete (Carts[] carts);


}
