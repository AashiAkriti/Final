package com.cognizant.educationportal.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.educationportal.model.Exam;
@Repository("ExamDao")
public class ExamDaoImpl implements ExamDao {
	@Autowired
	SessionFactory sfy1;
		public List<Exam> getExams() {
		Session session1=sfy1.getCurrentSession();
		CriteriaBuilder cb1=session1.getCriteriaBuilder();
		CriteriaQuery<Exam> cq1=cb1.createQuery(Exam.class);
		Root<Exam> root1=cq1.from(Exam.class);
		cq1.select(root1);
		Query query1=session1.createQuery(cq1);
	//	System.out.println("ffff");
		return query1.getResultList();
		}

public void saveExam(Exam Cust) {
		Session session=sfy1.getCurrentSession();
		session.saveOrUpdate(Cust);
		
		
	}
	

}
