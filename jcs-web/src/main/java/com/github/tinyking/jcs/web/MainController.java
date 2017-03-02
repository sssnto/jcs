package com.github.tinyking.jcs.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by wangjianchao1 on 2017/3/2.
 */
@Controller
@RequestMapping("main")
public class MainController {
    
    @RequestMapping("")
    public String index() {
        return "module/main";
    }
}
