package com.github.tinyking.jcs.service;

import java.util.List;

/**
 * Created by wangjianchao1 on 2017/3/7.
 */
public interface IService<T> {
    
    T selectByKey(Object key);

    int save(T entity);

    int delete(Object key);

    int updateAll(T entity);

    int updateNotNull(T entity);

    List<T> selectByExample(Object example);

    //TODO 其他...
}
