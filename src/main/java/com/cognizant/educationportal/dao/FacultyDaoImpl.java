package com.cognizant.educationportal.dao;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.Query;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.educationportal.model.Exam;
import com.cognizant.educationportal.model.Faculty;
@Repository("FacultyDao")
public class FacultyDaoImpl implements FacultyDao {
	@Autowired
	SessionFactory sfy;
	public List<Faculty> getFacultys() {
		Session session=sfy.getCurrentSession();
		Set<Exam> s=new HashSet<Exam>();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Faculty> cq=cb.createQuery(Faculty.class);
		Root<Faculty> root=cq.from(Faculty.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

	public void saveFaculty(Faculty Cust) {
		Session session=sfy.getCurrentSession();
		session.saveOrUpdate(Cust);
		
		
	}

	

}

