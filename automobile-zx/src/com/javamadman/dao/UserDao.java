package com.javamadman.dao;

import com.javamadman.entitys.User;

import java.sql.SQLException;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:38
 * 定义用户相关数据访问方法
 * @author zx
 */
public interface UserDao extends BaseDao<User> {
    User findUserByPhone(String phone) throws SQLException;
}
