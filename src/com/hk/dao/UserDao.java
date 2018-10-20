package com.hk.dao;

import org.apache.ibatis.annotations.Param;

import com.hk.pojo.User;

public interface UserDao {
   /*
    * 根据用户名和密码查找用户信息
    */
	User findUser(@Param("username")String username,@Param("password")String password);
	
	/**
	 * 向用户表添加一条记录
	 */
	void addUser(User user);
	
	/**
	 * 根据用户名查询用户信息
	 */
	User findUserByUsername(String username);
}
