package com.javamadman.entitys;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/13
 * Time: 17:43
 * 实体基类
 * @author zx
 */
public class BaseEntity {
    /**
     * 主键
     */
    private Long id;

    public BaseEntity() { }

    public BaseEntity(Long id) {
        this.id = id;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }
}
