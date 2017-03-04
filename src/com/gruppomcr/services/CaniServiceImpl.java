package com.gruppomcr.services;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.gruppomcr.entities.CaniEntity;
import com.gruppomcr.pojos.CaniPojo;
import com.gruppomcr.repositories.CaniRepository;

@Service
public class CaniServiceImpl implements CaniService{
	
	@Autowired
	private CaniRepository caniRepo;

	@Override
	@Transactional
	public List<CaniPojo> recuperaListaCani(String nome, String razza, String sesso) {
		
		List<CaniEntity> listaCani = caniRepo.findByNomeAndRazzaAndSesso(nome, razza, sesso);
		
		List<CaniPojo> listaCaniPojo = new ArrayList<CaniPojo>();
		
		if(listaCani != null && !listaCani.isEmpty()){
		
			for(CaniEntity entita: listaCani){
				
				listaCaniPojo.add(entita.convertiInPojo());
				
			}
		}
		return listaCaniPojo;
	}

}
