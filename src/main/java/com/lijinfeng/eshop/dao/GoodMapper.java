package com.lijinfeng.eshop.dao;

import com.lijinfeng.eshop.entity.Good;
import java.util.List;

/**
 * Description:»õÎïMapper
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
public interface GoodMapper {
    public List<Good> list();
    public Good get();
    public Good findGoodById(Integer goodId);
    public List<Good> findGoodByCondition (String condition);
}
