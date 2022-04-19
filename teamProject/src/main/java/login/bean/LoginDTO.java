package login.bean;

import lombok.Data;

/**
 * @project GalleryHompage_TeamProject
 *
 * @package login.bean
 * 
 * @file LoginDTO.java
 * 
 * @author Ezen_ac_Team_1
 * 
 * @date 2022. 4. 19.
 * 
 * @description 회원가입을 위한 LoginBean, use lombok
 * 
 */

@Data
public class LoginDTO {
	private String memname;
	private String memid;
	private String pw;
	private String gender;
	private String email1;
	private String email2;
	private String phone1;
	private String phone2;
	private String phone3;
	private String addr;
}
