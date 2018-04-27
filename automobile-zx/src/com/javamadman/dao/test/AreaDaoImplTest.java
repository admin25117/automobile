package com.javamadman.dao.test;

import com.javamadman.dao.AreaDao;
import com.javamadman.dao.impl.AreaDaoImpl;
import com.javamadman.entitys.Area;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 16:53
 * 测试区域功能集
 * @author zx
 */
public class AreaDaoImplTest {
    @org.junit.Test
    public void save() throws Exception {
        AreaDao areaDao = new AreaDaoImpl();
        Area area = new Area();
       /* City city = new City();
        city.setId(5l);
        area.setaName("大大");
        area.setId(2l);
        area.setCity(city);*/
       area.setaName("基材");
        int i = areaDao.save(area);
        System.out.println(i);


    }

    @org.junit.Test
    public void dele() throws Exception {
        AreaDao areaDao = new AreaDaoImpl();
        Area area = new Area();
        area.setId(1l);
        int i = areaDao.dele(area);
        System.out.println(i);
    }

    @org.junit.Test
    public void upda() throws Exception {
        AreaDao areaDao = new AreaDaoImpl();
        Area area = new Area();
        area.setaName("服不服");
        area.setId(3l);
        int i = areaDao.upda(area);
        System.out.println(i);
    }

    @org.junit.Test
    public void findAll() throws Exception {
        AreaDao areaDao = new AreaDaoImpl();
        List<Area> list = areaDao.findAll();
        for(Area area : list){
            System.out.println(area.getId()+"=="+area.getaName()+"=="+area.getCity().getId());
        }

    }

    @org.junit.Test
    public void findObjById() throws Exception {
        AreaDao areaDao = new AreaDaoImpl();
        Area area = new Area();
        area.setId(3l);
        Area returnArea = areaDao.findObjById(area.getId());
        System.out.println(returnArea.getId()+"=="+returnArea.getaName()+"=="+returnArea.getCity().getId());
    }

}
