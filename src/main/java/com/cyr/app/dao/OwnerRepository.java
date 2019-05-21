package com.cyr.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.OwnerBean;

@Repository
public interface OwnerRepository extends CrudRepository<OwnerBean, Integer>{

}
