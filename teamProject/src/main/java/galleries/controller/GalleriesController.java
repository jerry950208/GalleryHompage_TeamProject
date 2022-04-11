package galleries.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class GalleriesController {
	
	@Autowired
	private GalleriesService galleriesService;
	
	// menu에서 galleries를 클릭했을때 호출
	@RequestMapping("/galleries/galleries_About.do")
	public ModelAndView moveGalleries_About() {
		
		String about_Content = galleriesService.selectAbout();
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_About.jsp");
		modelAndView.addObject("about_Content", about_Content);

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
		
		String internship_Content = galleriesService.selectInternship();
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_Internship.jsp");
		modelAndView.addObject("internship_Content", internship_Content);
		
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
	
	@RequestMapping("/galleries/galleries_About_WriteForm.do")
	public ModelAndView galleries_About_WriteForm() {
		
		String about_Content = galleriesService.selectAbout();
		
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("ref", "../galleries/galleries_About_WriteForm.jsp");
		modelAndView.addObject("about_Content", about_Content);
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping("/galleries/galleries_About_Write.do")
	public ModelAndView galleries_About_Write(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		int result = galleriesService.updateAbout(request.getParameter("about_Content"));
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_About_Write.jsp");
		modelAndView.addObject("result", result);
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping("/galleries/galleries_Internship_WriteForm.do")
	public ModelAndView galleries_Internship_WriteForm() {
		
		String internship_Content = galleriesService.selectInternship();
		
		ModelAndView modelAndView = new ModelAndView();

		modelAndView.addObject("ref", "../galleries/galleries_Internship_WriteForm.jsp");
		modelAndView.addObject("internship_Content", internship_Content);
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping("/galleries/galleries_Internship_Write.do")
	public ModelAndView galleries_Internship_Write(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		int result = galleriesService.updateInternship(request.getParameter("internship_Content"));
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../galleries/galleries_Internship_Write.jsp");
		modelAndView.addObject("result", result);
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
}
