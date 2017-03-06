package com.github.tinyking.jcs.web.module.base.controller;

import com.github.tinyking.jcs.web.anno.Pjax;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangjianchao1 on 2017/3/2.
 */
@Controller
public class IndexController {
    
    @Pjax
    @RequestMapping({"", "index"})
    public String index() {
        return "module/dashboard";
    }
    
    
    @RequestMapping("test")
    public String test() {
        return "test";
    }
}
