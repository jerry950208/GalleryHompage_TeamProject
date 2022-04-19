package artFairs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import artFairs.bean.ArtFairsDTO;
import lombok.RequiredArgsConstructor;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package artFairs.dao
 * 
 * @file ArtFairsDAO.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description ArtFairs의 글 쓰기, 글 수정, view를 위한 ArtFairDAO Class, use lombok
 * 
 */

@Repository
@RequiredArgsConstructor
public class ArtFairsDAO {
	
	private final SqlSessionTemplate sqlSession;
	
	public List<ArtFairsDTO> getAtrFairsMain() {
		return sqlSession.selectList("mybatis.artFairsMapper.getAtrFairsMain");
	}

	public ArtFairsDTO getAtrFairsView(String title) {
		return sqlSession.selectOne("mybatis.artFairsMapper.getAtrFairsView", title);
	}

	public ArtFairsDTO getAtrFairsView_photo(String title) {
		return sqlSession.selectOne("mybatis.artFairsMapper.getAtrFairsView_photo", title);
	}
	
	public int insertArtFairs(ArtFairsDTO dto) {
		return sqlSession.insert("mybatis.artFairsMapper.insertArtFairs", dto);
	}

	public int updateArtFairs(ArtFairsDTO dto, ArtFairsDTO dto_ori) {
		Map<String, ArtFairsDTO> map = new HashMap<String, ArtFairsDTO>();
		map.put("dto", dto);
		map.put("dto_ori", dto_ori);
		return sqlSession.update("mybatis.artFairsMapper.insertArtFairs", map);
	}
}
