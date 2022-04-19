package artFairs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import artFairs.bean.ArtFairsDTO;
import artFairs.dao.ArtFairsDAO;
import lombok.RequiredArgsConstructor;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package artFairs.controller
 * 
 * @file ArtFairsServiceImpl.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description ArtFairs의 글 쓰기, 글 수정, view를 위한 ArtFairServiceImpl Class, use lombok
 * 
 */

@Service
@RequiredArgsConstructor
public class ArtFairsServiceImpl implements ArtFairsService{
	
	private final ArtFairsDAO dao;

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

	@Override
	public int insertArtFairs(ArtFairsDTO dto) {
		return dao.insertArtFairs(dto);
	}

	@Override
	public int updateArtFairs(ArtFairsDTO dto, ArtFairsDTO dto_ori) {
		return dao.updateArtFairs(dto, dto_ori);
	}
}
