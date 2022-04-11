package galleries.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestMapping;

import galleries.bean.ContactDTO;

@Repository
public class ContactDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int insertContact(ContactDTO dto) {
		return sqlSession.insert("mybatis.contactMapper.insertContact", dto);
	}
}
