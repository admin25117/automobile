package com.javamadman.service.impl;

import com.javamadman.dao.ItemDao;
import com.javamadman.dao.impl.ItemDaoImpl;
import com.javamadman.entitys.Item;
import com.javamadman.service.ItemService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:10
 * 处理订单项相关业务逻辑方法
 * @author zx
 */
public class ItemServiceImpl implements ItemService {

    ItemDao itemDao = new ItemDaoImpl();

    @Override
    public int save(Item item) throws Exception {
        return 0;
    }

    @Override
    public int dele(Item item) throws Exception {
        return 0;
    }

    @Override
    public int upda(Item item) throws Exception {
        return 0;
    }

    @Override
    public List<Item> findAll() throws Exception {
        return null;
    }

    @Override
    public Item findObjById(Long id) throws Exception {
        return null;
    }
}
