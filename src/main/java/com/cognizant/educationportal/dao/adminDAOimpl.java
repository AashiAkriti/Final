package com.cognizant.educationportal.dao;

import java.util.List;

import javax.persistence.Query;
import javax.persistence.TypedQuery;
import javax.persistence.criteria.CriteriaBuilder;
import javax.persistence.criteria.CriteriaQuery;
import javax.persistence.criteria.Root;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.cognizant.educationportal.model.admin;




@Repository("adminDAO")
public class adminDAOimpl implements adminDAO{
	@Autowired
	SessionFactory sessionFactory;
	public List<admin> getAdmins() {
		Session session=sessionFactory.getCurrentSession();
		CriteriaBuilder cb=session.getCriteriaBuilder();
		CriteriaQuery<admin> cq=cb.createQuery(admin.class);
		Root<admin> root=cq.from(admin.class);
		cq.select(root);
		Query query=session.createQuery(cq);
		return query.getResultList();
	}

	public void saveAdmin(admin theadmin) {
		// TODO Auto-generated method stub
Session currentSession=sessionFactory.getCurrentSession();
		
		currentSession.saveOrUpdate(theadmin);
	}

	/*public admin getCustomer(int theId) {
		Session currentSession=sessionFactory.getCurrentSession();
		admin theadmin=currentSession.get(admin.class, theId);
	
		return theadmin;
	}*/

	public admin getAdmin(String name, String em) {
		Session session=sessionFactory.getCurrentSession();
		//customer theCustomer=session.get(customer.class, theId);
		
		CriteriaBuilder cb=session.getCriteriaBuilder();
		
		CriteriaQuery<admin> cq=cb.createQuery(admin.class);
		
		
		
		//ParameterExpression<Integer> p=cb.parameter(Integer.class,"theId");
		Root<admin> root=cq.from(admin.class);
		cq.select(root);
		cq.where(cb.equal(root.get("associate_id"), name),(cb.equal(root.get("password"), em)));
		TypedQuery<admin> typed=session.createQuery(cq);
		try{
		return typed.getSingleResult();
		}
		catch(Exception e)
		{
			//System.out.println("Invalid");
		//	out.println("<p style='color:red;'>User or password incorrect!</p>");	
			
		}
		return null ;

	}

}
