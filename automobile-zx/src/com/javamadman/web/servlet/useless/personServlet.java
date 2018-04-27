package com.javamadman.web.servlet.useless;


import com.javamadman.entitys.Orders;

import com.javamadman.service.impl.OrderServiceImpl;
import com.javamadman.entitys.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: wxy
 * @Description:
 * @Date: Created in 2018/4/23 17:22
 */
@WebServlet(value= "/personServlet")
public class personServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
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


        request.setAttribute("ord",ord);


       request.getRequestDispatcher("/person2.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doPost(request,response);
    }
}
