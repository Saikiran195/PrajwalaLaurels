package com.cyr.app.service;

import java.sql.SQLException;
import java.util.List;

import com.cyr.app.model.ElectricityDetails;
import com.cyr.app.model.FlatBean;
import com.cyr.app.model.FloorBean;
import com.cyr.app.model.OwnerBean;
import com.cyr.app.model.Tenant;
import com.cyr.app.model.TenantsPayment;
import com.cyr.app.model.User;

public interface LoginService {

	public User findByUsernameAndPassword(String username,String password);

	public List<Tenant> getAllTenants() throws SQLException, ClassNotFoundException;
	
	public List<Tenant> getTenentList();
	
	public List<FloorBean> getFloorList();
	
	public List<FlatBean> getFlatList();
	
	public void saveTenant(Tenant tenant);
	
	public void saveRentPayment(TenantsPayment tenantsPayment);
	
	public void saveElectricityPayment(ElectricityDetails electricity);
	
	public void saveOwnerPayment(OwnerBean owner) ;
	
}
