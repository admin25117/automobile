package com.javamadman.service.impl;

import com.javamadman.dao.KindDao;
import com.javamadman.dao.impl.KindDaoImpl;
import com.javamadman.entitys.Kind;
import com.javamadman.service.KindService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:10
 * 处理汽车分类相关业务逻辑方法
 * @author zx
 */
public class KindServiceImpl implements KindService {

    KindDao kindDao = new KindDaoImpl();

    @Override
    public int save(Kind kind) throws Exception {
        return 0;
    }

    @Override
    public int dele(Kind kind) throws Exception {
        return 0;
    }

    @Override
    public int upda(Kind kind) throws Exception {
        return 0;
    }

    @Override
    public List<Kind> findAll() throws Exception {
        return null;
    }

    @Override
    public Kind findObjById(Long id) throws Exception {
        return null;
    }
}
