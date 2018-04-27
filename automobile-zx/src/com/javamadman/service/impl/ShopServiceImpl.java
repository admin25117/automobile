package com.javamadman.service.impl;

import com.javamadman.dao.ShopDao;
import com.javamadman.dao.impl.ShopDaoImpl;
import com.javamadman.entitys.Shop;
import com.javamadman.service.ShopService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:13
 * 处理门店相关业务逻辑方法
 * @author zx
 */
public class ShopServiceImpl implements ShopService {

    ShopDao shopDao = new ShopDaoImpl();

    @Override
    public int save(Shop shop) throws Exception {
        return 0;
    }

    @Override
    public int dele(Shop shop) throws Exception {
        return 0;
    }

    @Override
    public int upda(Shop shop) throws Exception {
        return 0;
    }

    @Override
    public List<Shop> findAll() throws Exception {
        return null;
    }

    @Override
    public Shop findObjById(Long id) throws Exception {
        return null;
    }
}
