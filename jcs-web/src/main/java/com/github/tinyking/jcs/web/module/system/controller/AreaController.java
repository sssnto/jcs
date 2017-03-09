package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.web.anno.Pjax;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjianchao1 on 2017/3/8.
 */
@Controller
@RequestMapping("system/area")
public class AreaController {

    @Pjax
    @RequestMapping(value = "index", method = RequestMethod.GET)
    public String areaIndex() {
        return "module/system/area-index";
    }


    @RequestMapping("add")
    public String areaAdd() {
        return "module/system/area-add";
    }
}
