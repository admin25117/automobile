package com.javamadman.dao.impl;

import com.javamadman.dao.HolderDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.Holder;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:40
 * 处理租赁人相关数据访问方法
 * @author zx
 */
public class HolderDaoImpl implements HolderDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Holder holder) throws Exception {
        return 0;
    }

    @Override
    public int dele(Holder holder) {
        return 0;
    }

    @Override
    public int upda(Holder holder) {
        return 0;
    }

    @Override
    public List<Holder> findAll() throws SQLException {
        return null;
    }

    @Override
    public Holder findObjById(Long id) {
        return null;
    }
}
