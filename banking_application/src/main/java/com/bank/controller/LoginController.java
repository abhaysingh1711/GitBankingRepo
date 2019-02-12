package com.bank.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.bank.model.User;
import com.bank.service.LoginService;

@RestController
public class LoginController {

	@Autowired
	LoginService loginService;
	
	 //HttpSession session = null;
	 
	@RequestMapping(value = "/login")
	public ModelAndView loginPage(@ModelAttribute("loginform") User user) {

		return new ModelAndView("index");
	}

	@RequestMapping(value="/authentication")
	public ModelAndView getAuthentication(@Valid @ModelAttribute("loginform") User user,BindingResult result){
		
		ModelAndView model=new ModelAndView();
		User userData =loginService.readData(user.getUsername(),user.getPassword(),user.getRole());
		//System.out.println(user.getUsername()+user.getPassword()+user.getRole());
	   
	    
		if(userData!=null){
			model.addObject("username",userData);
			//session.setAttribute("username",userData.getUsername());
			return new ModelAndView("admindashboard","user",userData);
		}
		else{
			return new ModelAndView("index","error","Wrong credentials!");
		}
		
	}
	@RequestMapping(value="/openRegisterForm")
	public ModelAndView openRegisterForm(@ModelAttribute("registerform") User user){
		return new ModelAndView("registeruser");
		
	}
	@RequestMapping(value="/register")
	public ModelAndView userRegistration(@Valid @ModelAttribute("registerform") User user,BindingResult result){
		//String username=(String)session.getAttribute("username");
		//System.out.println(username);
		if(result.hasErrors()){
			return new ModelAndView("registeruser");
		}
		try{
		      loginService.createData(user);
		}
		catch(DataIntegrityViolationException ex){
			return new ModelAndView("registeruser","error","username already exist");
		}
		return new ModelAndView("admindashboard");
		
		
		
		
			
		
	}
	
	@RequestMapping("/adminHome")
	public ModelAndView logout(){
		return new ModelAndView("admindashboard");
	}
	@RequestMapping("/logout")
	public ModelAndView logout(@ModelAttribute("loginform") User user){
		return new ModelAndView("index");
	}
	
}