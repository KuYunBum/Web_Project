package com.spring.project;


import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.InbodyDTO;
import com.spring.service.ContentService;
import com.spring.service.UserService;



@Controller
@RequestMapping("/content/*")
public class ContentController {

	
	private static final Logger logger = LoggerFactory.getLogger(ContentController.class);
	
	@Inject
	private ContentService service;
	@Inject
	private UserService us;
	
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.GET)
	public void ex_recommGET() throws Exception {

	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.POST)
	public String ex_recommPOST(HttpServletRequest request, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			return "/content/ex_recomm/ex_recomm_start";
		}
		rttr.addFlashAttribute("msg", "LoginRequired");
		return "redirect:/user/loginForm";
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm_start", method = RequestMethod.GET)
	public void ex_recomm_start() throws Exception {
		
	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm2", method = RequestMethod.GET)
	public void ex_recomm2() throws Exception {
		
	}
	
	@RequestMapping(value = "/membership", method = RequestMethod.GET)
	public void membership() throws Exception {
		
	}
	
	@RequestMapping(value = "/trainer", method = RequestMethod.GET)
	public void trainer() throws Exception {
		
	}
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public void gym() throws Exception {
		
	}
	
	@RequestMapping(value = "/help", method = RequestMethod.GET)
	public void help() throws Exception {
		
	}
	
	// 인바디
	@RequestMapping(value = "/inbody/detail", method = RequestMethod.GET)
	public void inbodyGET(int userNum, Model model) throws Exception {
		
		if((service.detail(userNum))!=null) {
			model.addAttribute(service.detail(userNum));
		}
		
	}
	
	@RequestMapping(value = "/inbody/insert", method = RequestMethod.GET)
	public void inbodyInsertGET(int userNum, Model model) throws Exception {
		
			model.addAttribute(us.userDetail(userNum));
	}
	
	@RequestMapping(value = "/inbody/insert", method = RequestMethod.POST)
	public String inbodyInsertPOST(InbodyDTO dto, int userNum, RedirectAttributes rttr) throws Exception {
		
		service.insert(dto);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/content/inbody/detail?userNum=" + userNum;
	}
	
	@RequestMapping(value = "/inbody/update", method = RequestMethod.GET)
	public void inbodyUpdateGET(int userNum, Model model) throws Exception {
		
		if((service.detail(userNum))!=null) {
			model.addAttribute(service.detail(userNum));
		}
	}
	
	@RequestMapping(value = "/inbody/update", method = RequestMethod.POST)
	public String inbodyUpdatePOST(InbodyDTO dto, int userNum, RedirectAttributes rttr) throws Exception {
		
		service.update(dto);
		rttr.addFlashAttribute("msg", "success");
		
		return "redirect:/content/inbody/detail?userNum=" + userNum;
	}
	
	
}
