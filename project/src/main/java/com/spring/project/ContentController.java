package com.spring.project;

import java.lang.ProcessBuilder.Redirect;

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

import com.spring.service.ContentService;

import oracle.net.nt.SdpNTAdapter;


@Controller
@RequestMapping("/content/*")
public class ContentController {

	
	private static final Logger logger = LoggerFactory.getLogger(ContentController.class);
	
	@Inject
	private ContentService service;
	
	
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.GET)
	public void ex_recommGET() throws Exception {

	}
	
	@RequestMapping(value = "/ex_recomm/ex_recomm", method = RequestMethod.POST)
	public String ex_recommPOST(HttpServletRequest request, HttpServletResponse response, RedirectAttributes rttr) throws Exception {
		
		HttpSession session = request.getSession();
		System.out.println(session.getAttribute("user"));
		
		if(session.getAttribute("user")!= null) {
			response.sendRedirect("/project/content//ex_recomm/ex_recomm_start");
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
	public String membership() throws Exception {
		
		return "/content/membership";
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
	
}
