package com.javamadman.service;

import com.javamadman.entitys.User;

import java.sql.SQLException;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:07
 * 定义用户相关业务逻辑方法
 * @author zx
 */
public interface UserService extends BaseService<User>{
    User findUserByPhone(String phone) throws SQLException;
}
