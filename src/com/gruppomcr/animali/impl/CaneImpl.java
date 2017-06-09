package com.gruppomcr.animali.impl;

import java.sql.SQLException;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
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
		Session session = super.getSession();
		try{
		Transaction transaction = session.getTransaction();
		transaction.begin();
		Cane cane = session.load(Cane.class, id);
		transaction.commit();
		}catch(Exception e){
			e.printStackTrace();
		}
		session.flush();
		// TODO Auto-generated method stub
		
	}

	@Override
	public boolean cercaAnimale(Integer id) {
		Session session = super.getSession();
		Cane cane = session.get(Cane.class, id);
		return cane==null ? false : true;
	}

	@Override
	public void aggiornaCane(Cane cane) {
//		Session session = super.getSession();
//		Cane caneDaAggiornare = session.byId(Cane.class).load(cane.getId());
//		cane
	}
}
