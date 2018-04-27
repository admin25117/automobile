package com.javamadman.entitys;

public class Orders_two {
    private String description;//汽车描述,车型
    private int status;//订单状态
    private String get_time;//取车时间
    private String set_time;//还车时间
    private String u_id;//订单编号
    private String orders_id;
    private String cs;

    public String getDescription() { return description; }

    public void setDescription(String description) { this.description = description; }

    public int getStatus() { return status; }

    public void setStatus(int status) { this.status = status; }

    public String getGet_time() { return get_time; }

    public void setGet_time(String get_time) { this.get_time = get_time; }

    public String getSet_time() { return set_time; }

    public void setSet_time(String set_time) { this.set_time = set_time; }

    public String getU_id() { return u_id; }

    public void setU_id(String u_id) { this.u_id = u_id; }

    public String getOrders_id() { return orders_id; }

    public void setOrders_id(String orders_id) { this.orders_id = orders_id; }

    public String getCs() { return cs; }

    public void setCs(String cs) { this.cs = cs; }
}
