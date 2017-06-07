package com.gruppomcr.animali.impl;

import java.util.List;

import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import com.gruppomcr.animali.Cani;
import com.gruppomcr.animali.dao.AbstractDao;
import com.gruppomcr.animali.dao.Cane;

@Repository("caniDao")
public class CaneImpl extends AbstractDao implements Cani {

	@Override
	public void salvaCane(Cane cane) {
//		// Create CriteriaBuilder
//		CriteriaBuilder builder = super.getSession().getCriteriaBuilder();
//
//		// Create CriteriaQuery
//		CriteriaQuery<Cane> criteria = builder.createQuery(Cane.class);
		
		Cane checkCane = super.getSession().get(Cane.class, cane.getId());
		if(checkCane == null){
			persist(cane);
		}
		else{
			System.out.println("GIA ESISTE");
		}
			
	}

	@Override
	public List<Cane> recuperaTuttiCani() {
		Query query = super.getSession().createQuery("from Cane"); 
		List<Cane> list = query.getResultList(); 
		return list;
	}

	@Override
	public void eliminaCane(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Cane cercaAnimale(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void aggiornaCane(Cane cane) {
		// TODO Auto-generated method stub
		
	}

}
