package com.gruppomcr.animali;

import java.util.List;

import com.gruppomcr.animali.dao.Cane;

public interface Cani {
	
	void salvaCane(Cane cane);

	List<Cane> recuperaTuttiCani();

	void eliminaCane(String id);

	boolean cercaAnimale(Integer id);

	void aggiornaCane(Cane cane);
}
