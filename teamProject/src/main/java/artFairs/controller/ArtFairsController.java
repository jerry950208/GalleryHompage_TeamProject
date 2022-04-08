package artFairs.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import artFairs.bean.ArtFairsDTO;

@Controller
public class ArtFairsController {
	@Autowired
	ArtFairsService artFairsService;

	@RequestMapping(value="/artFairs/artFairsMain.do")
	public ModelAndView atrFairsMain(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<ArtFairsDTO> list = artFairsService.getAtrFairsMain();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("ref", "../artFairs/artFairsMain.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping(value="/artFairs/artFairsView.do")
	public ModelAndView atrFairsView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		System.out.println(title);
		
		ArtFairsDTO dto = artFairsService.getAtrFairsView(title);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("ref", "../artFairs/artFairsView.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}

}
