package com.cyr.app.customdao;

import java.util.List;

import com.cyr.app.model.FlatBean;
import com.cyr.app.model.FloorBean;
import com.cyr.app.model.Tenant;

public interface LoginCustomDao {
	
	public List<Tenant> getTenentList();
	
	public List<FloorBean> getFloorList();
	
	public List<FlatBean> getFlatList();

}
