package com.github.tinyking.jcs.web.module.system.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by wangjianchao1 on 2017/3/2.
 */
@RestController
@RequestMapping("rest/system")
public class RestSytemController {

    
    @RequestMapping("data")
    public Map<String, String> data() {
        HashMap<String, String> map = new HashMap<String, String>();
        map.put("1", "1");
        return map;
    }
}
