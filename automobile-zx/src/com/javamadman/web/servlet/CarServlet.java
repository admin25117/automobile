package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Car;
import com.javamadman.entitys.City;
import com.javamadman.entitys.Page;
import com.javamadman.service.CarService;
import com.javamadman.service.CityService;
import com.javamadman.service.impl.CarServiceImpl;
import com.javamadman.service.impl.CityServiceImpl;
import com.sun.org.apache.bcel.internal.generic.RETURN;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.crypto.dsig.keyinfo.RetrievalMethod;
import java.io.IOException;
import java.io.PrintWriter;
import java.lang.ref.ReferenceQueue;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.logging.SimpleFormatter;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/18
 * Time: 13:53
 *
 * @author zx
 */
@WebServlet("/CarServlet")
public class CarServlet extends BaseServlet {
    /**
     * 查询热门汽车
     *
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public String mainOfHot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        try {
            //1.获取城市id
            Integer id = Integer.parseInt(request.getParameter("id"));
            //2.设置响应字符集编码
            response.setContentType("text/html;charset=utf-8");
            //3.调用Carservice，查询所有汽车列表，返回json字符串
            CarService carService = new CarServiceImpl();
            List<Car> carList = carService.getCarListByCityId(id);
            //4.将carList转换为字符串
            String s = JSON.toJSONString(carList);
            //5.将字符串写回浏览器
            response.getWriter().print(s);
            System.out.println(s);

        } catch (Exception e) {
            //出现异常不捕捉，为了不影响其他部分的展示
            e.printStackTrace();
        }

        return null;
    }

    public String loadHot(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            CarService carService = new CarServiceImpl();
            List<Car> carList = carService.getCarListByCityId(1);
            request.setAttribute("carList", carList);
            return "/main.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }

        return "/main.jsp";
    }


    public String findCarAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.设置响应字符编码
        response.setContentType("text/html;charset=utf-8");
        //2.调用carservice,返回查询所有的汽车信息
        CarService carService = new CarServiceImpl();
        try {
            List<Car> carAll = carService.findAll();
            System.out.println(carAll);
            //3.将返回的carList存入域对象request中
            request.setAttribute("carAll", carAll);

            return "/jsp/carquery/cardetail.jsp";
        } catch (Exception e) {
            e.printStackTrace();
        }


        return "/jsp/carquery/cardetail.jsp";
    }

    public String getCars(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.获取请求参数值
        String currentPage = request.getParameter("currentPage");
        String cid =request.getParameter("citys");
        String backdate = request.getParameter("backdate");
        //2.如果用户第一次请求则不会带参数，默认当前页为首页--1
        if (currentPage == null || currentPage == "") {
            currentPage = "1";
        }
        Integer currPage = Integer.parseInt(currentPage);

        //3.默认指定好每页显示的记录数
        Integer pageSize = 4;
        //4.调用CarService
        CarService carService = new CarServiceImpl();
        try {
            Page page = carService.getCars(cid,backdate,currPage, pageSize);
            //5.将返回的page对象存入域对象中
            request.setAttribute("page", page);

            return "/jsp/carquery/cardetail.jsp";

        } catch (Exception e) {
            e.printStackTrace();
        }

        return null;
    }








}
