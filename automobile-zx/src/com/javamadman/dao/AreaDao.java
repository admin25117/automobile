package com.javamadman.dao;

import com.javamadman.entitys.Area;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 10:36
 * 定义区域相关数据访问方法
 * @author zx
 */
public interface AreaDao extends BaseDao<Area>{
    List<Area> findAllAreaById(Long id) throws Exception;
}
