package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 18:21
 * 区域
 * @author zx
 */
public class Area extends BaseEntity {

    private Integer aId;

    private String aName;//区域名称

    private City city;//区域所在城市id

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName;
    }

    public City getCity() {
        return city;
    }

    public void setCity(City city) {
        this.city = city;
    }
}
