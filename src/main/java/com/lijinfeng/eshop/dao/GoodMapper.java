package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Good;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Description:»õÎïMapper
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
public interface GoodMapper {
    List<Good> list();
    Good get();
    Good findGoodById(Integer goodId);
    List<Good> findGoodByCondition (@Param(value = "condition") String condition);
    List<Good> findGoodsByType (@Param(value = "type") String type);
    void updateGoodStock(@Param(value = "goodId")Integer goodId, @Param(value = "amount")int amount);
}
