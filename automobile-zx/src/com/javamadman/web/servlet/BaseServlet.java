package com.javamadman.web.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.Method;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/15
 * Time: 21:00
 * 处理基础通用业务
 * @author zx
 */
@WebServlet("/BaseServlet")
public class BaseServlet extends HttpServlet {

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        try {
            //1.获取方法名
            String methodName = request.getParameter("method");
                //1.1判断参数“method”是否为空，如果为空则执行默认的方法（自己可以定义一个默认方法，需先将方法名重新赋值）
                if(methodName == null || methodName.trim().length() == 0){
                    methodName = "defaultion";
                }
            //2.获取方法对象
            Class<? extends BaseServlet> clazz = this.getClass();
            Method method = clazz.getMethod(methodName, HttpServletRequest.class, HttpServletResponse.class);
            //3.执行方法，接收返回值
            String path = (String) method.invoke(this, request, response);
            //4.判断返回值是否为空，若不为空统一处理请求转发
            if(path != null){
                request.getRequestDispatcher(path).forward(request,response);
            }

        } catch (Exception e) {
            e.printStackTrace();
            throw new RuntimeException();
        }

    }

    /**
     * 自定义方法---当jsp页面没有传递对应的方法名时，则会启用该方法
     * @param request
     * @param response
     * @throws ServletException
     * @throws IOException
     */
    public void defaultion(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        response.setContentType("text/html;charset=utf-8");
        response.getWriter().print("为啥子不写方法名");
    }
}
