package com.spring.project;

import java.lang.reflect.Parameter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.annotations.Param;
import org.omg.CORBA.Request;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.spring.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private UserService service;

	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public void loginGET() throws Exception {

	}
	
	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginPOST(@RequestParam("userID") int userID, HttpServletRequest request) throws Exception {
		
		HttpSession session = request.getSession();
		session.setAttribute("userID", userID);
		
		return "/main";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout() throws Exception {
		
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.GET)
	public String joinGET() throws Exception {

		return "/user/join";
	}
	
	@RequestMapping(value = "/join", method = RequestMethod.POST)
	public String joinPOST() throws Exception {
		
		return "/user/join";
	}
}
