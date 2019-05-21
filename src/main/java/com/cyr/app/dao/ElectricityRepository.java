package com.cyr.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.ElectricityDetails;

@Repository
public interface ElectricityRepository extends CrudRepository<ElectricityDetails, Integer>{

}
