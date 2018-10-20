package com.hk.controller;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hk.pojo.User;
import com.hk.service.UserService;

@Controller
public class UserController {
  @Autowired
  private UserService userService;
  
  @Value("SEESION_USER")
  private String SESSION_USER;
  
  /*
   * 根据拥护明喝密码获取用户信息
   */
  @RequestMapping("/getUser")
  @ResponseBody
  public User findUser(String username,String password) {
            return userService.findUser(username, password);  
  }
    @RequestMapping("/index.do")
	public String toIndex() {
		return "index";
	}
   
    /**
     * 返回登录注册逻辑视图
     */
    @RequestMapping("/loginOrRegister.do")
	public ModelAndView toLoginOrRegister() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("/LoginOrRegister");
		return mv;
	}
  
    /*
     * 用户登录
     */
    
    @RequestMapping("/login.do")
	public String login(String username, String password,HttpServletRequest request) {
		User user = userService.findUser(username, password);
		System.out.println(user);
		if(user != null) {
			//这段代码只是用来用户数据存储在session中
			HttpSession session = request.getSession();
			session.setAttribute("username",username);
			return "redirect:/index.do";
		}else{
			request.setAttribute("loginPasswordMsg", "用户名或密码错误！请重试");
			return "redirect:/loginOrRegister.do";
		}
	}
	
    /*
     *验证指定用户名的用户名是否存在
     */
    @RequestMapping("/checkUsername")  
    @ResponseBody
    public String checkUsername(String username) {
    	User user = userService.findUserByUsername(username);
    	
    	if (user==null) {
    		return "ok";
			
		}
    	return "fail";
    }
    
    /*
	 * 用户注册
	 */
	@RequestMapping("/register.do")
	public String login(User user,HttpServletRequest request) {
	
		//验证用户名是否为空
		String username = user.getUsername();
		if(username == null || "".equals(username)) {
			request.setAttribute("registerUsernameMsg", "用户名不能为空！");
			return "LoginOrRegister";
		}
		if(user.getPassword() ==null || "".equals(user.getPassword())) {
			request.setAttribute("registerPasswordMsg", "密码不能为空！");
			return "LoginOrRegister";
		}
		if(user.getPhone() ==null ||"".equals(user.getPhone())) {
			request.setAttribute("registerPhoneMsg", "手机号不能为空！");
			return "LoginOrRegister";
		}
		if(user.getEmail() ==null ||"".equals(user.getEmail())) {
			request.setAttribute("registerEmail", "用户名不能为空！");
			return "LoginOrRegister";
		}
		//需要检验此用户名的用户是否存在
		User userFromDB = userService.findUserByUsername(username);
		if(userFromDB == null) {
			//用户名在数据库中是不存在的
			//将用户pojo类中的数据补齐
			user.setCreated(new Date());
			user.setUpdated(new Date());
			//添加用户
			userService.addUser(user);
			request.setAttribute("loginPasswordMsg", "<font color = 'green'>注册成功，请登录</font>");
		}else {
			request.setAttribute("registerUsernameMsg", "用户名已存在！");
		}
		return "LoginOrRegister";
	}
}
