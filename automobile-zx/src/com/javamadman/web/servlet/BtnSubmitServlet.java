package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Car;
import com.javamadman.service.CarService;
import com.javamadman.service.impl.CarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet("/BtnSubmitServlet")
public class BtnSubmitServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String area1 = request.getParameter("area1");
        CarService carService = new CarServiceImpl();
        response.setContentType("application/json;charset=utf-8");
        List<Car> cars=null;
        try {
             cars= carService.getCarListByArea(area1);
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("cars",cars);
        request.getRequestDispatcher("/renting-car-test2.jsp").forward(request,response);
        /*String scar = JSON.toJSONString(cars);
        PrintWriter out = response.getWriter();
        out.print(scar);
        out.flush();
        out.close();*/
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
