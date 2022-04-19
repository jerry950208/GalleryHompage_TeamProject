package login.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import login.bean.LoginDTO;
import lombok.RequiredArgsConstructor;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package login.dao
 * 
 * @file LoginDAO.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description 로그인, 회원가입, 회원 탈퇴를 위한 LoginDAO Class
 * 
 */

@Repository
@RequiredArgsConstructor
public class LoginDAO {

	private final SqlSessionTemplate sqlSession;
	
	public LoginDTO login(String id) {
		return sqlSession.selectOne("mybatis.loginMapper.login", id);
	}
	
	public int join(LoginDTO dto) {
		return sqlSession.insert("mybatis.loginMapper.join", dto);
	}

	public LoginDTO isExistId(String id) {
		return sqlSession.selectOne("mybatis.loginMapper.isExistId", id);
	}

	public int delete(String id) {
		return sqlSession.delete("mybatis.loginMapper.delete", id);
	}
}
