package com.bank.service;

import java.util.List;

import com.bank.model.Account;
import com.bank.model.User;

public interface AdminViewService {

	List<User> getUsersList(String key);

	List<Account> getAccounts(int userId);

	Account getAccountByAccountNo(long accountNo);

}
