package com.idn.customer.login.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.idn.customer.login.model.Login;
import com.idn.customer.login.service.LoginService;
import com.idn.customer.login.validator.LoginValidator;

@Controller
@SessionAttributes
public class LoginController {
	@Autowired
	LoginValidator loginValidator;
	
	@Autowired
	LoginService loginService;


	public void setLoginValidator(LoginValidator loginValidator) {
		this.loginValidator = loginValidator;
	}

	public void setLoginService(LoginService loginService) {
		this.loginService = loginService;
	}

	@RequestMapping(value = "/showLoginForm", method = RequestMethod.GET)
	public ModelAndView showLoginForm() {
		ModelAndView mv = new ModelAndView("login");
		mv.addObject("login", new Login());
		return mv;
	}

	@RequestMapping(value = "/login", method = RequestMethod.POST)
	public String loginCustomer(@Valid Login login,
			BindingResult result, Model model) {
		model.addAttribute("login", login);
		loginValidator.validate(login, result);
		if (result.hasErrors()) {
			return "login";
		}
		boolean reg = loginService.loginCustomer(login);
		if(reg){
			return "welcome";
		}

		return "login";

	}
	
	

}
