package com.cognizant.educationportal.service;

import java.util.List;

import com.cognizant.educationportal.model.Exam;

public interface ExamService {
	public List<Exam> getExams();
	public void saveExam(Exam cust);
}
