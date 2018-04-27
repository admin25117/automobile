package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 18:09
 * 支付
 * @author zx
 */
public class Pay extends BaseEntity {

    private Integer pId;

    private Integer shoPay;//门店支付

    private Integer netPay;//在线支付

    public Integer getpId() {
        return pId;
    }

    public void setpId(Integer pId) {
        this.pId = pId;
    }

    public Integer getShoPay() {
        return shoPay;
    }

    public void setShoPay(Integer shoPay) {
        this.shoPay = shoPay;
    }

    public Integer getNetPay() {
        return netPay;
    }

    public void setNetPay(Integer netPay) {
        this.netPay = netPay;
    }
}
