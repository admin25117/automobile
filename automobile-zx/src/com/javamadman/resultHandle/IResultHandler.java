package com.javamadman.resultHandle;

/**
 * @Author: ldw
 * @Date: created in 10:56 2018/3/27
 * @Description:
 */

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * 处理结果集
 */
public interface IResultHandler<T> {

   T  handleResult(ResultSet rs) throws SQLException;
}
