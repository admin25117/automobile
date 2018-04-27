package com.javamadman.service;

import com.javamadman.entitys.Car;
import com.javamadman.entitys.Page;

import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:04
 * 定义汽车相关业务逻辑方法
 * @author zx
 */
public interface CarService extends BaseService<Car>{
    List<Car> selAllCar() throws Exception;
    List<Car> getCarListByCityId(Integer id) throws Exception;

    Page getCars(String cid, String backdate,Integer currentPage,Integer pageSize) throws Exception;

    List<Car> getCarListByArea(String area) throws Exception;

    Car getCarById(Integer id) throws Exception;
}
