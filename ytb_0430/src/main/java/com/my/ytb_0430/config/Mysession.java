package com.my.ytb_0430.config;

import javax.servlet.http.HttpSession;

import org.springframework.ui.Model;

import com.my.ytb_0430.vo.User;

public class Mysession {
	static public void setSession(HttpSession s, Model m) {
		
		User loginUser = (User) s.getAttribute("loginUser");
				
		m.addAttribute("loginUser", loginUser);
	}
}
