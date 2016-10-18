package com.zzy.service.impl;

import com.zzy.entity.TestEntity;
import com.zzy.service.TestService;
import org.springframework.stereotype.Service;

/**
 * Created by zhouzhiyong on 16/10/17.
 */
@Service
public class TestServiceImpl implements TestService{
//    testDao的spring注入
//    @Autowired
//    TestDao testDao;

    @Override
    public TestEntity testMethod() {
        TestEntity testEntity = new TestEntity();
        testEntity.setT1("test 1...");
        testEntity.setT2("test 2...");

        return testEntity;
    }
}
