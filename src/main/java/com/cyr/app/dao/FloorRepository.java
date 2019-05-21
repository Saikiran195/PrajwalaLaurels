package com.cyr.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.FloorBean;

@Repository
public interface FloorRepository extends CrudRepository<FloorBean, Integer>{

	
}
