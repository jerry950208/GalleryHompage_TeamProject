package artFairs.controller;

import java.util.List;

import artFairs.bean.ArtFairsDTO;

public interface ArtFairsService {
	public List<ArtFairsDTO> getAtrFairsMain();
	public ArtFairsDTO getAtrFairsView(String title);
	public ArtFairsDTO getAtrFairsView_photo(String title);
}
