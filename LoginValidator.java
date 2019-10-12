package com.idn.customer.login.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.idn.customer.login.model.Login;

@Component
public class LoginValidator implements Validator {

	@Override
	public boolean supports(Class aClass) {
		return Login.class.equals(aClass);
	}

	@Override
	public void validate(Object obj, Errors error) {
		Login login = (Login) obj;
		String userName = login.getUserName();
		String password = login.getPassword();
	 
		ValidationUtils.rejectIfEmptyOrWhitespace(error,  "userName", "userName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(error, "password", "password.required");

	}

}
