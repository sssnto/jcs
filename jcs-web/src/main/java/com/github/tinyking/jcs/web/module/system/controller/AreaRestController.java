package com.github.tinyking.jcs.web.module.system.controller;

import com.github.tinyking.jcs.dto.GridDto;
import com.github.tinyking.jcs.model.Area;
import com.github.tinyking.jcs.service.AreaService;
import org.springframework.beans.factory.annotation.Autowired;
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
    public GridDto tableData(@RequestParam(value = "parentCode", defaultValue = "0") String parentCode) {
        GridDto gridDto = new GridDto();
        gridDto.setPage(1);
        gridDto.setTotal(10);

        List<Area> areas = areaService.selectByExample(new Example(Area.class));
        gridDto.setRecords(areas.size());
        gridDto.setRows(areas);
        return gridDto;
    }
}
