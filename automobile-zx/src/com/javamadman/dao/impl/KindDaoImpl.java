package com.javamadman.dao.impl;

import com.javamadman.dao.KindDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.Kind;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.dbutils.QueryRunner;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:41
 * 处理汽车分类相关数据访问方法
 * @author zx
 */
public class KindDaoImpl implements KindDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Kind kind) throws Exception {
        return 0;
    }

    @Override
    public int dele(Kind kind) {
        return 0;
    }

    @Override
    public int upda(Kind kind) {
        return 0;
    }

    @Override
    public List<Kind> findAll() throws SQLException {
        return null;
    }

    @Override
    public Kind findObjById(Long id) {
        return null;
    }
}
