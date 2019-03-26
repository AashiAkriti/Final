package com.cognizant.educationportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.educationportal.dao.FacultyDao;
import com.cognizant.educationportal.model.Faculty;
@Service("FacultyService")
public class FacultyServiceImpl implements FacultyService {
	@Autowired
	FacultyDao dao;
	@Transactional
	public List<Faculty> getFacultys() {
	return dao.getFacultys();	
		
	}
	
	@Transactional
	public void saveFaculty(Faculty Cust) {
		dao.saveFaculty(Cust);
	}

}

