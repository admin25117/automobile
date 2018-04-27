package com.javamadman.dao.impl;

import com.javamadman.dao.OrdersDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.Orders;
import com.javamadman.entitys.Orders_two;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:41
 * 处理订单相关数据访问方法
 * @author zx
 */
public class OrdersDaoImpl implements OrdersDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Orders orders) throws Exception {
        return 0;
    }

    @Override
    public int dele(Orders orders) {
        return 0;
    }

    @Override
    public int upda(Orders orders) {
        return 0;
    }

    @Override
    public List<Orders> findAll() throws SQLException {
        return null;
    }

    /**
     * 查询指定ID的支付状态
     * @param id
     * @return 订单支付状态
     * @throws SQLException
     */
    @Override
    public Orders findObjById(Long id) throws SQLException {
        String sql="select `status` from orders where orders_id=?";
        Orders orders = runner.query(sql, new BeanHandler<>(Orders.class),id);
        return orders;
    }

    public List<Orders> ordertwo(String uid) throws Exception {
        String sql = "select orders_id oId,cs car from orders where u_id=? limit 2";

        return runner.query(sql,new BeanListHandler<Orders>(Orders.class),uid);
    }

    @Override
    public int updataById(Integer id) throws Exception {
        String sql="UPDATE orders  set `status`=1 where orders_id=?";
        int row = runner.update(sql, id);
        return row;
    }
    public List<Orders> all(String uid) throws Exception{
        String sql="select orders.cs,orders.orders_id,orders.status,record.get_time,record.set_time FROM orders,record where orders.u_id=? GROUP BY orders_id ;";


        return runner.query(sql,new BeanListHandler<Orders>(Orders.class),uid);

    }
}
