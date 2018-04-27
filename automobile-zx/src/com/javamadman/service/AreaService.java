package com.javamadman.service;

import com.javamadman.entitys.Area;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/14
 * Time: 9:03
 * 定义区域相关业务逻辑方法
 * @author zx
 */
public interface AreaService extends BaseService<Area>{
    List<Area> findAllAreaById(Long id) throws Exception;
}
