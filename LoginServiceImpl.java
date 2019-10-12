package com.idn.customer.login.serviceimpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.idn.customer.login.dao.LoginDao;
import com.idn.customer.login.model.Login;
import com.idn.customer.login.service.LoginService;

@Component("loginService")
public class LoginServiceImpl implements LoginService {

	@Autowired
	LoginDao loginDao;

	public LoginServiceImpl() {
	}

	@Override
	@Transactional
	public boolean loginCustomer(Login login) {
		return loginDao.loginCustomer(login);
	}
	 

}
