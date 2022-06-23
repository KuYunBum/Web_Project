package com.spring.project;

import javax.inject.Inject;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spring.dto.BoardDTO;
import com.spring.project.BoardController;
import com.spring.service.BoardService;


@Controller
@RequestMapping("/board/*")
public class BoardController {
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Inject
	private BoardService service;

	
	@RequestMapping(value = "/select", method = RequestMethod.GET)
	public void select(Model model) throws Exception {

	model.addAttribute("list", service.select());
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.GET)
	public void insertGET(BoardDTO dto) throws Exception {
		
	}
	
	@RequestMapping(value = "/insert", method = RequestMethod.POST)
	public String insertPOST(BoardDTO dto, RedirectAttributes rttr) throws Exception {
		
		logger.info(dto.toString());
		
		service.insert(dto);
		
		rttr.addFlashAttribute("msg", "success");
		return "redirect:/board/select";
	}
	
	@RequestMapping(value = "/detail", method = RequestMethod.GET)
	public void detail(@RequestParam("bno") int bno, Model model) throws Exception {
	
		service.viewcnt(bno);
		model.addAttribute(service.detail(bno));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.GET)
	public void updateGET(int bno, Model model) throws Exception {
		model.addAttribute(service.detail(bno));
	}
	
	@RequestMapping(value = "/update", method = RequestMethod.POST)
	public String update(BoardDTO dto, RedirectAttributes rttr) throws Exception {
		
		service.update(dto);
		rttr.addFlashAttribute("msg", "success");
	
		return "redirect:/board/select";
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.POST)
	public String remove(@RequestParam("bno") int bno, RedirectAttributes rttr) throws Exception {
	
		service.delete(bno);
	
		rttr.addFlashAttribute("msg", "success");
	
		return "redirect:/board/select";
	}
}
