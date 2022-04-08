package galleries.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GalleriesController {
	
	// menu에서 galleries를 클릭했을때 호출
	@RequestMapping("/galleries/galleries_About.do")
	public ModelAndView moveGalleries_About() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_About.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	@RequestMapping("/galleries/galleries_BK_Hannam.do")
	public ModelAndView moveGalleries_BK_Hannam() {

		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_BK_Hannam.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	@RequestMapping("/galleries/galleries_BK_Itaewon.do")
	public ModelAndView moveGalleries_BK_Itaewon() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_BK_Itaewon.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	@RequestMapping("/galleries/galleries_Internship.do")
	public ModelAndView moveGalleries_Internship() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_Internship.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	@RequestMapping("/galleries/galleries_Contact.do")
	public ModelAndView moveGalleries_Contact() {
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_Contact.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
}
