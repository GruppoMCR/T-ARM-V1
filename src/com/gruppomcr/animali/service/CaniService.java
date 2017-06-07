package com.gruppomcr.animali.service;

import java.util.List;

import com.gruppomcr.animali.dao.Cane;

public interface CaniService {
	void salvaCane(Cane cane);

	List<Cane> recuperaTuttiCani();

	void eliminaCane(String id);

	Cane cercaAnimale(String id);

	void aggiornaCane(Cane cane);
}
