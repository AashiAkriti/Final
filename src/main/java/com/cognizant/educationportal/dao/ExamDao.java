package com.cognizant.educationportal.dao;

import java.util.List;

import com.cognizant.educationportal.model.Exam;

public interface ExamDao {
	public List<Exam> getExams();
	public void saveExam(Exam cust);
}
