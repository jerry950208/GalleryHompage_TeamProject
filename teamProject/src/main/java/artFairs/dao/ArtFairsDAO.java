package artFairs.dao;

import java.util.List;

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
}
