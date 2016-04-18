package com.lijinfeng.eshop;

import com.lijinfeng.eshop.entity.Good;
import com.lijinfeng.eshop.service.GoodService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by ljf-ÁºÑàË«ÆÜ on 2016/4/16.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/mybatis/spring-mybatis.xml"})
public class TestGoodService {
    @Autowired
    private GoodService goodService;

    @Test
    public void testList() {
        List<Good> list = new ArrayList<Good>();
        list = goodService.listGoods();
        for (Good good : list) {
            System.out.println(good);
        }
    }

    @Test
    public void testFindGoodsByCondition() {
        List<Good> list = new ArrayList<Good>();
        list = goodService.findGoodsByCondition("Î÷ºþÅº·Û");
        System.out.println(list.size());
        for (Good good : list) {
            System.out.println(good.toString());
        }
    }

    @Test
    public void testFindGoodsByType() {
        List<Good> list = new ArrayList<Good>();
        list = goodService.findGoodsByType("¾«ÃÀÐ¡³Ô");
        for (Good good : list) {
            System.out.println(good.toString());
        }
    }

    @Test
    public void testUpdateGoodStock() {
        goodService.updateGoodStock(98,1);
    }
    @Test
    public void testFindGoodById () {
        System.out.println(goodService.findGoodById(1));
    }
}
