/**
 * 
 */
package com.gruppomcr.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import com.gruppomcr.entities.CaniEntity;

/**
 * @author Edoardo
 *
 */
@Transactional(propagation = Propagation.SUPPORTS)
@Repository
public interface CaniRepository extends CrudRepository<CaniEntity, Integer> {
	
	List<CaniEntity> findByNomeAndRazzaAndSesso(String nome, String razza, String sesso);
	
	@Override
	<S extends CaniEntity> S save(S entity);

	@Override
	<S extends CaniEntity> Iterable<S> save(Iterable<S> entities);

	@Override
	CaniEntity findOne(Integer id);

	@Override
	boolean exists(Integer id);

	@Override
	List<CaniEntity> findAll();

	@Override
	long count();

	@Override
	void delete(Integer id);

	@Override
	void delete(CaniEntity entity);
	
	@Override
	void delete(Iterable<? extends CaniEntity> entities);
	
	
}
