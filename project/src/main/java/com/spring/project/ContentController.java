package com.spring.project;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.service.ContentService;


@Controller
@RequestMapping("/content/*")
public class ContentController {

	
	private static final Logger logger = LoggerFactory.getLogger(ContentController.class);
	
	@Inject
	private ContentService service;
	
	
	
	@RequestMapping(value = "/ex_recomm", method = RequestMethod.GET)
	public String ex_recomm() throws Exception {

		return "/content/ex_recomm";
	}
	
	@RequestMapping(value = "/ex_recomm_start", method = RequestMethod.GET)
	public String ex_recomm_start() throws Exception {
		
		return "/content/ex_recomm_start";
	}
	
	@RequestMapping(value = "/membership", method = RequestMethod.GET)
	public String membership() throws Exception {
		
		return "/content/membership";
	}
	
	@RequestMapping(value = "/trainer", method = RequestMethod.GET)
	public String trainer() throws Exception {
		
		return "/content/trainer";
	}
	
	@RequestMapping(value = "/gym", method = RequestMethod.GET)
	public String gym() throws Exception {
		
		return "/content/gym";
	}
	
}
