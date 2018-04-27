package com.javamadman.entitys;

import java.util.Date;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 18:05
 * 订单
 * @author zx
 */
public class Orders extends BaseEntity {

   private Integer oId;

    private Item item;//订单项id

    private Pay pay;//支付id

    private Record record;//车辆记录id

    private User user;//用户id

    private double price;//金额

    private Integer status;//订单状态00

    private Date time;//下订时间

    private Integer ordersId;   //生成订单号

    private String description;//汽车描述,车型

    private String get_time;//取车时间
    private String set_time;//还车时间
    private String u_id;//订单编号
    private String orders_id;  // 订单编号
    private String cs;  //汽车型号

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getGet_time() {
        return get_time;
    }

    public void setGet_time(String get_time) {
        this.get_time = get_time;
    }

    public String getSet_time() {
        return set_time;
    }

    public void setSet_time(String set_time) {
        this.set_time = set_time;
    }

    public String getU_id() {
        return u_id;
    }

    public void setU_id(String u_id) {
        this.u_id = u_id;
    }

    public String getOrders_id() {
        return orders_id;
    }

    public void setOrders_id(String orders_id) {
        this.orders_id = orders_id;
    }

    public Integer getOrdersId() {
        return ordersId;
    }

    public void setOrdersId(Integer ordersId) {
        this.ordersId = ordersId;
    }
    private String car;

    public String getCar() {
        return car;
    }

    public void setCar(String car) {
        this.car = car;
    }

    public Integer getoId() {
        return oId;
    }

    public void setoId(Integer oId) {
        this.oId = oId;
    }

    public Item getItem() {
        return item;
    }

    public void setItem(Item item) {
        this.item = item;
    }

    public Pay getPay() {
        return pay;
    }

    public void setPay(Pay pay) {
        this.pay = pay;
    }

    public Record getRecord() {
        return record;
    }

    public void setRecord(Record record) {
        this.record = record;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getTime() {
        return time;
    }

    public void setTime(Date time) {
        this.time = time;
    }

    public String getCs() { return cs; }

    public void setCs(String cs) { this.cs = cs; }
}
