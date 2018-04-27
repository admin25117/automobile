package com.javamadman.service.impl;

import com.javamadman.dao.PayDao;
import com.javamadman.dao.impl.PayDaoImpl;
import com.javamadman.entitys.Pay;
import com.javamadman.service.PayService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:11
 * 处理支付相关业务逻辑方法
 * @author zx
 */
public class PayServiceImpl implements PayService {

    PayDao payDao = new PayDaoImpl();

    @Override
    public int save(Pay pay) throws Exception {
        return 0;
    }

    @Override
    public int dele(Pay pay) throws Exception {
        return 0;
    }

    @Override
    public int upda(Pay pay) throws Exception {
        return 0;
    }

    @Override
    public List<Pay> findAll() throws Exception {
        return null;
    }

    @Override
    public Pay findObjById(Long id) throws Exception {
        return null;
    }
}
