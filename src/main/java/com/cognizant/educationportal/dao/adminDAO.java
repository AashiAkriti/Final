package com.cognizant.educationportal.dao;

import java.util.List;

import com.cognizant.educationportal.model.admin;


public interface adminDAO {
	public List<admin> getAdmins();
	public void saveAdmin(admin theadmin);
	//public admin getCustomer(int theId);
	public admin getAdmin(String name,String em);

}
