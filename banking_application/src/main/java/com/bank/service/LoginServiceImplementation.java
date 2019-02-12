package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.bank.dao.LoginDao;
import com.bank.model.User;

@Service
public class LoginServiceImplementation implements LoginService {

	@Autowired
	LoginDao loginDao;

	@Override
	public User readData(String username, String password, String role) {
		// System.out.println(loginDao.findOneByUsernameAndPasswordAndRole(username
		// , password,role));
		return loginDao.findOneByUsernameAndPasswordAndRole(username, password, role);

	}

	@Override
	public void deleteData() {
		// TODO Auto-generated method stub

	}

	@Override
	public void updateData() {
		// TODO Auto-generated method stub

	}

	@Override
	public User createData(User user) throws DataIntegrityViolationException {
		return loginDao.save(user);

	}

	@Override
	public List<User> getUsers(String role) {
		
		return loginDao.findByRole(role);
	}

}
