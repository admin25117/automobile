package com.javamadman.dao.impl;

import com.javamadman.dao.CarDao;
import com.javamadman.entitys.*;
import com.javamadman.utils.DataSourceUtils;
import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.*;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:40
 * 处理汽车相关数据访问方法
 * @author zx
 */
public class CarDaoImpl implements CarDao {

    QueryRunner runner = new QueryRunner(DataSourceUtils.getDataSource());

    @Override
    public int save(Car car) throws Exception {
        String sql = "insert into car (net_price,ret_price,pre_price) VALUES(?,?,?)";
        return runner.update(sql, car.getNetPrice(),car.getRetPrice(),car.getPrePrice());
    }

    @Override
    public int dele(Car car) throws Exception{
        String sql = "delete from car where id=?";
        return runner.update(sql, car.getId());
    }

    @Override
    public int upda(Car car) throws Exception{
        String sql = "update car set net_price=?,ret_price=?, pre_price=? where id=? ";
        return runner.update(sql,car.getNetPrice(),car.getRetPrice(),car.getPrePrice(),car.getId());
    }

    @Override
    public List<Car> findAll() throws Exception {
        String sql = "select c.id id,net_price netPrice,ret_price retPrice,pre_price prePrice,price,h_name hName,type" +
                " from car c,item i,holder h,kind k,orders o" +
                " where c.id=i.car_id and i.o_id=o.id and c.hol_id=h.id and c.k_id=k.id";
        List<Map<String, Object>> maps = runner.query(sql, new MapListHandler());
        List<Car> list = new ArrayList<>();
        for(Map<String,Object> map : maps){
            Car car = new Car();
            Item item = new Item();
            Holder holder = new Holder();
            Kind kind = new Kind();
            Orders orders = new Orders();
            BeanUtils.populate(car,map);
            BeanUtils.populate(item,map);
            BeanUtils.populate(holder,map);
            BeanUtils.populate(kind,map);
            BeanUtils.populate(orders,map);
            item.setOrders(orders);
            car.setItem(item);
            car.setHolder(holder);
            car.setKind(kind);

            list.add(car);
        }
        return list;
    }

    @Override
    public Car findObjById(Long id) throws Exception {
        String sql = "select c.id cId,net_price netPrice,ret_price retPrice,pre_price prePrice,price,h_name hName,type" +
                "from car c,item i,holder h,kind k,orders o where id=?";
        Map<String, Object> map = runner.query(sql, new MapHandler(),id);
        Car car = new Car();
        Item item = new Item();
        Holder holder = new Holder();
        Kind kind = new Kind();
        Orders orders = new Orders();
        BeanUtils.populate(car,map);
        BeanUtils.populate(item,map);
        BeanUtils.populate(holder,map);
        BeanUtils.populate(kind,map);
        BeanUtils.populate(orders,map);

        item.setOrders(orders);
        car.setItem(item);
        car.setHolder(holder);
        car.setKind(kind);
        return car;
    }

    @Override
    public List<Car> selAllCar() throws Exception {
        String sql = "select c.id cId,net_price netPrice,ret_price retPrice,pre_price prePrice,type,image,description,header,is_ticket isTicket,is_hot isHot,is_down isDown,is_fast isFast,is_price isPrice,is_return isReturn,fast_price fastPrice,online_price onlinePrice" +
                " from car c,kind k where  c.k_id=k.id";
        List<Map<String, Object>> maps = runner.query(sql, new MapListHandler());
        List<Car> list = new ArrayList<>();
        for (Map<String, Object> map : maps) {
            Car car = new Car();
            Kind kind = new Kind();
            BeanUtils.populate(car, map);
            BeanUtils.populate(kind, map);
            car.setKind(kind);
            list.add(car);
        }
        return list;
    }
    public List<Car> getCarListByCityId(Integer id) throws Exception{

        String sql = "select id cId,net_price netPrice,image,header,is_hot isHot from car where cityId=? and is_hot=? limit 4";
        return runner.query(sql,new BeanListHandler<>(Car.class),id,1);
    }

    @Override
    public List<Car> getCars(Integer currentPage,Integer pageSize) throws Exception {
        String sql = "select id cId,net_price netPrice,ret_price retPrice,pre_price prePrice,header,image from car limit ?,?";
        Integer tempPage = (currentPage-1)*pageSize;
        return runner.query(sql,new BeanListHandler<Car>(Car.class),tempPage,pageSize);
    }

    @Override
    public Integer queryCount() throws Exception {
        String sql = "select count(*) from car";
        Long count = runner.query(sql, new ScalarHandler<>());
        return count.intValue();
    }

    @Override
    public List<Car> getCarListByCityIdAndBackdate(Integer cid, String backdate,Integer currentPage,Integer pageSize) throws Exception{
        String sql = "select * from car where id in" +
                "( select car_id from record where get_id=(SELECT id FROM `shop` where area_id=?) and set_time < ?) limit ?,?";
        Integer tempPage = (currentPage-1)*pageSize;
        return runner.query(sql,new BeanListHandler<Car>(Car.class),cid,backdate,tempPage,pageSize);
    }

    @Override
    public List<Car> getCarListByArea(String area) throws Exception {
        String sql="select a.id aId,c.id cId,net_price netPrice,ret_price retPrice,pre_price prePrice,image,description,header,is_ticket isTicket,is_hot isHot,is_down isDown,is_fast isFast,is_price isPrice,is_return isReturn,fast_price fastPrice,online_price onlinePrice" +
                " from car c,area a,car_area ca where  c.ca_id=car_id and ca.area_id=a.ca_id and a.a_name=?";
        List<Car> cars = runner.query(sql, new BeanListHandler<>(Car.class), area);
        return cars;
    }

    /**
     * 查询全数据
     * @param id
     * @return Car
     * @throws Exception
     */
    @Override
    public Car getCarById(Integer id) throws Exception {
        String sql="select c.id cId,net_price netPrice,ret_price retPrice,pre_price prePrice,type,image,description,header,is_ticket isTicket,is_hot isHot,is_down isDown,is_fast isFast,is_price isPrice,is_return isReturn,fast_price fastPrice,online_price onlinePrice" +
                "   from car c,kind k where  c.k_id=k.id and c.id=?";
        Car car = runner.query(sql, new BeanHandler<>(Car.class),id);
        return car;
    }

    @Override
    public Integer queryCount2(int i, String backdate) throws Exception {
        String sql = "select count(*) from car where id in" +
                "( select car_id from record where get_id=(SELECT id FROM `shop` where area_id=?) and set_time < ?)";
        Long count = runner.query(sql, new ScalarHandler<>(),i,backdate);
        return count.intValue();

    }
}
