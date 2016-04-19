package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;

import java.util.List;

/**
 * Created by ljf-����˫�� on 2016/4/17.
 */
public interface CartService {
    void addToCart(Cart cart);

    /**
     * ���ݹ��ﳵ��ɾ��cartId�ļ�¼
     * @param cartId
     */
    void deleteFromCart (Integer cartId);

    /**
     * ��ȡĳһ���û��Ĺ��ﳵ�嵥
     * @param userId
     * @return : ���е��嵥
     */
    List<Cart> myCarts (String userId);

    /**
     * ����cartId��ȡgoodId
     * @param cartId
     * @return
     */
    Integer getGoodIdByCartId (Integer cartId);

    /**
     * ����ɾ�����ﳵ�еĶ���
     * @param carts
     */
    void batchDelete (Carts[] carts);


}
