package com.lijinfeng.eshop.service.impl;

import com.lijinfeng.eshop.dao.GoodMapper;
import com.lijinfeng.eshop.entity.Good;
import com.lijinfeng.eshop.service.GoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
@Service("goodService")
public class GoodServiceImpl implements GoodService {

    @Autowired
    private GoodMapper goodMapper;

    @Override
    public List<Good> listGoods() {
        return goodMapper.list();
    }

    @Override
    public List<Good> findGoodsByCondition(String condition) {
        return goodMapper.findGoodByCondition(condition);
    }

    @Override
    public List<Good> findGoodsByType(String type) {
        return goodMapper.findGoodsByType(type);
    }

    @Override
    public Good findGoodById(Integer googId) {
        return goodMapper.findGoodById(googId);
    }

    @Override
    public void updateGoodStock(Integer goodId, int amount) {
        goodMapper.updateGoodStock(goodId, amount);
    }
}
