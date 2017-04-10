package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.web.anno.Pjax;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Created by wangjianchao1 on 2017/4/7.
 */
@Controller
@RequestMapping("system/dict")
public class DictController {

    @Pjax
    @RequestMapping(method = RequestMethod.GET)
    public String index() {
        return "module/system/dict-index";
    }
}
