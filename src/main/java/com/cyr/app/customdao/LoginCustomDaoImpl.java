package com.cyr.app.customdao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.stereotype.Repository;

import com.cyr.app.model.FlatBean;
import com.cyr.app.model.FloorBean;
import com.cyr.app.model.Tenant;
@Repository
public class LoginCustomDaoImpl implements LoginCustomDao{
	 
		@PersistenceContext
	    private EntityManager entityManager;

	    @SuppressWarnings("unchecked")
		public List<Tenant> getTenentList() {
	    	String query = "select tenant_name from tb_tenants";
	        return entityManager.createNativeQuery(query).getResultList();
	    }

		@Override
		public List<FloorBean> getFloorList() {
			String query = "select floor_type from tb_floor_type";
	        return entityManager.createNativeQuery(query).getResultList();
		}

		@Override
		public List<FlatBean> getFlatList() {
			String query = "select flat_type from tb_flat_type";
	        return entityManager.createNativeQuery(query).getResultList();
		}
		

}
