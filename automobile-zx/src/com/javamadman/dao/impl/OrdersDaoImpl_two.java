package com.javamadman.dao.impl;

import com.javamadman.dao.OrdersDao_two;
import com.javamadman.entitys.Orders_two;
import com.javamadman.resultHandle.IResultHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class OrdersDaoImpl_two extends BaseDao implements OrdersDao_two {
    public List<Orders_two> all() throws Exception {
        String sql="select orders.cs,orders.orders_id,orders.status,record.get_time,record.set_time FROM orders,record GROUP BY orders_id";
        return query(sql,new HandleListNews());
    }
    class HandleListNews implements IResultHandler<List<Orders_two>> {
        public List<Orders_two> handleResult(ResultSet rs) throws SQLException {
            List<Orders_two> list = new ArrayList<>();
            Orders_two news = null;
            while (rs.next()) {
                news = new Orders_two();
                news.setGet_time(rs.getString(1));
                news.setOrders_id(rs.getString(2));
                news.setStatus(rs.getInt(3));
                news.setU_id(rs.getString(4));
                news.setSet_time(rs.getString(5));
                list.add(news);
            }
            System.out.println(list);
            return list;
        }
    }



}
