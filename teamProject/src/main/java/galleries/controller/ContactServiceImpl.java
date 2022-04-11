package galleries.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import galleries.bean.ContactDTO;
import galleries.dao.ContactDAO;

@Service
public class ContactServiceImpl implements ContactService {

	@Autowired
	private ContactDAO dao;
	
	
	@Override
	public int insertContact(ContactDTO dto) {
		return dao.insertContact(dto);
	}

}
