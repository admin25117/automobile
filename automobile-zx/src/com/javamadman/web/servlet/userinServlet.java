package com.javamadman.web.servlet;

import com.javamadman.entitys.User;
import com.javamadman.service.impl.OrderServiceImpl;
import com.javamadman.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

/**
 * @Author: wxy
 * @Description:
 * @Date: Created in 2018/4/23 9:44
 */
@WebServlet(value="/userinServlet")
public class userinServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");
        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uid=user.getuId()+"";
        OrderServiceImpl o= new OrderServiceImpl();
        UserServiceImpl u= new UserServiceImpl();
        List<User> us=null;

        try {
            us=u.userinfo(uid);
        } catch (Exception e) {
            e.printStackTrace();
        }


        request.setAttribute("us",us);

        request.getRequestDispatcher("/personinfor.jsp").forward(request,response);



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }


}
