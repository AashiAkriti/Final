package com.cognizant.educationportal.model;

import java.sql.Date;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.Table;

@Entity
@Table(name = "payment_master")
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	int sId;
	@Column(name = "s_balance")
	double sBalance;
	@Column(name = "fee_fine")
	double feeFine;
	@Column(name = "total_fees")
	double totalFees;
	@Column(name = "mode_of_payment")
	String modeOfPayment;
	@Column(name = "last_payment_date")
	Date lastDate;

	/*@ManyToMany
	  @JoinTable(name="student_payment", 
	  joinColumns=@JoinColumn(name="id"),
	  inverseJoinColumns=@JoinColumn(name="id"))
	  private Set<Student> payDetails = new HashSet<Student>();
	
	 public Set<Student> getPayDetails() {
		    return payDetails;
		  }

		  public void setPayDetails(Set<Student> payDetails) {
		    this.payDetails = payDetails;
		  }*/
		  
	public int getsId() {
		return sId;
	}


	public void setsId(int sId) {
		this.sId = sId;
	}


	public double getsBalance() {
		return sBalance;
	}


	public void setsBalance(double sBalance) {
		this.sBalance = sBalance;
	}


	public double getFeeFine() {
		return feeFine;
	}


	public void setFeeFine(double feeFine) {
		this.feeFine = feeFine;
	}


	public double getTotalFees() {
		return totalFees;
	}


	public void setTotalFees(double totalFees) {
		this.totalFees = totalFees;
	}


	public String getModeOfPayment() {
		return modeOfPayment;
	}


	public void setModeOfPayment(String modeOfPayment) {
		this.modeOfPayment = modeOfPayment;
	}


	public Date getLastDate() {
		return lastDate;
	}


	public void setLastDate(Date lastDate) {
		this.lastDate = lastDate;
	}


	public Payment() {
		super();
	}

 @Override
   public String toString()
   {
	   return sId+" "+sBalance+" "+feeFine+" "+lastDate+" "+modeOfPayment+" "+totalFees;
   }
}
