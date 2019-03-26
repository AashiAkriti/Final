package com.cognizant.educationportal.service;

import java.util.List;

import com.cognizant.educationportal.model.Faculty;

public interface FacultyService {

	public List<Faculty> getFacultys();
	public void saveFaculty(Faculty Cust);

}
