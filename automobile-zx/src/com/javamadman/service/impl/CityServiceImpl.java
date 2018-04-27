package com.javamadman.service.impl;

import com.alibaba.druid.support.json.JSONUtils;
import com.javamadman.dao.CityDao;
import com.javamadman.dao.impl.CityDaoImpl;
import com.javamadman.entitys.City;
import com.javamadman.service.CityService;

import java.sql.SQLException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:09
 * 处理城市相关业务逻辑方法
 * @author zx
 */
public class CityServiceImpl implements CityService {

    CityDao cityDao = new CityDaoImpl();

    @Override
    public int save(City city) throws Exception {
        return 0;
    }

    @Override
    public int dele(City city) throws Exception {
        return 0;
    }

    @Override
    public int upda(City city) throws Exception {
        return 0;
    }

    @Override
    public List<City> findAll() throws Exception {
        CityDao cityDao = new CityDaoImpl();
        List<City> cityList = cityDao.findAll();
        if(cityList != null && cityList.size() > 0){
            return cityList;
        }
        return null;
    }

    @Override
    public City findObjById(Long id) throws Exception {
        return null;
    }

    public City  findCityIdBycname(String name) throws SQLException {
        CityDaoImpl cityDao1 = new CityDaoImpl();
        City city = cityDao1.findCityIdByname(name);
        return city;
    }
}
