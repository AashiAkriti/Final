package com.cognizant.educationportal.model;

import java.util.HashSet;

import javax.persistence.CascadeType;
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
@Table(name="Faculty_Record")
public class Faculty {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="id")
	int fac_id;
	
	@Column(name="Name")
	String fac_name;
	
	@Column(name="Qualifications")
	String fac_qualification;
	
	@Column(name="Email")
	String fac_email;
	
	@Column(name="Number")
	int fac_num;
	
	@Column(name="Address")
	String fac_address;
	
	@Column(name="Experience")
	int fac_exp;
	
	HashSet<Exam> a=new HashSet<Exam>(0);

	public int getFac_id() {
		return fac_id;
	}
	public void setFac_id(int fac_id) {
		this.fac_id = fac_id;
	}
	public String getFac_name() {
		return fac_name;
	}
	public void setFac_name(String fac_name) {
		this.fac_name = fac_name;
	}
	public String getFac_qualification() {
		return fac_qualification;
	}
	public void setFac_qualification(String fac_qualification) {
		this.fac_qualification = fac_qualification;
	}
	public String getFac_email() {
		return fac_email;
	}
	public void setFac_email(String fac_email) {
		this.fac_email = fac_email;
	}
	public int getFac_num() {
		return fac_num;
	}
	public void setFac_num(int fac_num) {
		this.fac_num = fac_num;
	}
	public String getFac_address() {
		return fac_address;
	}
	public void setFac_address(String fac_address) {
		this.fac_address = fac_address;
	}
	public int getFac_exp() {
		return fac_exp;
	}
	public void setFac_exp(int fac_exp) {
		this.fac_exp = fac_exp;
	}
	
	@ManyToMany(cascade=CascadeType.ALL)
	@JoinTable(name="Exam_Phone",joinColumns={@JoinColumn(name="fac_id")},inverseJoinColumns={@JoinColumn(name="exam_id")})
	public HashSet<Exam> getA() {
		return a;
	}
	public void setA(HashSet<Exam> a) {
		this.a = a;
	}
	
	public Faculty() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Faculty [fac_id=" + fac_id + ", fac_name=" + fac_name + ", fac_qualification=" + fac_qualification
				+ ", fac_email=" + fac_email + ", fac_num=" + fac_num + ", fac_address=" + fac_address + ", fac_exp="
				+ fac_exp + "]";
	}
	
}
