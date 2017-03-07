package com.github.tinyking.jcs.mapper;

import tk.mybatis.mapper.common.Mapper;
import tk.mybatis.mapper.common.MySqlMapper;

/**
 * Created by wangjianchao1 on 2017/3/7.
 */
public interface BaseMapper<T> extends Mapper<T>, MySqlMapper<T> {

}