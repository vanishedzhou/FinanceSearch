package com.zzy.service.impl;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.zzy.dao.UserMapper;
import com.zzy.entity.User;
import com.zzy.service.UserService;

@Service("userService")
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserMapper userDao;

	@Override
	public User selectUserById(int id) {
		return this.userDao.selectByPrimaryKey(id);
	}


}
