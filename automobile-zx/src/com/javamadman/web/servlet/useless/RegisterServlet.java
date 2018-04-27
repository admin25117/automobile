package com.javamadman.web.servlet.useless;

import com.javamadman.entitys.User;
import com.javamadman.service.UserService;
import com.javamadman.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/15
 * Time: 11:56
 *
 * @author zx
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //设置字符编码格式
        request.setCharacterEncoding("utf-8");
        //获取注册相关信息
        String phone =request.getParameter("phone");
        int checkCode = Integer.parseInt(request.getParameter("checkCode"));
        int verifyCode = Integer.parseInt(request.getParameter("verifyCode"));
        String uPassword = request.getParameter("uPassword");
        //封装注册信息到用户实体
        User user = new User();
        user.setPhone(phone);
        user.setCheckCode(checkCode);
        user.setVerifyCode(verifyCode);
        user.setuPassword(uPassword);
        //调用用户添加方法，实现注册功能
        UserService userService = new UserServiceImpl();
        try {
            int row = userService.save(user);
            if(row>0) {
                request.getRequestDispatcher("/jsp/success.jsp").forward(request,response);
            }else {
                request.getSession().setAttribute("row",row);
                response.sendRedirect("/jsp/registerTest.jsp");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
