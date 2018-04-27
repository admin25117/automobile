package com.javamadman.web.servlet.useless;

import com.javamadman.entitys.Area;
import com.javamadman.service.impl.AreaServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 11:52
 *
 * @author zx
 */
@WebServlet("/TestServlet")
public class TestServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        AreaServiceImpl areaService = new AreaServiceImpl();
        List<Area> all = null;
        try {
            all = areaService.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("all",all);
        request.getRequestDispatcher("/jsp/success.jsp").forward(request,response);
    }
}
