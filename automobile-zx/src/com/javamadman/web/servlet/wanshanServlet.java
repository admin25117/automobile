package com.javamadman.web.servlet;

import com.javamadman.entitys.User;
import com.javamadman.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * @Author: wxy
 * @Description:
 * @Date: Created in 2018/4/24 11:54
 */
@WebServlet(value="/wanshanServlet")
public class wanshanServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
request.setCharacterEncoding("utf-8");
        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uid=user.getuId()+"";
        UserServiceImpl u= new UserServiceImpl();
        List<User> us=null;

        try {
            us=u.userinfo(uid);
        } catch (Exception e) {
            e.printStackTrace();
        }


        request.setAttribute("us",us);

        request.getRequestDispatcher("/personwanshan.jsp").forward(request,response);


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
