package com.bank.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RestController

public class BankController {
	
	@RequestMapping("/")
	public ModelAndView startApp(){
		
		return new ModelAndView("index");
	}

}
