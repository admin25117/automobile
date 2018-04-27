package com.javamadman.service.impl;

import com.javamadman.dao.CarDao;
import com.javamadman.dao.impl.CarDaoImpl;
import com.javamadman.entitys.Car;
import com.javamadman.entitys.Page;
import com.javamadman.service.CarService;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:08
 * 处理汽车相关业务逻辑方法
 *
 * @author zx
 */
public class CarServiceImpl implements CarService {

    CarDao carDao = new CarDaoImpl();

    @Override
    public int save(Car car) throws Exception {
        return 0;
    }

    @Override
    public int dele(Car car) throws Exception {
        return 0;
    }

    @Override
    public int upda(Car car) throws Exception {
        return 0;
    }

    @Override
    public List<Car> findAll() throws Exception {
        CarDao carDao = new CarDaoImpl();
        return carDao.findAll();
    }

    @Override
    public Car findObjById(Long id) throws Exception {
        return carDao.findObjById(id);
    }

    @Override
    public List<Car> selAllCar() throws Exception {
        List<Car> cars = carDao.selAllCar();
        return cars;
    }

    public List<Car> getCarListByCityId(Integer id) throws Exception {
        CarDao carDao = new CarDaoImpl();
        return carDao.getCarListByCityId(id);
    }

    @Override
    public Page getCars(String cid, String backdate, Integer currentPage, Integer pageSize) throws Exception {
        Page page = new Page<Car>();
        CarDao carDao = new CarDaoImpl();
        //查询出当前页显示的数据内容
        List<Car> cars = null;
        Integer totalCount = null;
        if (cid == null || backdate == null) {
            cars = carDao.getCars(currentPage, pageSize);
            totalCount = carDao.queryCount();
        } else {
            int i = Integer.parseInt(cid);
            cars = carDao.getCarListByCityIdAndBackdate(i, backdate, currentPage, pageSize);
            totalCount = carDao.queryCount2(i,backdate);
        }
        //封装page参数
        page.setCurrentPage(currentPage);
        page.setData(cars);
        page.setPageSize(pageSize);
        page.setTotalCount(totalCount);

        return page;
    }

    @Override
    public List<Car> getCarListByArea(String area) throws Exception {
        return carDao.getCarListByArea(area);
    }

    @Override
    public Car getCarById(Integer id) throws Exception {
          return  carDao.getCarById(id);
    }


}
