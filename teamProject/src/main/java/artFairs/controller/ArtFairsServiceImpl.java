package artFairs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import artFairs.bean.ArtFairsDTO;
import artFairs.dao.ArtFairsDAO;


@Service
public class ArtFairsServiceImpl implements ArtFairsService{
	
	@Autowired
	ArtFairsDAO dao;

	//페어목록가져오기
	@Override
	public List<ArtFairsDTO> getAtrFairsMain() {
		return dao.getAtrFairsMain();
	}

	//페어정보 가져오기
	@Override
	public ArtFairsDTO getAtrFairsView(String title) {
		return dao.getAtrFairsView(title);
	}

	//페어진행 추가사진 가져오기
	@Override
	public ArtFairsDTO getAtrFairsView_photo(String title) {
		return dao.getAtrFairsView_photo(title);
	}
}
