package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.model.Dict;
import com.google.common.collect.Lists;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;
import java.util.UUID;

/**
 * Created by wangjianchao1 on 2017/4/7.
 */
@RestController
@RequestMapping("rest/system/dict")
public class DictRestController {
    
    @ResponseBody
    @RequestMapping("tree")
    public List<Dict> tree() {

        List<Dict> dicts = Lists.newArrayList();
        
        Dict dict = new Dict();
        dict.setId(1L);
        dict.setCode(UUID.randomUUID().toString());
        dict.setLabel("基础类别");
        
        dicts.add(dict);
        return dicts;
    }
    
}
