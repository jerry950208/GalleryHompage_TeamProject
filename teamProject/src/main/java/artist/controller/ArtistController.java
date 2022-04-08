package artist.controller;

import artist.dto.ArtistDTO;
import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

@Controller
public class ArtistController {

    @Autowired
    ArtistService artistService;
    
    // menu에서 artist 클릭시 함수 동작
    @RequestMapping(value = "/artist/artist.do")
    public ModelAndView artistList(HttpServletRequest request, HttpServletResponse response) throws Exception {
        ModelAndView modelAndView = new ModelAndView();
        
        List<ArtistDTO> list = artistService.getArtistAll();
       
        modelAndView.addObject("list", list);
        modelAndView.addObject("ref", "../artist/artist.jsp");
        modelAndView.setViewName("../main/index.jsp");
        
        return modelAndView;
    }
}
