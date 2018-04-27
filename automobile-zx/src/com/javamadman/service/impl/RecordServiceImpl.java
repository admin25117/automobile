package com.javamadman.service.impl;

import com.javamadman.dao.RecordDao;
import com.javamadman.dao.impl.RecordDaoImpl;
import com.javamadman.entitys.Record;
import com.javamadman.service.RecordService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:13
 * 处理汽车记录相关业务逻辑方法
 * @author zx
 */
public class RecordServiceImpl implements RecordService {

    RecordDao recordDao = new RecordDaoImpl();

    @Override
    public int save(Record record) throws Exception {
        return 0;
    }

    @Override
    public int dele(Record record) throws Exception {
        return 0;
    }

    @Override
    public int upda(Record record) throws Exception {
        return 0;
    }

    @Override
    public List<Record> findAll() throws Exception {
        return null;
    }

    @Override
    public Record findObjById(Long id) throws Exception {
        return null;
    }
}
