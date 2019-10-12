package com.idn.customer.login.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.springmodules.validation.bean.conf.loader.annotation.handler.NotEmpty;

@Entity
@Table(name = "login")
public class Login {
	@Id
	@Column(name = "username")
	private String userName;

	@NotEmpty
	@Column(name = "password")
	private String password;

	public String getUserName() {
		return userName;
	}

	public String getPassword() {
		return password;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	
}
