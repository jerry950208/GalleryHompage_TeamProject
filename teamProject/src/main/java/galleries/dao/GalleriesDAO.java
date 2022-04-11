package galleries.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;


@Repository
public class GalleriesDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public  int updateAbout(String about_Content) {
		return sqlSession.update("mybatis.galleriesMapper.updateAbout", about_Content);
	}
	
	public  int updateInternship(String about_Content) {
		return sqlSession.update("mybatis.galleriesMapper.updateInternship", about_Content);
	}
	
	public  String selectAbout() {
		return sqlSession.selectOne("mybatis.galleriesMapper.selectAbout");
	}
	
	public  String selectInternship() {
		return sqlSession.selectOne("mybatis.galleriesMapper.selectInternship");
	}
}
