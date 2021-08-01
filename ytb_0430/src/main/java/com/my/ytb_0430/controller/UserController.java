package com.my.ytb_0430.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.ytb_0430.dao.UserDao;
import com.my.ytb_0430.vo.User;

@Controller
public class UserController {
	
	
	@Resource(name="UserDao")
	private UserDao userDao;
	
	
	
	@RequestMapping(value="/addUser", method=RequestMethod.GET)
	public @ResponseBody String addUser(
			@RequestParam(value="id") String id,
			@RequestParam(value="pw") String pw,
			@RequestParam(value="pw1") String pw1,
			@RequestParam(value="nn") String nickname,
			@RequestParam(value="it") String intro,
			@RequestParam(value="gd") String gender,
			@RequestParam(value="addr") String address
			) {
		
		
		User newUser = new User();
		newUser.setId(id);
		newUser.setPw(pw);
		newUser.setPw1(pw1);
		newUser.setNickname(nickname);
		newUser.setIntro(intro);
		newUser.setGender(gender);
		newUser.setAddress(address);
		
		
		User user = new User();
		user.setId(id);
		
		User resultUser = userDao.getUserById(user);
		
		if(resultUser == null) {
			userDao.addUser(newUser);
			return "ok";
		}else {
			return "dup";
		}
		
		
	}
	
	@RequestMapping(value="/whenUserLogin", method=RequestMethod.POST) 
	public @ResponseBody User whenUserLogin(
			@RequestParam(value="id") String id,
			@RequestParam(value="pw") String pw,
			HttpSession session
			
			) {
		
		
		User user = new User();
		
		user.setId(id);
		user.setPw(pw);
		
		User resultUser = userDao.whenUserLogin(user);
		
		if(resultUser != null) {
			session.setAttribute("loginUser", resultUser);
		}
		
		
		return resultUser;
		
		
	}
	
	
}
