package com.github.tinyking.jcs.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.tinyking.jcs.model.Menu;
import com.github.tinyking.jcs.service.MenuService;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

/**
 * Created by wangjianchao1 on 2017/4/11.
 */
@Service
public class MenuServiceImpl extends BaseService<Menu> implements MenuService {
    @Override
    public PageInfo<Menu> queryPage() {
        Example example = new Example(Menu.class);

        //分页查询
        Page page = PageHelper.startPage(1, 10);
        selectByExample(example);

        PageInfo<Menu> result = new PageInfo<Menu>(page);
        return result;
    }
}
