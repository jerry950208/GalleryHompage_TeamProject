package login.controller;

import login.bean.LoginDTO;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package login.controller
 * 
 * @file LoginService.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description 로그인, 회원가입, 회원삭제를 위한 LoginService Class
 * 
 */

public interface LoginService {
	public LoginDTO login(String id);
	public int join(LoginDTO dto);
	public boolean isExistId(String id);
	public int delete(String id);
}
