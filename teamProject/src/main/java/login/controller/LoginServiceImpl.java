package login.controller;

import org.springframework.stereotype.Service;

import login.bean.LoginDTO;
import login.dao.LoginDAO;
import lombok.RequiredArgsConstructor;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package login.controller
 * 
 * @file LoginServiceImpl.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description 로그인, 회원가입, 회원삭제를 위한 LoginServiceImpl Class
 * 
 */

@Service
@RequiredArgsConstructor
public class LoginServiceImpl implements LoginService{

	private final LoginDAO dao;

	@Override
	public LoginDTO login(String id) {
		return dao.login(id);
	}

	@Override
	public int join(LoginDTO dto) {
		return dao.join(dto);
	}

	@Override
	public boolean isExistId(String id) {
		boolean result = false;
		LoginDTO dto = dao.isExistId(id);
		if(dto == null) {
			result = false;
		} else {
			result = true;
		}
		return result;
	}

	@Override
	public int delete(String id) {
		return dao.delete(id);
	}
}
