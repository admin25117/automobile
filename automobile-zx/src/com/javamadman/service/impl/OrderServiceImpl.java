package com.javamadman.service.impl;

import com.javamadman.dao.OrdersDao;
import com.javamadman.dao.impl.OrdersDaoImpl;
import com.javamadman.entitys.Orders;
import com.javamadman.service.OrderService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:10
 * 处理订单相关业务逻辑方法
 * @author zx
 */
public class OrderServiceImpl implements OrderService {

    OrdersDao ordersDao = new OrdersDaoImpl();

    @Override
    public int save(Orders orders) throws Exception {
        return 0;
    }

    @Override
    public int dele(Orders orders) throws Exception {
        return 0;
    }

    @Override
    public int upda(Orders orders) throws Exception {
        return 0;
    }

    @Override
    public List<Orders> findAll() throws Exception {
        return null;
    }

    @Override
    public Orders findObjById(Long id) throws Exception {
        return ordersDao.findObjById(id);
    }

    public List<Orders> ordertwo(String uid) throws Exception{

        return new OrdersDaoImpl().ordertwo(uid);
    }

    @Override
    public int updataById(Integer id) throws Exception {
         return ordersDao.updataById(id);
    }
}
