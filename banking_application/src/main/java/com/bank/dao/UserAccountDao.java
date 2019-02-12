package com.bank.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.bank.model.Account;
@Repository
public interface UserAccountDao extends CrudRepository<Account,Integer>{

	List<Account> findByUserId(int userId);

	Account findByAccountNumber(long accountNo);

}
