package com.zzy.test;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.alibaba.fastjson.JSON;
import com.zzy.entity.User;
import com.zzy.service.UserService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"classpath:spring-mybatis.xml"})
public class TestMybatis {
	private static final Logger logger = Logger.getLogger(TestMybatis.class);
	private ApplicationContext ctx = null;
	
	@Resource
	private UserService userService;
	
//	@Before
	public void Before() {
		ctx = new ClassPathXmlApplicationContext(new String[]{"spring-mybatis.xml"});
		UserService us = ctx.getBean("userService", UserService.class);
	}
	
	@Test
	public void testGetUserById() {
		User user = userService.selectUserById(1);
		
		logger.info(JSON.toJSONString(user));
	}

}
