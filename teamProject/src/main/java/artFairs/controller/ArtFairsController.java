package artFairs.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.ModelAndView;

import artFairs.bean.ArtFairsDTO;
import lombok.RequiredArgsConstructor;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package artFairs.controller
 * 
 * @file ArtFairsController.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description ArtFairsController, use lombok
 * 
 */

@Controller
@RequiredArgsConstructor
public class ArtFairsController {

	private final ArtFairsService artFairsService;

	@RequestMapping("/artFairs/artFairsMain.do")
	public ModelAndView atrFairsMain(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		List<ArtFairsDTO> list = artFairsService.getAtrFairsMain();
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("list", list);
		modelAndView.addObject("ref", "../artFairs/artFairsMain.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping("/artFairs/artFairsView.do")
	public ModelAndView atrFairsView(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		
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
	
	@RequestMapping("/artFairs/artFairsWriteForm.do")
	public ModelAndView artFairsWriteForm(HttpServletRequest request, HttpServletResponse response) throws Exception {

		ModelAndView modelAndView = new ModelAndView();
		
		modelAndView.addObject("ref", "../artFairs/artFairsWriteForm.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}

	@RequestMapping(value="/artFairs/artFairsWrite.do")
	   public ModelAndView artFairsWrite(MultipartHttpServletRequest request, MultipartFile mainimg_src, MultipartFile detailimg_src,
	                              MultipartFile img_src1, MultipartFile img_src2, MultipartFile img_src3){
	      String filePath = request.getSession().getServletContext().getRealPath("/storage");      
	      System.out.println(filePath);
	      
	      String filesName1 = mainimg_src.getOriginalFilename();
	      String filesName2 = detailimg_src.getOriginalFilename();
	      String filesName3 = img_src1.getOriginalFilename();
	      String filesName4 = img_src2.getOriginalFilename();
	      String filesName5 = img_src3.getOriginalFilename();
	   
	      System.out.println(filesName1);
	      System.out.println(filesName2);
	      System.out.println(filesName3);
	      System.out.println(filesName4);
	      System.out.println(filesName5);
	            
	      
	      File file1 = new File(filePath, filesName1);
	      File file2 = new File(filePath, filesName1);
	      File file3 = new File(filePath, filesName1);
	      File file4 = new File(filePath, filesName1);
	      File file5 = new File(filePath, filesName1);
	      try {
	         FileCopyUtils.copy(mainimg_src.getInputStream(), new FileOutputStream(file1));
	         FileCopyUtils.copy(detailimg_src.getInputStream(), new FileOutputStream(file2));
	         FileCopyUtils.copy(img_src1.getInputStream(), new FileOutputStream(file3));
	         FileCopyUtils.copy(img_src2.getInputStream(), new FileOutputStream(file4));
	         FileCopyUtils.copy(img_src3.getInputStream(), new FileOutputStream(file5));
	      } catch (FileNotFoundException e) {
	         e.printStackTrace();
	      } catch (IOException e) {
	         e.printStackTrace();
	      }
	    
	      ArtFairsDTO dto = new ArtFairsDTO();
	      dto.setTitle(request.getParameter("title"));
	      dto.setAfdate(request.getParameter("afdate"));
	      dto.setInfo_date(request.getParameter("info_date"));
	      dto.setInfo(request.getParameter("info"));
	      dto.setPlace(request.getParameter("place"));
	      dto.setPlace_detail(request.getParameter("place_detail"));
	      dto.setArtists(request.getParameter("artists"));
	      dto.setArtist_name(request.getParameter("artist_name"));
	      
	      dto.setMainimg_src((filePath + "\\" + filesName1));
	      dto.setDetailimg_src((filePath + "\\" + filesName2));
	      dto.setImg_src1((filePath + "\\" + filesName3));
	      dto.setImg_src2((filePath + "\\" + filesName4));
	      dto.setImg_src3((filePath + "\\" + filesName5));
	      
	      int result = artFairsService.insertArtFairs(dto);
	      
	      ModelAndView modelAndView = new ModelAndView();
	      modelAndView.addObject("result", result);
	      modelAndView.addObject("ref", "../artFairs/artFairsWrite.jsp");
	       modelAndView.setViewName("../main/index.jsp");
	      return modelAndView;
	   }
	
	@RequestMapping("/artFairs/artFairsModifyForm.do")
	public ModelAndView artFairsModifyForm(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String title = request.getParameter("title");
		
		ArtFairsDTO dto = artFairsService.getAtrFairsView(title);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("ref", "../artFairs/artFairsModifyForm.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
	
	@RequestMapping("/artFairs/artFairsModify.do")
	public ModelAndView artFairsModify(HttpServletRequest request, MultipartFile[] files){
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String filesName[] = null;
		filesName[0] = files[0].getOriginalFilename();
		filesName[1] = files[1].getOriginalFilename();
		filesName[2] = files[2].getOriginalFilename();
		filesName[3]= files[3].getOriginalFilename();
		filesName[4]= files[4].getOriginalFilename();
		
		for(int i=0; i<files.length; i++) {
			File file = new File(filePath, filesName[i]);
			try {
				FileCopyUtils.copy(files[i].getInputStream(), new FileOutputStream(file));
			} catch (FileNotFoundException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		
		ArtFairsDTO dto_ori = new ArtFairsDTO();
		dto_ori.setTitle(request.getParameter("ori_title"));
		
		ArtFairsDTO dto = new ArtFairsDTO();
		dto.setTitle(request.getParameter("title"));
		dto.setAfdate(request.getParameter("afdate"));
		dto.setInfo_date(request.getParameter("info_date"));
		dto.setInfo(request.getParameter("info"));
		dto.setPlace(request.getParameter("place"));
		dto.setPlace_detail(request.getParameter("place_detail"));
		dto.setArtists(request.getParameter("artists"));
		dto.setArtist_name(request.getParameter("artist_name"));
		dto.setMainimg_src(filesName[0]);
		dto.setDetailimg_src(filesName[1]);
		dto.setImg_src1(filesName[2]);
		dto.setImg_src2(filesName[3]);
		dto.setImg_src3(filesName[4]);
		
		int result = artFairsService.updateArtFairs(dto, dto_ori);		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("ref", "../artFairs/artFairsModify.jsp");
	    modelAndView.setViewName("../main/index.jsp");
		return modelAndView;
	}
}
