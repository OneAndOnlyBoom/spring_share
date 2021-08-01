package com.my.ytb_0430.controller;



import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.my.ytb_0430.config.Mysession;
import com.my.ytb_0430.dao.UserDao;
import com.my.ytb_0430.vo.User;

@Controller
public class MainController {
	
	
	@Resource(name="UserDao") 
	private UserDao userDao;
	
	@RequestMapping(value="/", method=RequestMethod.GET)
	public String home(Model model, HttpSession session) {
		
		Mysession.setSession(session, model);
		
		model.addAttribute("menu","home");
		
		
		List<User> list = userDao.getAll();
		
		model.addAttribute("userList", list);
		
		
		return "home";
	}
	
	@RequestMapping(value="/product", method=RequestMethod.GET)
	public String product(Model model, HttpSession session) {
		
		Mysession.setSession(session, model);
		model.addAttribute("menu","product");
		return "product";
	}
	
	@RequestMapping(value="/location", method=RequestMethod.GET)
	public String location(Model model, HttpSession session) {
		
		Mysession.setSession(session, model);
		model.addAttribute("menu","location");
		return "location";
	}
	
	@RequestMapping(value="/cs", method=RequestMethod.GET)
	public String cs(Model model, HttpSession session) {
		
		Mysession.setSession(session, model);
		model.addAttribute("menu","cs");
		return "cs";
	}
	
	@RequestMapping(value="/register", method=RequestMethod.GET)
	public String register(Model model) {
		
		return "register";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model) {
		
		return "login";
	}
	
	@RequestMapping(value="/logout", method=RequestMethod.POST)
	public @ResponseBody String logout(Model model, HttpSession session) {
		
		session.invalidate();
		
		return "ok";
	}
	
	@RequestMapping(value="/write", method=RequestMethod.GET)
	public  String write(Model model, HttpSession session) {
		
		session.invalidate();
		
		return "write";
	}
	
	
	
	@RequestMapping(value="/detail", method=RequestMethod.GET)
	public String detail(
			HttpSession session, 
			Model model,
			@RequestParam(value="user_idx") int user_idx
			) {
		
		User user = new User();
		user.setUser_idx(user_idx);
		
		User res = userDao.getOneUser(user);
		
		
		model.addAttribute("user",res);
		return "detail";
	}
}
