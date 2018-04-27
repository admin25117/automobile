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
import java.util.List;

@WebServlet("/CarListServlet")
public class CarListServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        CarService service = new CarServiceImpl();
        List<Car> cars=null;
        try {
            cars = service.selAllCar();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("cars",cars);
        request.getRequestDispatcher("/renting-car-test2.jsp").forward(request,response);
    }
}
