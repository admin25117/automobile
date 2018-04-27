package com.javamadman.service.impl;

import com.javamadman.dao.UserDao;
import com.javamadman.dao.impl.UserDaoImpl;
import com.javamadman.entitys.User;
import com.javamadman.service.UserService;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:13
 * 处理用户相关业务逻辑方法
 * @author zx
 */
public class UserServiceImpl implements UserService {

    UserDao userDao = new UserDaoImpl();

    @Override
    public int save(User user) throws Exception {
        UserDao userDao = new UserDaoImpl();
        userDao.save(user);
        return 0;
    }

    @Override
    public int dele(User user) throws Exception {
        return 0;
    }

    @Override
    public int upda(User user) throws Exception {
        return 0;
    }

    @Override
    public List<User> findAll() throws Exception {
        return null;
    }

    @Override
    public User findObjById(Long id) throws Exception {
        return null;
    }

    @Override
    public User findUserByPhone(String phone) throws SQLException {
        UserDao userDao = new UserDaoImpl();
        User userByPhone = userDao.findUserByPhone(phone);
        return userByPhone;
    }

    //查询个人信息
    public List<User> userinfo(String uId)throws Exception{
        return new UserDaoImpl().userinfo(uId);
    }


    //修改个人信息
    public void changeinfo(String email,String phone, String name,String cardtype,String idcard,String uId)throws Exception{
       new UserDaoImpl().changeinfo(email,phone,name,cardtype,idcard,uId);
    }


    //查密码
    public User verifykey(String uId) throws Exception {
        return new UserDaoImpl().verifykey(uId);
    }
    //改密码
    public void changekey(String uId,String password) throws Exception {
         new UserDaoImpl().changekey(uId,password);
    }
}
