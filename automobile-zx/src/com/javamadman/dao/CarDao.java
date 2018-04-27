package com.javamadman.dao;

import com.javamadman.entitys.Car;
import com.javamadman.entitys.Page;
import jdk.jfr.events.ExceptionThrownEvent;

import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:36
 * 定义汽车相关数据访问方法
 * @author zx
 */
public interface CarDao extends BaseDao<Car> {
    List<Car> selAllCar() throws Exception;
    List<Car> getCarListByCityId(Integer id) throws Exception;

    List<Car> getCars(Integer currentPage,Integer pageSize) throws Exception;

    Integer queryCount() throws Exception;

    List<Car> getCarListByCityIdAndBackdate(Integer cid, String backdate,Integer currentPage,Integer pageSize) throws Exception;

    List<Car> getCarListByArea(String area) throws Exception;

    Car getCarById(Integer id) throws Exception;

    Integer queryCount2(int i, String backdate) throws Exception;
}
