package com.github.tinyking.jcs.service;

import com.github.pagehelper.PageInfo;
import com.github.tinyking.jcs.model.Menu;

/**
 * Created by wangjianchao1 on 2017/4/11.
 */
public interface MenuService extends IService<Menu> {
    
    PageInfo<Menu> queryPage();
}
