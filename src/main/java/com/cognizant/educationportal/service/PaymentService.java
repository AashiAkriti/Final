package com.cognizant.educationportal.service;

import java.util.List;

import com.cognizant.educationportal.model.Payment;


public interface PaymentService {

	public List<Payment> getAllPaymentDetails();
	public void saveFeeDetails(Payment studfee);
	public Payment getStudPaymentDetails(int theId);
}
