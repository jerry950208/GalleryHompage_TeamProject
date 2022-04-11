package galleries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import galleries.bean.GalleriesDTO;
import galleries.dao.GalleriesDAO;

@Service
public class GalleriesServiceImpl implements GalleriesService {
	
	@Autowired
	private GalleriesDAO dao;
	
	@Override
	public int updateAbout(String about_Content) {
		return dao.updateAbout(about_Content);
	}

	@Override
	public int updateInternship(String about_Content) {
		return dao.updateInternship(about_Content);
	}

	@Override
	public String selectAbout() {
		return dao.selectAbout();
	}

	@Override
	public String selectInternship() {
		return dao.selectInternship();
	}

}
