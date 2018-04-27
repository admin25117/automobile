package com.javamadman.dao;

import com.javamadman.entitys.Area;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:45
 * 基础数据访问
 * @author zx
 */
public interface BaseDao<T> {
    /**
     * 添加
     * @param t
     * @return 影响行数
     * @throws Exception
     */
   int save(T t) throws Exception;
    /**
     * 删除
     * @param t
     * @return 影响行数
     * @throws Exception
     */
   int dele(T t) throws Exception;
    /**
     * 更新
     * @param t
     * @return 影响行数
     * @throws Exception
     */
   int upda(T t) throws Exception;

    /**
     * 查询所有
     * @return
     * @throws Exception
     */
   List<T> findAll() throws Exception;
    /**
     * 按指定id查询
     * @param id
     * @return 一条记录
     * @throws Exception
     */
  T findObjById(Long id) throws Exception;
}
