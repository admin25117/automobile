package com.javamadman.dao.impl;

import com.javamadman.dao.RecordDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.Record;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:42
 * 处理汽车记录相关数据访问方法
 * @author zx
 */
public class RecordDaoImpl implements RecordDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Record record) throws Exception {
        return 0;
    }

    @Override
    public int dele(Record record) {
        return 0;
    }

    @Override
    public int upda(Record record) {
        return 0;
    }

    @Override
    public List<Record> findAll() throws SQLException {
        return null;
    }

    @Override
    public Record findObjById(Long id) {
        return null;
    }
}
