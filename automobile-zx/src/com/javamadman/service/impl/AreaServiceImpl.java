package com.javamadman.service.impl;

import com.javamadman.dao.AreaDao;
import com.javamadman.dao.impl.AreaDaoImpl;
import com.javamadman.entitys.Area;
import com.javamadman.service.AreaService;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:07
 * 处理区域相关业务逻辑方法
 * @author zx
 */
public class AreaServiceImpl implements AreaService {

    AreaDao areaDao = new AreaDaoImpl();


    @Override
    public int save(Area area) throws Exception {
        return 0;
    }

    @Override
    public int dele(Area area) throws Exception {
        return 0;
    }

    @Override
    public int upda(Area area) throws Exception {
        return 0;
    }

    @Override
    public List<Area> findAll() throws Exception {
        List<Area> all = areaDao.findAll();
        return all;
    }

    @Override
    public Area findObjById(Long id) throws Exception {
       return   areaDao.findObjById(id);
    }


    @Override
    public List<Area> findAllAreaById(Long id) throws Exception {
        return areaDao.findAllAreaById(id);
    }
}
