package com.cognizant.educationportal.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.annotations.common.util.impl.Log;
import org.hibernate.criterion.Projections;
import org.hibernate.criterion.Property;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.educationportal.model.Payment;
import com.cognizant.educationportal.model.Student;

@Repository("PaymentDao")
public class PaymentDaoImpl implements PaymentDao {
	
	@Autowired
	SessionFactory sessionFactory;
	
	public List<Payment> getAllPaymentDetails()
	{
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Payment> cq=cb.createQuery(Payment.class);
		Root<Payment> root=cq.from(Payment.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}
	public Payment getStudPaymentDetails(int theId)
	{
		Session session=sessionFactory.getCurrentSession();
		//Payment studPay=session.get(Payment.class, theId);
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<Payment> cq=cb.createQuery(Payment.class);
		/*CriteriaBuilder cb2=session.getCriteriaBuilder();
		CriteriaQuery<Student> cq2=cb2.createQuery(Student.class);
		Root<Student> root2=cq2.from(Student.class);
		cq2.select(root2);*/
		Root<Payment> root=cq.from(Payment.class);
	
		cq.select(root);
		
		cq.where(cb.equal(root.get("sId"), theId));
		TypedQuery<Payment> typed=session.createQuery(cq);
		
		return typed.getSingleResult();
	
		// return em.createQuery("SELECT p FROM Person p", Person.class).getResultList();
		
	}
	public void saveFeeDetails(Payment studfee)
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(studfee);
	}
	
}

