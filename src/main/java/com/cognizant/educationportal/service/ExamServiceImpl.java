package com.cognizant.educationportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.educationportal.dao.ExamDao;
import com.cognizant.educationportal.model.Exam;

@Service("ExamService")
public class ExamServiceImpl implements ExamService {
		@Autowired
		ExamDao dao;
		@Transactional
		public List<Exam> getExams() {
			//System.out.println("esi");
		return dao.getExams();	
			
		}
		
		@Transactional
		public void saveExam(Exam cust) {
			dao.saveExam(cust);
		}
}
