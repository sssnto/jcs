package com.github.tinyking.jcs.service.impl;

import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.github.tinyking.jcs.model.Menu;
import com.github.tinyking.jcs.service.MenuService;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

/**
 * Created by wangjianchao1 on 2017/4/11.
 */
@Service
public class MenuServiceImpl extends BaseService<Menu> implements MenuService {
    @Override
    public PageInfo<Menu> queryPage() {
        Example example = new Example(Menu.class);

        //分页查询
        Page page = PageHelper.startPage(1, 1000);
        selectByExample(example);

        PageInfo<Menu> result = new PageInfo<Menu>(page);
        return result;
    }

    @Override
    public List<Menu> queryTree() {
        List<Menu> menus = queryMenus();
        
        List<Menu> result = Lists.newArrayList();
        Map<Long, Menu> menuMap = Maps.newHashMap();

        for (Menu menu : menus) {
            menuMap.put(menu.getId(), menu);
        }

        for (Menu menu : menus) {
            Long fid = menu.getFid();
            if (fid == 0) {
                result.add(menu);
            } else {
                Menu m = menuMap.get(fid);
                if (null == m) continue;
                
                List<Menu> ms = m.getMenus();
                if (ms == null) {
                    ms = Lists.newArrayList();
                    m.setMenus(ms);
                }
                ms.add(menu);
            }
            
        }
        return result;
    }

    private List<Menu> queryMenus() {
        Example example = new Example(Menu.class);
        return selectByExample(example);
    }
}
