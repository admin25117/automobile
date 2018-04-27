package com.javamadman.web.servlet;

import com.javamadman.entitys.User;
import com.javamadman.service.PaoService;
import com.javamadman.service.PaoService_two;
import com.javamadman.service.impl.PaoServiceImlp_two;
import com.javamadman.service.impl.PaoServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Random;

@WebServlet(value = "/PaoServlet")
public class PaoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uid=user.getuId()+"";
        request.setCharacterEncoding("utf-8");
        int a=-2;
        int b=-1;
        String get_time="2018-04-27";
        String set_time="2018-04-29";
        String price=request.getParameter("price");
        String car=request.getParameter("car");
        Random x=new Random();
        int orders=x.nextInt(10000)+1000000;
        String status="0";
        PaoService ps=new PaoServiceImpl();
        PaoService_two ps2=new PaoServiceImlp_two();
        a=ps.add(get_time,set_time);
        b=ps2.add_two(price,orders,status,car,uid);
        request.setAttribute("a",a);
        request.setAttribute("b",b);
        request.getRequestDispatcher("/personServlet").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
