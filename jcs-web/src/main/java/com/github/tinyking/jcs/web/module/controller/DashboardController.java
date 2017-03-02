package com.github.tinyking.jcs.web.module.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjianchao1 on 2017/3/2.
 */
@Controller
@RequestMapping("dashboard")
public class DashboardController {
    
    @RequestMapping(value = {""}, method = RequestMethod.GET)
    public String index() {
        return "module/dashboard";
    }
}
