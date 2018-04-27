package com.javamadman.web.servlet;

import com.javamadman.entitys.Car;
import com.javamadman.service.CarService;
import com.javamadman.service.impl.CarServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet( "/NewOrdersServlet")
public class NewOrdersServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String carid = request.getParameter("carid");
        int id = Integer.parseInt(carid);
        CarService service = new CarServiceImpl();
        Car car=null;
        try {
            car = service.getCarById(id);
        } catch (Exception e) {
            e.printStackTrace();
        }

        request.setAttribute("car",car);
        request.getRequestDispatcher("/neworder.jsp").forward(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
