package com.seckill.myMapper;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * @author yinren
 * @date 2019/6/28
 */
public interface MyMapper<T> extends Mapper<T>,MySqlMapper<T> {

}
