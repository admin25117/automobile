package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 17:46
 * 订单项
 * @author zx
 */
public class Item extends BaseEntity {

   private Integer iId;

    private Car car;//汽车id

    private Orders orders;//订单id

    public Integer getiId() {
        return iId;
    }

    public void setiId(Integer iId) {
        this.iId = iId;
    }

    public Car getCar() {
        return car;
    }

    public void setCar(Car car) {
        this.car = car;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }
}
