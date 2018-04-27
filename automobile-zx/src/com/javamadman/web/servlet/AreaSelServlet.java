package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.City;
import com.javamadman.service.AreaService;
import com.javamadman.service.CarService;
import com.javamadman.service.CityService;
import com.javamadman.service.impl.AreaServiceImpl;
import com.javamadman.service.impl.CarServiceImpl;
import com.javamadman.service.impl.CityServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/AreaSelServlet")
public class AreaSelServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String cityName = request.getParameter("city");
        CityServiceImpl cityService = new CityServiceImpl();
        City city=null;
        try {
           city = cityService.findCityIdBycname(cityName);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        AreaService areaService = new AreaServiceImpl();
        long cityId=city.getCityId();
        List<Area> areas=null;
        try {
             areas = areaService.findAllAreaById(cityId);
        } catch (Exception e) {
            e.printStackTrace();
        }
        String aaa = JSON.toJSONString(areas);
        response.setCharacterEncoding("utf-8");
        PrintWriter out = response.getWriter();
        out.print(aaa);
        out.flush();
        out.close();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
