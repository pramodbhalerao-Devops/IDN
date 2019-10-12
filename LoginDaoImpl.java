package com.idn.customer.login.daoimpl;

import java.util.Iterator;
import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.idn.customer.login.dao.LoginDao;
import com.idn.customer.login.model.Login;

@Repository("loginDao")
public class LoginDaoImpl implements LoginDao {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public boolean loginCustomer(Login login) {
		boolean userCheck = false;
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Login.class);
		List list1 = criteria.list();
		Iterator itr = list1.iterator();
		while (itr.hasNext()) {
			Object obj = itr.next();
			Login login1 = (Login) obj;
			if (login1.getUserName().equalsIgnoreCase(login.getUserName())
					&& login1.getPassword().equalsIgnoreCase(login.getPassword())) {
				userCheck = true;
			}
		}

		return userCheck;
	}

}
