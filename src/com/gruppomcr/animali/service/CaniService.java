package com.gruppomcr.animali.service;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.gruppomcr.animali.dao.Cane;

public interface CaniService{ 
//extends CrudRepository<Cane, Integer> {
	
	void salvaCane(Cane cane);

	List<Cane> recuperaTuttiCani();

	void eliminaCane(String id);

	boolean cercaAnimale(Integer integer);

	void aggiornaCane(Cane cane);
}
