package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ljf-梁燕双栖 on 2016/4/20.
 */
public interface AddressMapper {
    /**
     * 根据用户id查找该用户的所有收货地址
     * @param userId
     */
    List<Address> findAddressByUserId (@Param(value = "userId") String userId);

    /**
     * 查找默认收货地址
     * @return
     */
    Address findDefaultAddress (@Param(value = "userId") String userId);
}
