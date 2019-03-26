package com.cognizant.educationportal.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cognizant.educationportal.dao.PaymentDao;
import com.cognizant.educationportal.model.Payment;
@Service("ps")
public class PaymentServiceImpl implements PaymentService {

	@Autowired
	PaymentDao pd;
	@Transactional
	public Payment getStudPaymentDetails(int theId) {
		// TODO Auto-generated method stub
		return pd.getStudPaymentDetails(theId);
	}
	
	@Transactional
	public List<Payment> getAllPaymentDetails()
	{
		return pd.getAllPaymentDetails();
	}
	
	@Transactional
	public void saveFeeDetails(Payment studfee)
	{
		pd.saveFeeDetails(studfee);
	}
}
