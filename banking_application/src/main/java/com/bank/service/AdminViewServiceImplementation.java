package com.bank.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bank.dao.LoginDao;
import com.bank.dao.UserAccountDao;
import com.bank.model.Account;
import com.bank.model.User;

@Service
public class AdminViewServiceImplementation implements AdminViewService{

	@Autowired
	LoginDao loginDao;
	@Autowired
	UserAccountDao accountDao;
	@Override
	public List<User> getUsersList(String key) {
		// TODO Auto-generated method stub
		return loginDao.findByUsernameAndRole(key,"USER");
	}
	@Override
	public List<Account> getAccounts(int userId) {
		
		return accountDao.findByUserId(userId);
	}
	@Override
	public Account getAccountByAccountNo(long accountNo) {
		
		return (Account) accountDao.findByAccountNumber(accountNo);
	}
	
	
	
	
}
