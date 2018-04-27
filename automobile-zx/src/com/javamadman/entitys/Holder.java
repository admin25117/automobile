package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 18:18
 * 租赁人
 * @author zx
 */
public class Holder extends BaseEntity {

   private Integer hId;

    private String hName;//租赁人姓名

    private Integer num;//租赁人身份证

    public Integer gethId() {
        return hId;
    }

    public void sethId(Integer hId) {
        this.hId = hId;
    }

    public String gethName() {
        return hName;
    }

    public void sethName(String hName) {
        this.hName = hName;
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }
}
