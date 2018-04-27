package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.City;
import com.javamadman.service.CityService;
import com.javamadman.service.impl.CityServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/18
 * Time: 10:20
 *
 * @author zx
 */
@WebServlet("/CityServlet")

public class CityServlet extends BaseServlet {

/**
 * 查询热租车型城市列表
 *
 * @param request
 * @param response
 * @return 跳转路径
 * @throws ServletException
 * @throws IOException
 */

    public String findAll(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        //1.设置响应字符集编码
        response.setContentType("text/html;charset=utf-8");
        //2.调用Cityservice，查询所有城市列表，返回json字符串
        CityService cityService = new CityServiceImpl();
        try {
            List<City> cityList = cityService.findAll();

            //3.将结果集放入域对象request中
            request.setAttribute("cityList",cityList);

            return "/CarServlet?method=loadHot";
        } catch (Exception e) {
            //出现异常不捕捉，为了不影响其他部分的展示
            e.printStackTrace();
        }

        return "/CarServlet?method=loadHot";
    }
}
