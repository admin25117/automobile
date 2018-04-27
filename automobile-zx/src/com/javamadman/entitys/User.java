package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/12
 * Time: 19:30
 * 用户
 * @author zx
 */
public class User extends BaseEntity {

    private Integer uId;

    private String uName;//用户名

    private String uPassword;//用户密码

    private String phone;//用户手机号

    private Integer checkCode;//验证码

    private Integer verifyCode;//校验码
    private String idcard;//证件号
    private String email;//邮箱
    private String cardtype;//证件类型

    public String getIdcard() {
        return idcard;
    }

    public void setIdcard(String idcard) {
        this.idcard = idcard;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getCardtype() {
        return cardtype;
    }

    public void setCardtype(String cardtype) {
        this.cardtype = cardtype;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName;
    }

    public String getuPassword() {
        return uPassword;
    }

    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public Integer getCheckCode() {
        return checkCode;
    }

    public void setCheckCode(Integer checkCode) {
        this.checkCode = checkCode;
    }

    public Integer getVerifyCode() {
        return verifyCode;
    }

    public void setVerifyCode(Integer verifyCode) {
        this.verifyCode = verifyCode;
    }
}
