package com.javamadman.dao.test;

import com.javamadman.dao.UserDao;
import com.javamadman.dao.impl.UserDaoImpl;
import com.javamadman.entitys.User;
import org.junit.Test;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/15
 * Time: 16:11
 *
 * @author zx
 */
public class UserDaoImplTest {
    @Test
    public void save() throws Exception {
        User user = new User();
        user.setuPassword("xxxxx");
        user.setVerifyCode(666);
        user.setCheckCode(888);
        user.setPhone("13452992159");
        UserDao userDao = new UserDaoImpl();
        int i = userDao.save(user);
        System.out.println(i);
    }

    @Test
    public void dele() throws Exception {
    }

    @Test
    public void upda() throws Exception {
    }

    @Test
    public void findAll() throws Exception {
    }

    @Test
    public void findObjById() throws Exception {
    }

    @Test
    public void findUserByPhone() throws Exception {

    }

}
