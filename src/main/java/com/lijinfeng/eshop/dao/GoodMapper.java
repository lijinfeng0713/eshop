package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Good;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Description:»õÎïMapper
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
public interface GoodMapper {
    public List<Good> list();
    public Good get();
    public Good findGoodById(Integer goodId);
    public List<Good> findGoodByCondition (@Param(value = "condition") String condition);
    public List<Good> findGoodsByType (@Param(value = "type") String type);
    public void updateGoodStock(@Param(value = "goodId")Integer goodId, @Param(value = "amount")int amount);
}
