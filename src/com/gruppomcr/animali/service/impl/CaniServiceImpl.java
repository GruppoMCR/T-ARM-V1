package com.gruppomcr.animali.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gruppomcr.animali.Cani;
import com.gruppomcr.animali.dao.Cane;
import com.gruppomcr.animali.service.CaniService;

@Service("caniService")
//@Transactional
public class CaniServiceImpl implements CaniService{

	@Autowired
    private Cani dao;
	
	@Override
	@Transactional
	public void salvaCane(Cane cane) {
		dao.salvaCane(cane);		
	}

	@Override
	public List<Cane> recuperaTuttiCani() {
		List<Cane> listaCani = dao.recuperaTuttiCani();
		return listaCani;
	}

	@Override
	@Transactional
	public void eliminaCane(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Cane cercaAnimale(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	@Transactional
	public void aggiornaCane(Cane cane) {
		// TODO Auto-generated method stub
		
	}

}
