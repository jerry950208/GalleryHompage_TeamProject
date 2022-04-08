package artFairs.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import artFairs.bean.ArtFairsDTO;
import artFairs.dao.ArtFairsDAO;


@Service
public class ArtFairsServiceImpl implements ArtFairsService{
	
	@Autowired
	ArtFairsDAO dao;

	@Override
	public List<ArtFairsDTO> getAtrFairsMain() {
		return dao.getAtrFairsMain();
	}

	@Override
	public ArtFairsDTO getAtrFairsView(String title) {
		return dao.getAtrFairsView(title);
	}
}
