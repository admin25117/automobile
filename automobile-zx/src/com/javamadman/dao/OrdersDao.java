package com.javamadman.dao;

import com.javamadman.entitys.Orders;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:38
 * 定义订单相关数据访问方法
 * @author zx
 */
public interface OrdersDao extends BaseDao<Orders> {
    int updataById(Integer id) throws Exception;
}
