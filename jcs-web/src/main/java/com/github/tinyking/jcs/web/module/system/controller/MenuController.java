package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.web.anno.Pjax;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjianchao1 on 2017/4/11.
 */
@Controller
@RequestMapping("system/menu")
public class MenuController {

    @Pjax
    @RequestMapping(value = "", method = RequestMethod.GET)
    public String index() {
        return "module/system/menu-index";
    }



    @RequestMapping("add")
    public String areaAdd() {
        return "module/system/menu-add";
    }
}
