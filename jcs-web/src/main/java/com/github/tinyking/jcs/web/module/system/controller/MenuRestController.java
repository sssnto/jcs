package com.github.tinyking.jcs.web.module.system.controller;

import com.github.pagehelper.PageInfo;
import com.github.tinyking.jcs.jqgrid.Grid;
import com.github.tinyking.jcs.model.Menu;
import com.github.tinyking.jcs.service.MenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by wangjianchao1 on 2017/4/11.
 */
@RestController
@RequestMapping("rest/system/menu")
public class MenuRestController {
    
    @Autowired
    private MenuService menuService;
    
    @ResponseBody
    @RequestMapping("table")
    public Grid table() {
        PageInfo<Menu> menuPageInfo = menuService.queryPage();

        return new Grid(1, menuPageInfo.getSize(), 1, menuPageInfo.getList());
    }
}
