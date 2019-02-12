package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.bank.dao.LoginDao;
import com.bank.model.User;

public interface LoginService {

	public User readData(String username,String password,String role);

	public void deleteData();
	public void updateData();
	public User createData(User user);
	public List<User> getUsers(String role);
	
	
	
}
