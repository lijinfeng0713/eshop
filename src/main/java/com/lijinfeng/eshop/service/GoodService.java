package com.lijinfeng.eshop.service;

import com.lijinfeng.eshop.entity.Good;
import java.util.List;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
public interface GoodService {
    public List<Good> listGoods();
    public List<Good> findGoodsByCondition (String condition);
    public List<Good> findGoodsByType (String type);
    public Good findGoodById (Integer googId);
    public void updateGoodStock(Integer goodId, int amount);
}
