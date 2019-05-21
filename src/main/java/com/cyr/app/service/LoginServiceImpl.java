package com.cyr.app.service;

import java.sql.SQLException;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.cyr.app.customdao.LoginCustomDao;
import com.cyr.app.dao.ElectricityRepository;
import com.cyr.app.dao.FloorRepository;
import com.cyr.app.dao.LoginRepository;
import com.cyr.app.dao.OwnerRepository;
import com.cyr.app.dao.RentRepository;
import com.cyr.app.dao.TenantRepository;
import com.cyr.app.model.ElectricityDetails;
import com.cyr.app.model.FlatBean;
import com.cyr.app.model.FloorBean;
import com.cyr.app.model.OwnerBean;
import com.cyr.app.model.Tenant;
import com.cyr.app.model.TenantsPayment;
import com.cyr.app.model.User;

@Service
@Transactional
public class LoginServiceImpl implements LoginService{
	

	@Autowired
	private LoginRepository loginRepository;
	
	@Autowired
	private TenantRepository tenantRepository;
	
	/*@Autowired
	private FloorRepository floorRepository;*/
	
	@Autowired
	private LoginCustomDao loginCustomDao;

	@Autowired
	private ElectricityRepository electricityRepository;
	
	@Autowired
	private OwnerRepository ownerRepository;
	
	@Autowired
	private RentRepository rentRepository;
	
	

	public LoginServiceImpl(LoginRepository loginRepository) {
		this.loginRepository = loginRepository;
	}


	public User findByUsernameAndPassword(String username, String password) {
		System.out.println("FindByUsernameAndPassword Method In LoginServiceImpl.......!!");
		return loginRepository.findByUsernameAndPassword(username, password);
	}


	@Override
	public List<Tenant> getAllTenants() throws SQLException, ClassNotFoundException {
		System.out.println("GetAllTenants Method In LoginServiceImpl..........!!");
		List<Tenant>  tenantList = tenantRepository.findByTenentList();
		return tenantList;
	}

	@Override
	public List<Tenant> getTenentList() {
		System.out.println("GetAllTenantList Method In LoginServiceImpl ................!!");
		return loginCustomDao.getTenentList();
	}


	@Override
	public void saveTenant(Tenant tenant) {
		System.out.println("SaveTenant Method In LoginServiceImpl........... ");
		tenantRepository.save(tenant);
		
	}


	@Override
	public void saveRentPayment(TenantsPayment tenantsPayment) {
		System.out.println("SaveRentPayment Method In LoginServiceImpl........... ");
		rentRepository.save(tenantsPayment);
	}


	@Override
	public void saveElectricityPayment(ElectricityDetails electricity) {
		System.out.println("SaveElectricityPayment Method  In LoginServiceImpl........... ");
		electricityRepository.save(electricity);
	}


	@Override
	public void saveOwnerPayment(OwnerBean owner) {
		System.out.println("SaveOwnerPayment Method In LoginServiceImpl........... ");
		ownerRepository.save(owner);
		
	}


	@Override
	public List<FloorBean> getFloorList() {
		System.out.println("GetFloorList Method In LoginServiceImpl ................!!");
		return loginCustomDao.getFloorList();
	}

	@Override
	public List<FlatBean> getFlatList() {
		System.out.println("GetFlatList Method In LoginServiceImpl ................!!");
		return loginCustomDao.getFlatList();
	}




}
