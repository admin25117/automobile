package com.javamadman.web.servlet;

import com.alibaba.fastjson.JSON;
import com.javamadman.entitys.Area;
import com.javamadman.entitys.User;
import com.javamadman.service.UserService;
import com.javamadman.service.impl.AreaServiceImpl;
import com.javamadman.service.impl.UserServiceImpl;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/15
 * Time: 21:19
 * 处理用户相关业务
 * @author zx
 */
@WebServlet("/UserServlet")
public class UserServlet extends BaseServlet {
    /**
     * 测试查询所有
     * @param request
     * @param response
     * @return 跳转路径
     */
    public String test(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        AreaServiceImpl areaService = new AreaServiceImpl();
        List<Area> all = null;
        try {
            all = areaService.findAll();
        } catch (Exception e) {
            e.printStackTrace();
        }
        request.setAttribute("all",all);
        return "/success.jsp";
    }

    /**
     * 用户注册
     * @param request
     * @param response
     * @return 跳转路径
     * @throws ServletException
     * @throws IOException
     */
    public String register(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            //设置字符编码格式
            request.setCharacterEncoding("utf-8");
            //获取注册相关信息
            String phone =request.getParameter("phone");
            int checkCode = Integer.parseInt(request.getParameter("checkCode"));
            //int verifyCode = Integer.parseInt(request.getParameter("verifyCode"));
            String uPassword = request.getParameter("uPassword");

            //封装注册信息到用户实体
            User user = new User();
            BeanUtils.populate(user,request.getParameterMap());
            //调用用户添加方法，实现注册功能
            UserService userService = new UserServiceImpl();
            userService.save(user);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/jsp/registerndlogin/login.jsp";
    }

    /**
     * 用户登录
     * @param request
     * @param response
     * @return 跳转路径
     * @throws ServletException
     * @throws IOException
     */
    public String login(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        try {
            //设置字符编码格式
            request.setCharacterEncoding("utf-8");
            //获取用户手机号
            String phone =request.getParameter("phone");
            String password = request.getParameter("passwo");
            //调用通过手机号查询方法，实现登录功能
            UserService userService = new UserServiceImpl();
            User userByPhone = userService.findUserByPhone(phone);
            //登录成功，保存用户登录信息
            request.getSession().setAttribute("userByPhone",userByPhone);
            //将userByPhone转换为字符串
            String s = JSON.toJSONString(userByPhone);
            //将字符串写回浏览器
            response.getWriter().print(s);
        } catch (Exception e) {
            e.printStackTrace();
        }
       return null;
    }

    /**
     * 用户退出
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public String logout(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getSession().invalidate();
        return "/loginTest.jsp";
    }
}
