package com.javamadman.service;

import com.javamadman.entitys.Orders;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:06
 * 定义订单相关业务逻辑方法
 * @author zx
 */
public interface OrderService extends BaseService<Orders>{
    int updataById(Integer id) throws Exception;
}
