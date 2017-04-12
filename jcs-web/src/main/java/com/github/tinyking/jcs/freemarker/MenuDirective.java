package com.github.tinyking.jcs.freemarker;

import com.github.tinyking.jcs.model.Menu;
import com.github.tinyking.jcs.service.MenuService;
import freemarker.core.Environment;
import freemarker.template.ObjectWrapper;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;
import java.util.Map;

/**
 * Created by wangjianchao1 on 2017/4/12.
 */
@Service
public class MenuDirective implements TemplateDirectiveModel {
    
    @Autowired
    private MenuService menuService;
    
    @Override
    public void execute(Environment environment, Map map, TemplateModel[] templateModels, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        
        List<Menu> menus =  menuService.queryTree();
        environment.setVariable("tag_menus", ObjectWrapper.DEFAULT_WRAPPER.wrap(menus));
        templateDirectiveBody.render(environment.getOut());
    }
}
