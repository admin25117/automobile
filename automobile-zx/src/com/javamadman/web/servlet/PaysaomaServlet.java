package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Orders;
import com.javamadman.service.OrderService;
import com.javamadman.service.impl.OrderServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/PaysaomaServlet")
public class PaysaomaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String id = request.getParameter("id");
        int oid = Integer.parseInt(id);
        long idd=oid;
        OrderService orderService = new OrderServiceImpl();
        Orders orders=null;
        try {
             orders= orderService.findObjById(idd);
        } catch (Exception e) {
            e.printStackTrace();
        }
        response.setCharacterEncoding("utf-8");
        String s = JSON.toJSONString(orders);
        System.out.println(s);
        PrintWriter out = response.getWriter();
        out.print(s);
        out.flush();
        out.close();
    }
}
