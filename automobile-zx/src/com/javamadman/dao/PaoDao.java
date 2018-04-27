package com.javamadman.dao;

public interface PaoDao {

    int add(String get_time, String set_time) throws Exception;
    int add_two(String price, int i_id,String status,String car,String uid)throws Exception;
}
