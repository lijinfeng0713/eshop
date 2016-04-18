package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Cart;

import java.util.List;

/**
 * Created by ljf-����˫�� on 2016/4/17.
 */
public interface CartService {
    public void addToCart(Cart cart);

    /**
     * ���ݹ��ﳵ��ɾ��cartId�ļ�¼
     * @param cartId
     */
    public void deleteFromCart (Integer cartId);

    /**
     * ��ȡĳһ���û��Ĺ��ﳵ�嵥
     * @param userId
     * @return : ���е��嵥
     */
    public List<Cart> myCarts (String userId);

    /**
     * ����cartId��ȡgoodId
     * @param cartId
     * @return
     */
    public Integer getGoodIdByCartId (Integer cartId);
}
