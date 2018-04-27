package com.javamadman.utils;


import com.alibaba.druid.pool.DruidDataSourceFactory;

import javax.sql.DataSource;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;

public final class DataSourceUtils {
    /**
     * 定义属性，用于接收连接数据库的配置文件中的相关信息
     */

    private static DataSource dataSource = null;//数据库连接池对象

    public static DataSource getDataSource() {
        return dataSource;
    }

    /**
     * 定义一个静太代码块，用于注册（加载）驱动程序和配置文件的导入读取，因为注册（加载）和配置文件的导入读取只需要
     * 操作一次，所有放在静态代码块中
     *
     * 注意---需要先读取配置文件信息拿到数据库中驱动器字符串后才能加载驱动器
     */
    static {
        /**
         * 读取配置文件信息
         */
        //首先创建properties配置文件对象
        Properties properties = new Properties();
        //再通过反射获取Class类对象，用于后面获取流对象，传输配置文件
        Class clz = DataSourceUtils.class;
        //获取流对象，传输配置文件
        InputStream is = clz.getResourceAsStream("/datasource.properties");
        //通过配置文件对象从流中加载配置文件
        try {
            properties.load(is);
            dataSource = DruidDataSourceFactory.createDataSource(properties);
        } catch (Exception e) {
            e.printStackTrace();
        }
        //最后再读取配置文件中的内容


        //============================================================

        /**
         * 加载数据库驱动器
         */

    }



    /**
     * 抽取关闭资源的方法（为了方便调用设置为静态方方法，直接用类名调用）
     */
    public static void close(Statement stmt, Connection con) {
        try {
            if (stmt != null)
                stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if (con != null)
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //关闭资源重载
    public static void close(ResultSet rs, Statement stmt, Connection con) {
        try {
            if (stmt != null)
                stmt.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if (con != null)
                con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        try {
            if (rs != null)
                rs.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
