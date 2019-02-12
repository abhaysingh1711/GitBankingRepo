package com.bank.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bank.model.Account;
import com.bank.model.User;
import com.bank.service.AdminViewService;

@RestController
public class AdminViewController {

	@Autowired
	AdminViewService adminViewService;

	@RequestMapping(value = "/adminViewPage")
	public ModelAndView openAdminViewPage() {

		return new ModelAndView("adminview");
	}

	@RequestMapping(value = "/searchData")
	public ModelAndView searchData(@RequestParam String searchBy, @RequestParam String key) {

		if (searchBy.equals("username")) {

			List<User> userList = adminViewService.getUsersList(key);

			ModelAndView model = new ModelAndView("userTable");

			model.addObject("userList", userList);
			return model;
		} else if (searchBy.equals("account")) {

		} else if (searchBy.equals("name")) {

		}
		return new ModelAndView("adminview");
	}

	@RequestMapping(value = "/viewAccountOfUser")
	public ModelAndView viewAccountOfUser(@RequestParam int userId) {

		ModelAndView model = new ModelAndView("accountTable");
		List<Account> accountList = adminViewService.getAccounts(userId);
		model.addObject("accountList", accountList);
		return model;

	}
	
	@RequestMapping(value = "/editAccount")
	public ModelAndView editAccountOfUser(@RequestParam int accountNo,@ModelAttribute("editaccountform") Account account) {

		ModelAndView model = new ModelAndView("accountTable");
		account = (Account) adminViewService.getAccountByAccountNo(accountNo);
		model.addObject("userAccount",account);
		return model;

	}
}
