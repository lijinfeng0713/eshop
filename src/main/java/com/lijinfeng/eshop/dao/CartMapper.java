package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Cart;
import com.lijinfeng.eshop.entity.Carts;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ljf-����˫�� on 2016/4/17.
 */
public interface CartMapper {

    void addToCart(Cart cart);
    void deleteFromCart (Integer cartId);
    Integer getGoodIdByCartId (Integer cartId);

    /**
     * ����userId��ȡ���ﳵ�����ж���
     * @param userId
     * @return
     */
    List<Cart> myCart (@Param(value = "userId") String userId);

    /**
     * ����ɾ�����ﳵ�ж���
     * @param carts
     */
    void batchDelete (Carts[] carts);


}
