package com.cognizant.educationportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.educationportal.dao.adminDAO;
import com.cognizant.educationportal.model.admin;

@Service("adminservice")
public class adminServiceImpl implements adminservice{
@Autowired
adminDAO c;
@Transactional
public List<admin> getAdmins() {
		// TODO Auto-generated method stub
	 return c.getAdmins();
	}
@Transactional
public void saveAdmin(admin theadmin) {
		// TODO Auto-generated method stub
	 c.saveAdmin(theadmin);
	}
/*@Transactional
public admin getCustomer(int theId) {
		// TODO Auto-generated method stub
	return c.getCustomer(theId);
	}*/
@Transactional
public admin getAdmin(String name, String em) {
	// TODO Auto-generated method stub
	return c.getAdmin(name, em);
}

}
