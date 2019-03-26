package com.cognizant.educationportal.controller;

import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.educationportal.model.Payment;
import com.cognizant.educationportal.service.PaymentService;


@Controller
@RequestMapping("/payment")
public class PaymentController {
	@Autowired
	PaymentService ps;
	
	@GetMapping("/list")
	public String listFeeDetails(Model theModel)
	{
	 List<Payment> sPay=ps.getAllPaymentDetails();
     theModel.addAttribute("StudPayment",sPay);
     System.out.println("aaaa");
	 return "payment-details";
	}
	
	@GetMapping("/showForm")
	public String showFormForAdd(Model theModel)
	{
		Payment sPay=new Payment();
		theModel.addAttribute("StudPayment",sPay);
		System.out.println("oooo");
		return "payment-form";
	}
	
	@PostMapping("/saveFeeDetails")
	public String saveFeeDetails(@ModelAttribute("StudPay") Payment studfee)
	{
		System.out.println("rrrr");
		ps.saveFeeDetails(studfee);
		
		return "index.jsp";
	}
	@GetMapping("/StudPaymentDetails")
	public String studFeeDetails(@RequestParam("theId") int theId,Model theModel){
		 
		Payment studpay=ps.getStudPaymentDetails(theId);
		theModel.addAttribute("StudPayment", studpay);
	   return "stud-details";
		//return "demo";
		
	}
	@GetMapping("/PaymentOption")
	public String paymentOption()
	{
		System.out.println("ffff");
		return "payment-option";
	}

}
