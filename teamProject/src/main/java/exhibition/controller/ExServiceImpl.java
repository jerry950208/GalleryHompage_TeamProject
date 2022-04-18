package exhibition.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import exhibition.bean.ExDTO;
import exhibition.bean.GroupImgDTO;
import exhibition.bean.GroupInfoDTO;
import exhibition.bean.SoloDTO;
import exhibition.dao.ExDAO;

@Service
public class ExServiceImpl implements ExService{

	@Autowired
	ExDAO dao;

	@Override
	public List<ExDTO> exList_2220() {
		return dao.exList_2220();
	}

	@Override
	public List<ExDTO> exList_1917() {
		return dao.exList_1917();
	}

	@Override
	public List<ExDTO> exList_1614() {
		return dao.exList_1614();
	}

	@Override
	public List<ExDTO> exList_1311() {
		return dao.exList_1311();
	}



	/*그룹전시*/
	@Override
	public GroupInfoDTO getInfo(int seq) {
		return dao.getInfo(seq);
	}

	@Override
	public List<GroupImgDTO> getImg(int startNum, int endNum) {
		return dao.getImg(startNum, endNum);  
	}

	@Override
	public SoloDTO getSoloInfo(int seq) {
		return dao.getSoloInfo(seq);
	}
	
}
