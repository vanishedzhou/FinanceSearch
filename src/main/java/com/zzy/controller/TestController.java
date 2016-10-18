package com.zzy.controller;

import com.zzy.entity.TestEntity;
import com.zzy.service.TestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by zhouzhiyong on 16/10/17.
 */
@Controller
@RequestMapping(value = "/test")
public class TestController {

    @Autowired
    TestService testService;

    @RequestMapping(value = "/main")
    @ResponseBody
    public TestEntity test() {

        TestEntity testEntity = testService.testMethod();

        return testEntity;
    }
}
