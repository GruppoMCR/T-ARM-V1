package com.gruppomcr.services;

import java.util.List;

import com.gruppomcr.pojos.CaniPojo;

public interface CaniService {

	public List<CaniPojo> recuperaListaCani(String nome, String razza, String sesso);
	
}
