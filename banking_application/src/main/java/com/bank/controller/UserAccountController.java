package com.bank.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bank.model.Account;
import com.bank.model.User;
import com.bank.service.AccountService;
import com.bank.service.LoginService;

@RestController
public class UserAccountController {
	@Autowired
    LoginService loginService;
	
	@Autowired
	AccountService accountService;
	
	@RequestMapping(value="/openAccountPage")
	public ModelAndView openAccountForm(@ModelAttribute("accountform") Account account){
		
		//*************code to generate random account no*******************
		
		long randNum=Math.round(Math.random()*100000);
		String str="10101"+randNum;
		long num=Long.parseLong(str);
		account.setAccountNumber(num);
		
		//**********************************************************************
		
		
		List<User> userList =loginService.getUsers("USER");
		return new ModelAndView("createaccount","usersData",userList);
	}
	@RequestMapping(value="/openAccount")
	public ModelAndView openAccount(@Valid @ModelAttribute("accountform") Account account,BindingResult result){
		long randNum=Math.round(Math.random()*100000);
		String str="10101"+randNum;
		long num=Long.parseLong(str);
		account.setAccountNumber(num);
		List<User> userList =loginService.getUsers("USER");
		if(result.hasErrors()){
			
			return new ModelAndView("createaccount","usersData",userList);
		}
		
		accountService.saveAccount(account);
		
		return new ModelAndView("admindashboard");
		
	}
	
}
