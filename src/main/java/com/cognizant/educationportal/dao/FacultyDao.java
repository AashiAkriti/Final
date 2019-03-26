package com.cognizant.educationportal.dao;

import java.util.List;

import com.cognizant.educationportal.model.Faculty;

public interface FacultyDao {
	public List<Faculty> getFacultys();
	public void saveFaculty(Faculty Cust);
}
