package com.spring.project;



import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	public String loginFormPOST(UserDTO dto, @RequestParam("userID") String userID, @RequestParam("userPW") String userPW, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		UserDTO dtos = service.userLogin(dto);
		if(dtos==null) {
			rttr.addFlashAttribute("msg", "fail1");
			return  "redirect:/user/loginForm";
		}
		
		if(dtos.getUserID().equals(userID) && dtos.getUserPW().equals(userPW)) {
			HttpSession session = request.getSession();
			session.setAttribute("user", dtos.getUserID());
			session.setAttribute("userNum", dtos.getUserNum());
			System.out.println(session.getAttribute("user"));
			System.out.println(dtos.getUserNum());
			rttr.addFlashAttribute("msg", "login");
		}else {
			rttr.addFlashAttribute("msg", "fail1");
			return  "redirect:/user/loginForm";
		}
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public void logout() throws Exception {
		
	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.GET)
	public void joinFormGET() throws Exception {

	}
	
	@RequestMapping(value = "/joinForm", method = RequestMethod.POST)
	public String joinFormPOST(@RequestParam("userID") String userID, UserDTO dto, RedirectAttributes rttr) throws Exception {
		
		try {
			if (dto.getUserID() == null || dto.getUserPW() == null || dto.getUserName() == null
					|| dto.getUserGender() == null || dto.getUserBirth() == null || dto.getUserPhone() == null
					|| dto.getUserEmail() == null) {
	
				rttr.addFlashAttribute("msg", "fail2");
				return "redirect:/user/joinForm";
				
			} else {
				UserDTO dtos = service.idCheck(userID);
				if (dtos!=null) {
					rttr.addFlashAttribute("msg", "overlap");
				} else {
					service.userJoin(dto);
					rttr.addFlashAttribute("msg", "success");
				}
			}
		}catch (DataIntegrityViolationException e) {
			System.out.println("???????????? ??????");
			rttr.addFlashAttribute("msg", "fail2");
			return "redirect:/user/joinForm";
		}catch (Exception e) {
			System.out.println("????????? ??????");
			rttr.addFlashAttribute("msg", "overlap");
			return "redirect:/user/joinForm";
		}
		
		
		return "redirect:/";
	}
	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void myPage() throws Exception {
		
	}
	
	@RequestMapping(value = "/information", method = RequestMethod.GET)
	public void information(int userNum, Model model) throws Exception {
		
		model.addAttribute(service.userDetail(userNum));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updateGET(int userNum, Model model) throws Exception {
		model.addAttribute(service.userDetail(userNum));
		System.out.println(userNum);
	}		
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String updatePOST(UserDTO dto,int userNum, Model model, RedirectAttributes rttr) throws Exception {
		
		service.userUpdate(dto);
		rttr.addFlashAttribute("msg", "success");

		return "redirect:/user/myPage?userNum="+userNum;
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String delete(int userNum, HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		service.userDelete(userNum);
		
		HttpSession session = request.getSession();
		session.removeAttribute("user");
		session.removeAttribute("userNum");
		
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/";
	}
	
	
	
}
