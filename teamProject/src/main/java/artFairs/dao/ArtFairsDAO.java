package artFairs.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import artFairs.bean.ArtFairsDTO;

@Repository
public class ArtFairsDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
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
