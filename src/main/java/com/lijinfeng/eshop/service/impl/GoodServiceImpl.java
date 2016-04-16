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
}
