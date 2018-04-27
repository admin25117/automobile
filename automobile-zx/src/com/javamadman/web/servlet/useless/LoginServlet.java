package com.javamadman.web.servlet.useless;

import com.javamadman.entitys.Orders;
import com.javamadman.entitys.User;
import com.javamadman.service.UserService;
import com.javamadman.service.impl.OrderServiceImpl;
import com.javamadman.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/15
 * Time: 11:56
 *
 * @author zx
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码格式
        request.setCharacterEncoding("utf-8");
        //获取用户手机号
        String phone =request.getParameter("phone");
        //调用通过手机号查询方法，实现登录功能
        UserService userService = new UserServiceImpl();
        try {
            User userByPhone = userService.findUserByPhone(phone);
            if(userByPhone != null) {
                request.getRequestDispatcher("/index.jsp").forward(request,response);
            }else {
                request.getSession().setAttribute("userByPhone",userByPhone);

                /*String uid=userByPhone.getuId()+"";
                List<Orders> order =new OrderServiceImpl().ordertwo(uid);
                request.getSession().setAttribute("oorders",order);*/

                response.sendRedirect("/jsp/loginTest.jsp");
            }



        } catch (Exception e) {
            e.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);

    }
}
