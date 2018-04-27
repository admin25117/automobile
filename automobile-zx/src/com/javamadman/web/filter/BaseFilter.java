package com.javamadman.web.filter;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import java.io.IOException;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/16
 * Time: 9:14
 * 通用过滤器
 * @author zx
 */
@WebFilter(filterName = "BaseFilter")
public class BaseFilter implements Filter {
    public void destroy() {
    }

    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {



        chain.doFilter(request, response);
    }

    public void init(FilterConfig config) throws ServletException {

    }

}
