package com.cognizant.educationportal.service;

import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.cognizant.educationportal.model.admin;


public interface adminservice {
	@Transactional  
	public List<admin> getAdmins();
	public void saveAdmin(admin theadmin);
	//public admin getCustomer(int theId);
	public admin getAdmin(String name,String em);
}
