package com.javamadman.entitys;

import java.util.Date;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 18:14
 * 汽车记录
 * @author zx
 */
public class Record extends BaseEntity {

    private Integer rId;

    private Date getTime;//取车时间

    private Date setTime;//还车时间

    private Shop shop;//门店id

    private Integer rent;//出租天数

    private Integer carId;//汽车id


    public Integer getrId() {
        return rId;
    }

    public void setrId(Integer rId) {
        this.rId = rId;
    }

    public Date getGetTime() {
        return getTime;
    }

    public void setGetTime(Date getTime) {
        this.getTime = getTime;
    }

    public Date getSetTime() {
        return setTime;
    }

    public void setSetTime(Date setTime) {
        this.setTime = setTime;
    }

    public Shop getShop() {
        return shop;
    }

    public void setShop(Shop shop) {
        this.shop = shop;
    }

    public Integer getRent() {
        return rent;
    }

    public void setRent(Integer rent) {
        this.rent = rent;
    }
}
