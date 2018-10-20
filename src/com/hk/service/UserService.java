package com.hk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.dao.UserDao;
import com.hk.pojo.User;

@Service
public class UserService {
    @Autowired
	private UserDao userDao;
    
    public User findUser(String username,String password) {
    	return userDao.findUser(username, password);
    }
    public void addUser(User user) {
    	userDao.addUser(user);
    }
    
    public User findUserByUsername(String username) {
    	return userDao.findUserByUsername(username);
    }
}
