package com.javamadman.dao.impl;

import com.javamadman.dao.PaoDao;

public class PaoDaoImpl extends BaseDao implements PaoDao {
    @Override
    public int add(String get_time,String set_time )throws Exception{
        String sql="insert into record(get_time,set_time) VALUES (?,?)";
        return allChange(sql,get_time,set_time);
    }

    @Override
    public int add_two(String price,int i_id,String status,String car,String uid)throws Exception {
        String sql="insert into orders(price,orders_id,`status`,`cs`,`u_id`) VALUES (?,?,?,?,?)";
        return allChange(sql,price,i_id,status,car,uid);
    }

}
