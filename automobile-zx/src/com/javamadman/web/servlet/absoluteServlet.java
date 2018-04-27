package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Orders;
import com.javamadman.entitys.User;
import com.javamadman.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

/**
 * @Author: wxy
 * @Description:
 * @Date: Created in 2018/4/26 16:23
 */
@WebServlet("/absoluteServlet")
public class absoluteServlet extends BaseServlet {
  /*  @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println(11111);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }*/

    public String getTwo (HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {



if(request.getSession().getAttribute("userByPhone")!=null){
        Object ob = request.getSession().getAttribute("userByPhone");
        User u = (User)ob;
        String uid=u.getuId()+"";
        OrderServiceImpl o= new OrderServiceImpl();
        List<Orders> ord=null;

        try {
            ord=new OrderServiceImpl().ordertwo(uid);
        } catch (Exception e) {
            e.printStackTrace();
        }

        response.setCharacterEncoding("utf-8");
        PrintWriter writer = response.getWriter();
        String s = JSON.toJSONString(ord);
        System.out.println(s);
        writer.print(s);
        writer.flush();
        writer.close();}


        return null;
    }
}
