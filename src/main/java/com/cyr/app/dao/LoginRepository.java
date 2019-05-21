package com.cyr.app.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.cyr.app.model.User;

@Repository
public interface LoginRepository extends CrudRepository<User, Integer>{

	public User findByUsernameAndPassword(String username,String password);
	
}
