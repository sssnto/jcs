package com.github.tinyking.jcs.web.interaptor;

import com.github.tinyking.jcs.web.anno.Pjax;
import org.springframework.stereotype.Service;
import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created by wangjianchao1 on 2017/3/6.
 */
@Service
public class PjaxInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
        if(handler instanceof HandlerMethod) {
            Pjax annotation = (Pjax)((HandlerMethod)handler).getMethodAnnotation(Pjax.class);
            if(annotation != null) {
                String header = request.getHeader("X-PJAX");
                if (header == null) {
                    String originalModelPath = modelAndView.getViewName();

                    modelAndView.getModel().put("originalModelPath", originalModelPath);
                    modelAndView.setViewName("layout/layout");
                }
            }
        }
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
