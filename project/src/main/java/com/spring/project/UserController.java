package com.spring.project;

import java.lang.reflect.Parameter;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.tools.DocumentationTool.Location;

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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.UserDTO;
import com.spring.service.UserService;

@Controller
@RequestMapping("/user/*")
public class UserController {
	
	private static final Logger logger = LoggerFactory.getLogger(UserController.class);
	
	@Inject
	private UserService service;

	
	@RequestMapping(value = "/loginForm", method = RequestMethod.GET)
	public void loginFormGET() throws Exception {

	}
	
	@RequestMapping(value = "/loginForm", method = RequestMethod.POST)
	public String loginFormPOST(UserDTO dto, @RequestParam("userID") int userID, @RequestParam("userPW") String userPW, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		UserDTO dtos = service.userLogin(dto);
		if(dtos.getUserID()==userID && dtos.getUserPW().equals(userPW)) {
			HttpSession session = request.getSession();
			session.setAttribute("userID", dtos.getUserID());
			System.out.println(session.getAttribute("userID"));
			rttr.addFlashAttribute("msg", "success");
		}else if(dtos.equals(null)) {
			rttr.addFlashAttribute("msg", "fail");
			return  "redirect:/user/loginForm";
		}else {
			rttr.addFlashAttribute("msg", "fail");
			return  "redirect:/user/loginForm";
			
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout(RedirectAttributes rttr) throws Exception {
		rttr.addFlashAttribute("msg", "success");
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public void joinFormGET() throws Exception {

	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.POST)
	public String joinFormPOST(@RequestParam("userID") int userID, UserDTO dto, RedirectAttributes rttr) throws Exception {
		
		if(dto.getUserID()==userID) {
			rttr.addFlashAttribute("msg", "overlap");
		}else {
			service.userJoin(dto);
			rttr.addFlashAttribute("msg", "success");
		}
		
		return "redirect:/";
	}
}
