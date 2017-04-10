package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.model.Area;
import com.github.tinyking.jcs.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * Created by wangjianchao1 on 2017/3/8.
 */
@RestController
@RequestMapping("rest/system/area")
public class AreaRestController {
    
    @Autowired
    private AreaService areaService;
    
    @RequestMapping("tree")
    public List<Area> treeData() {
        List<Area> areas = areaService.selectByExample(new Example(Area.class));

        System.out.println(areas);
        return areas;
    }
    
    @RequestMapping("table")
    public List<Area> tableData(@RequestParam(value = "parentCode", defaultValue = "0") String parentCode) {
        List<Area> areas = areaService.selectByExample(new Example(Area.class));

        System.out.println(areas);
        return areas;
    }
}
