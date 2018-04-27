package com.javamadman.dao.impl;

import com.javamadman.dao.AreaDao;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.City;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.MapHandler;
import org.apache.commons.dbutils.handlers.MapListHandler;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:39
 * 处理区域相关数据访问方法
 * @author zx
 */
public class AreaDaoImpl implements AreaDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Area area) throws Exception {
        String sql = "insert into area (a_name) values(?)";
        return runner.update(sql, area.getaName());
    }

    @Override
    public int dele(Area area) throws Exception {
        String sql = "delete from area where id=?";
        return runner.update(sql, area.getId());
    }

    @Override
    public int upda(Area area) throws Exception {
        String sql = "update area set a_name=? where id=? ";
        return runner.update(sql, area.getaName(), area.getId());
    }

    @Override
    public List<Area> findAll() throws Exception{
        String sql = "select a.id aId,cityId,a_name aName,city_name cName from area a,city c where a.city_id=c.id";
        List<Map<String, Object>> maps = runner.query(sql, new MapListHandler());
        List<Area> list = new ArrayList<>();
        for(Map<String,Object> map : maps){
            Area area = new Area();
            City city = new City();
            BeanUtils.populate(area,map);
            BeanUtils.populate(city,map);
            area.setCity(city);
            list.add(area);
        }
        return list;
    }

    @Override
    public Area findObjById(Long id) throws Exception{
        String sql = "select a.id aId,c.id cityId,a_name aName,city_name cName from area a,city c where a.city_id=c.id and a.id=?";
        Map map = runner.query(sql, new MapHandler(), id);/*{id=1,name=系统}*/
        Area area = new Area();
        City city = new City();
        BeanUtils.populate(area, map);
        BeanUtils.populate(city, map);
        area.setCity(city);
        return area;
    }
    @Override
    public List<Area> findAllAreaById(Long id) throws Exception{
        String sql = "select a.id aId,c.id cityId,a_name aName,city_name cName from area a,city c where a.city_id=c.id and c.id=?";
        List<Map<String, Object>> maps = runner.query(sql, new MapListHandler(), id);/*{id=1,name=系统}*/
        List<Area> list = new ArrayList<>();
        for (Map<String,Object> map: maps) {
            Area area = new Area();
            City city = new City();
            BeanUtils.populate(area, map);
            BeanUtils.populate(city, map);
            area.setCity(city);
            list.add(area);
        }
        return list;
    }
}
