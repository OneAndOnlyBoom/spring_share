package com.my.ytb_0430.dao;

import java.util.List;

import org.mybatis.spring.support.SqlSessionDaoSupport;

import com.my.ytb_0430.vo.User;

public class UserDao extends SqlSessionDaoSupport{
	
	
	public int addUser(User user) {
		return this.getSqlSession().insert("user.addUser", user);
	}
	
	public User getUserById(User user) {
		return this.getSqlSession().selectOne("user.getUserById", user);
	}
	
	public User whenUserLogin(User user) {
		return this.getSqlSession().selectOne("user.whenUserLogin", user);
	}
	public List<User> getAll() {
		return this.getSqlSession().selectList("user.getAll");
	}
	public User getOneUser(User user) {
		return this.getSqlSession().selectOne("user.getOneUser", user);
	}
}