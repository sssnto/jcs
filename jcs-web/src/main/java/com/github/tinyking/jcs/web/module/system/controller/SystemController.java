package com.github.tinyking.jcs.web.module.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjianchao1 on 2017/3/2.
 */
@Controller
@RequestMapping("system")
public class SystemController {
    
    @RequestMapping(value = "area/index", method = RequestMethod.GET)
    public String areaIndex() {
        return "module/system/area-index";
    }
}
