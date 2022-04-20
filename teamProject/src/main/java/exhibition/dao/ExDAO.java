package exhibition.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import exhibition.bean.ExDTO;
import exhibition.bean.GroupImgDTO;
import exhibition.bean.GroupInfoDTO;
import exhibition.bean.SoloDTO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class ExDAO {
	
	/*exhibition.jsp*/
	private final SqlSessionTemplate sqlSession;
	
	public List<ExDTO> exList_2220(){
		return sqlSession.selectList("mybatis.exMapper.exList_2220");
	}
	public List<ExDTO> exList_1917(){
		return sqlSession.selectList("mybatis.exMapper.exList_1917");
	}
	public List<ExDTO> exList_1614(){
		return sqlSession.selectList("mybatis.exMapper.exList_1614");
	}
	public List<ExDTO> exList_1311(){
		return sqlSession.selectList("mybatis.exMapper.exList_1311");
	}
	
	public GroupInfoDTO getInfo(int seq) {
		return sqlSession.selectOne("mybatis.exMapper.getInfo", seq);
	}
	public List<GroupImgDTO> getImg(int startNum, int endNum) {
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("startNum", startNum);
		map.put("endNum", endNum);

		return sqlSession.selectList("mybatis.exMapper.getImg", map);
	}
	
	public SoloDTO getSoloInfo(int seq) {
		return sqlSession.selectOne("mybatis.exMapper.getSoloInfo", seq);
	}
}
