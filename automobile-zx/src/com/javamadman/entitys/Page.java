package com.javamadman.entitys;

import java.util.List;

/**
 * Created by IntelliJ IDEA
 * Date: 2018/4/19
 * Time: 21:03
 * 分页类
 *
 * @author zx
 */
public class Page <T>{
    private Integer firstPage;//首页
    private Integer prePage;//上一页
    private Integer nextPage;//下一页
    private Integer totalPage;//末页、总页数
    private Integer currentPage;//当前页
    private Integer totalCount;//总记录数
    private Integer pageSize;//每页显示的记录数
    private List<T> data;//当前页显示的数据内容

    public Integer getFirstPage() {
        return 1;
    }

    public void setFirstPage(Integer firstPage) {
        this.firstPage = firstPage;
    }

    public Integer getPrePage() {
        return this.getCurrentPage() == this.getFirstPage() ? 1 : this.getCurrentPage() - 1;
    }

    public void setPrePage(Integer prePage) {
        this.prePage = prePage;
    }

    public Integer getNextPage() {
        return this.getCurrentPage() == this.getTotalPage() ? this.getTotalPage() : this.getCurrentPage() + 1;
    }

    public void setNextPage(Integer nextPage) {
        this.nextPage = nextPage;
    }

    public Integer getTotalPage() {
        return this.getTotalCount() % this.getPageSize() == 0
                ? this.getTotalCount() / this.getPageSize()
                : this.getTotalCount() / this.getPageSize() + 1;
    }

    public void setTotalPage(Integer totalPage) {
        this.totalPage = totalPage;
    }

    public Integer getCurrentPage() {
        return currentPage;
    }

    public void setCurrentPage(Integer currentPage) {
        this.currentPage = currentPage;
    }

    public Integer getTotalCount() {
        return totalCount;
    }

    public void setTotalCount(Integer totalCount) {
        this.totalCount = totalCount;
    }

    public Integer getPageSize() {
        return pageSize;
    }

    public void setPageSize(Integer pageSize) {
        this.pageSize = pageSize;
    }

    public List<T> getData() {
        return data;
    }

    public void setData(List<T> data) {
        this.data = data;
    }
}
