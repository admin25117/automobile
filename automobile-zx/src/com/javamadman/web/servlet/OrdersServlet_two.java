package com.javamadman.web.servlet;

import com.javamadman.entitys.Orders;
import com.javamadman.entitys.Orders_two;
import com.javamadman.entitys.User;
import com.javamadman.service.OrdersService_two;
import com.javamadman.service.impl.OrdersServiceImpl_two;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(value = "/OrdersServlet_two")
public class OrdersServlet_two extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uid=user.getuId()+"";
        OrdersServiceImpl_two ser = new OrdersServiceImpl_two();
        List<Orders> dds= null;
        try {
            dds = ser.all(uid);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("dds",dds);
        request.getRequestDispatcher("/allorder.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
