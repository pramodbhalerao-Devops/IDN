package com.idn.customer.login.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {
	
	  //@RequestMapping(value = { "/", "/home" }, method = RequestMethod.GET)
	@RequestMapping(value = { "/"}, method = RequestMethod.GET)
    public ModelAndView home() {
        return new ModelAndView("home") ;
    }
	

}
