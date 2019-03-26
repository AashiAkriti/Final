package com.cognizant.educationportal.dao;

import java.util.List;

import com.cognizant.educationportal.model.Payment;


public interface PaymentDao {
	public Payment getStudPaymentDetails(int theId);
	public void saveFeeDetails(Payment studfee);
	public List<Payment> getAllPaymentDetails();
}
