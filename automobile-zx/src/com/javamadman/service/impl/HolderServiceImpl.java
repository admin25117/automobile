package com.javamadman.service.impl;

import com.javamadman.dao.HolderDao;
import com.javamadman.dao.impl.HolderDaoImpl;
import com.javamadman.entitys.Holder;
import com.javamadman.service.HolderService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:09
 * 处理租赁人相关业务逻辑方法
 * @author zx
 */
public class HolderServiceImpl implements HolderService {

    HolderDao holderDao = new HolderDaoImpl();

    @Override
    public int save(Holder holder) throws Exception {
        return 0;
    }

    @Override
    public int dele(Holder holder) throws Exception {
        return 0;
    }

    @Override
    public int upda(Holder holder) throws Exception {
        return 0;
    }

    @Override
    public List<Holder> findAll() throws Exception {
        return null;
    }

    @Override
    public Holder findObjById(Long id) throws Exception {
        return null;
    }
}
