package com.javamadman.dao.impl;

import com.javamadman.dao.UserDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.User;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.BeanMapHandler;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:43
 * 处理用户相关数据访问方法
 * @author zx
 */
public class UserDaoImpl implements UserDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(User user) throws Exception {
        String sql = "insert into user (u_password,phone,check_Code) values(?,?,?)";
        Object[] param ={user.getuPassword(),user.getPhone(),user.getCheckCode()};
        return runner.update(sql, param);
    }

    @Override
    public int dele(User user) throws SQLException {
        String sql = "delete from user where id=?";
        return runner.update(sql, user.getId());
    }

    @Override
    public int upda(User user) throws SQLException {
        String sql = "update user set u_name=?,u_password=?,phone=? where id=? ";
        Object[] param ={user.getuName(),user.getuPassword(),user.getPhone(),user.getId()};
        return runner.update(sql,param);
    }

    @Override
    public List<User> findAll() throws SQLException {
        return null;
    }

    @Override
    public User findObjById(Long id) {
        return null;
    }

    @Override

/*
    public User findUserByPhone(String phone) throws SQLException {
        String sql = "select id uId,u_name uName,u_password uPassword,phone from user where phone=?";
*/

   /* public User findUserByPhone(String phone) throws SQLException {
        String sql = "select id from user where phone=?";
>>>>>>> fb6cb8159e8678d70a5724fe0350771145f9a828
        return runner.query(sql,new BeanHandler<User>(User.class),phone);
    }*/
    public User findUserByPhone(String phone) throws SQLException {
        String sql = "select id uId,u_name uName,u_password uPassword from user where phone=?";
        return runner.query(sql,new BeanHandler<User>(User.class),phone);
    }

    //查询个人信息
    public List<User> userinfo(String uId) throws Exception{
        String sql = "select u_name uName,u_password uPassword,phone,email,idcard,cardtype from user where id=?";

            return runner.query(sql,new BeanListHandler<User>(User.class),uId);



    }

//修改个人信息
    public void changeinfo(String email,String phone, String name,String cardtype,String idcard,String uId) throws Exception{
        String sql = "UPDATE `user` set email=?,phone=?," +
                "u_name=?,cardtype=?,idcard=? " +
                "where id=?";

           runner.update(sql,email,phone,name,cardtype,idcard,uId);

    }


    //查密码
public User verifykey(String uId) throws Exception{
    String sql = "select u_password uPassword from user where id=?";

  return runner.query(sql,new BeanHandler<User>(User.class),uId);
}

//改密码
    public void changekey(String uId,String password) throws Exception {
        String sql = "UPDATE `user` set u_password=? where id=?";

        runner.update(sql,password,uId);
    }
}
