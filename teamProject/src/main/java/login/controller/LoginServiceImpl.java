package login.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import login.bean.LoginDTO;
import login.dao.LoginDAO;

@Service
public class LoginServiceImpl implements LoginService{
	@Autowired
	LoginDAO dao;

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
