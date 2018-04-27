package com.javamadman.service.impl;
import com.javamadman.dao.OrdersDao_two;
import com.javamadman.dao.impl.OrdersDaoImpl;
import com.javamadman.dao.impl.OrdersDaoImpl_two;
import com.javamadman.entitys.Orders;
import com.javamadman.entitys.Orders_two;
import com.javamadman.service.OrdersService_two;

import java.util.List;

public class OrdersServiceImpl_two implements OrdersService_two {

    @Override
    public List<Orders_two> all() {

        List<Orders_two> li=null;
        OrdersDao_two ND=new OrdersDaoImpl_two();
        try {
            li=ND.all();
        } catch (Exception e) {
            e.printStackTrace();
        }
        System.out.print(li);
        return li;
    }
    public List<Orders> all(String uid) throws Exception{
        return new OrdersDaoImpl().all(uid);
    }

}
