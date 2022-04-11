package galleries.controller;

import galleries.bean.GalleriesDTO;

public interface GalleriesService {
	public int updateAbout(String about_Content);
	public int updateInternship(String about_Content);
	public String selectAbout();
	public String selectInternship();
	
}
