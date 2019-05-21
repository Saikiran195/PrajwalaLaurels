package com.cyr.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.TenantsPayment;

@Repository
public interface RentRepository extends CrudRepository<TenantsPayment, Integer>{

}
