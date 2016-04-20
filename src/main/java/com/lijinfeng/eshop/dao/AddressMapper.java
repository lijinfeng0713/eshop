package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Address;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by ljf-����˫�� on 2016/4/20.
 */
public interface AddressMapper {
    /**
     * �����û�id���Ҹ��û��������ջ���ַ
     * @param userId
     */
    List<Address> findAddressByUserId (@Param(value = "userId") String userId);

    /**
     * ����Ĭ���ջ���ַ
     * @return
     */
    Address findDefaultAddress (@Param(value = "userId") String userId);
}
