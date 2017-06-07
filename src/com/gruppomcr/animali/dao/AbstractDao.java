package com.gruppomcr.animali.dao;

import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.transaction.annotation.Transactional;


public abstract class AbstractDao {

	@Autowired
	@Qualifier("localSessionFactoryBean")
	private SessionFactory sessionFactory;

	protected Session getSession() {
		
		Session session;

		try {
			session = sessionFactory.getCurrentSession();
			return session;
		} catch (HibernateException e) {
			session = sessionFactory.openSession();
			return session;
		}
	}
	
	@Transactional
	public void persist(Object entity) {
		Session session = getSession();

		Transaction tx = null;
		try {
			tx = session.beginTransaction();
			
			if(entity != null){
				session.save(entity);
			}
			tx.commit();
		} catch (Exception e) {
			if (tx != null)
				tx.rollback();
			throw e;
		}
//		finally {
//			session.flush();
//		}
	}

	public void delete(Object entity) {
		getSession().delete(entity);
	}
}
