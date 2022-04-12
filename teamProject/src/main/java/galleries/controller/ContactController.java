package galleries.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import galleries.bean.ContactDTO;

@Controller("contactController")
public class ContactController {
	
	@Autowired
	private ContactService contactService;
	
	@RequestMapping("/galleries/contact_write.do")
	public ModelAndView contact_write(HttpServletRequest request) throws Exception {
		request.setCharacterEncoding("UTF-8");
		
		ContactDTO dto = new ContactDTO();
		dto.setName(request.getParameter("contact_Name"));
		dto.setEmail(request.getParameter("contact_Email"));
		dto.setMessage(request.getParameter("contact_Message"));
		
		int result = contactService.insertContact(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("result", result);
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("ref", "../galleries/contect_write.jsp");
		
		modelAndView.setViewName("../main/index.jsp");
		
		return modelAndView;
	}
}
