package com.bank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.stereotype.Service;

import com.bank.dao.UserAccountDao;
import com.bank.model.Account;

@Service
public class AccountServiceImplementation implements AccountService{

	@Autowired
	UserAccountDao accountDao;
	
	@Override
	public void saveAccount(Account account) throws DataIntegrityViolationException{
		
		accountDao.save(account);
	}

	
}
