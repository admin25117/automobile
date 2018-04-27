package com.javamadman.web.servlet;

import com.javamadman.entitys.User;
import com.javamadman.service.impl.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author: wxy
 * @Description:
 * @Date: Created in 2018/4/25 11:46
 */
@WebServlet(value= "/changekeyServlet")
public class changekeyServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        String password=request.getParameter("oldkey");
        String newpassword=request.getParameter("newkey");
        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uId=user.getuId()+"";
        String rightpsd="";
        UserServiceImpl u= new UserServiceImpl();
        try {
           rightpsd= u.verifykey(uId).getuPassword();
        } catch (Exception e) {
            e.printStackTrace();
        }
if(rightpsd.equals(password)){
            //改密码

    try {
        u.changekey(uId,newpassword);
    } catch (Exception e) {
        e.printStackTrace();
    }
    request.getRequestDispatcher("/userinServlet").forward(request,response);

}else{
    request.getRequestDispatcher("/userinServlet").forward(request,response);

}



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
