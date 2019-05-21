package com.cyr.app.dao;

import java.util.List;

import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.Tenant;

@Repository
public interface TenantRepository extends CrudRepository<Tenant, Integer>{
	
	@Query(value = "select tenant_name from tb_tenants", nativeQuery = true)
	List<Tenant> findByTenentList();

}
