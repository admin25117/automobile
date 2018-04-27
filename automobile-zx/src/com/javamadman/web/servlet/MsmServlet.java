package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.aliyuncs.dysmsapi.model.v20170525.SendSmsResponse;
import com.javamadman.entitys.Car;
import com.javamadman.service.CarService;
import com.javamadman.service.impl.CarServiceImpl;
import com.javamadman.utils.MsmUtils;
import com.javamadman.utils.SmsUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
import java.util.Random;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/21
 * Time: 12:07
 *
 * @author zx
 */
@WebServlet("/MsmServlet")
public class MsmServlet extends BaseServlet {

    public String sendSms(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            System.out.println("======================");
            //1.获取用户手机号
            String phone = request.getParameter("phone");
            //2.获取随机数
            Random random = new Random();
            String numStr = "";
            for(int i=0;i<6;i++){
                numStr += random.nextInt(10)+"";
            }
            //3.设置响应字符集编码
            response.setContentType("text/html;charset=utf-8");
            //3.调用短信接口给用户发送短信，返回json字符串
            SmsUtils smsUtils = new SmsUtils();
            SendSmsResponse sendSmsResponse = smsUtils.sendSms(phone, numStr);
            //5.将随机产生的验证码存入request中
            request.setAttribute("numStr",numStr);
            //.获取返回后的验证码
            //String code = sendSmsResponse.getCode();
            //4.将carList转换为字符串
            //String s = JSON.toJSONString(code);
            //5.将字符串写回浏览器
            response.getWriter().print(numStr);
            System.out.println(numStr);

        } catch (Exception e) {
            //出现异常不捕捉，为了不影响其他部分的展示
            e.printStackTrace();
        }


        return null;

    }
}
