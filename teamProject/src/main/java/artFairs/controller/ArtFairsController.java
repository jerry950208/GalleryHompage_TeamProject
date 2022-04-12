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
		
		//페어정보 가져오기
		ArtFairsDTO dto1 = artFairsService.getAtrFairsView(title);
		//페어진행 추가사진 가져오기
		ArtFairsDTO dto2 = artFairsService.getAtrFairsView_photo(title);
	
		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("dto1", dto1);
		
		// 추가사진 개수에 따라 cnt값 다르게 넘김
		if(dto2.getImg_src3() == null && dto2.getImg_src2() == null) {
			modelAndView.addObject("cnt", 1);
		} else if (dto2.getImg_src3() == null && dto2.getImg_src2() != null){
			modelAndView.addObject("cnt", 2);
		} else {
			modelAndView.addObject("cnt", 3);
		}
		modelAndView.addObject("dto2", dto2);
		modelAndView.addObject("ref", "../artFairs/artFairsView.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}

}
