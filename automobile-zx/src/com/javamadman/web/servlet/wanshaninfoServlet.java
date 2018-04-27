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
 * @Date: Created in 2018/4/24 14:13
 */
@WebServlet(value="/wanshaninfoServlet")
public class wanshaninfoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("utf-8");


           String email=request.getParameter("emailw");
        String phone=request.getParameter("telephone");
        String name=request.getParameter("namew");
        String cardtype=request.getParameter("cardtype");
        String idcard=request.getParameter("idcard");


        Object ob = request.getSession().getAttribute("userByPhone");
        User user = (User)ob;
        String uId=user.getuId()+"";





           UserServiceImpl u= new UserServiceImpl();
        List<User> us=null;


        try {
            u.changeinfo(email,phone,name,cardtype,idcard,uId);

            us=u.userinfo(uId);
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
