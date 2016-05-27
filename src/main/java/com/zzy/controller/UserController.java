package com.zzy.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zzy.entity.User;
import com.zzy.service.UserService;

@Controller
@RequestMapping(value="user")
public class UserController {
	@Resource
	private UserService userService;
	
	@RequestMapping(value="/{id}")
	public String showUser(@PathVariable int id, Model model) {
		User user = userService.selectUserById(id);
		model.addAttribute("user", user);

		return "showUser";
	}

}
