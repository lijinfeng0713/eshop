package com.lijinfeng.eshop.service.impl;

import com.lijinfeng.eshop.dao.CartMapper;
import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;
import com.lijinfeng.eshop.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/17.
 */
@Service("cartService")
public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;

    @Override
    public void addToCart(Cart cart) {
        cartMapper.addToCart(cart);
    }

    @Override
    public void deleteFromCart(Integer cartId) {
        cartMapper.deleteFromCart(cartId);
    }

    @Override
    public List<Cart> myCarts(String userId) {
        return cartMapper.myCart(userId);
    }

    @Override
    public Integer getGoodIdByCartId(Integer cartId) {
        return cartMapper.getGoodIdByCartId(cartId);
    }

    @Override
    public void batchDelete(Carts[] carts) {
        cartMapper.batchDelete(carts);
    }

    @Override
    public int getSizeOfCart() {
        return cartMapper.getSizeOfCart();
    }
}
