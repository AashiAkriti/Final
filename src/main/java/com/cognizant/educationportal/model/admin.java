package com.cognizant.educationportal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class admin {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id")
	int id;
	@Column(name="firstname")
	String firstName;
	@Column(name="lastname")
	String lastName;
	@Column(name="age",nullable=false)
	int age;
	@Column(name="gender")
	String gender;
	@Column(name="contact_no")
	String contact_no;
	
	@Column(name="email")
	String email;
	@Column(name="password")
	String password;
	@Column(name="associate_id")
	String associate_id;
	public admin(){}
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getContact_no() {
		return contact_no;
	}
	public void setContact_no(String contact_no) {
		this.contact_no = contact_no;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getAssociate_id() {
		return associate_id;
	}
	public void setAssociate_id(String associate_id) {
		this.associate_id = associate_id;
	}
	@Override
	public String toString() {
		return "admin [firstName=" + firstName + ", lastName=" + lastName + ", age=" + age + ", gender=" + gender
				+ ", contact_no=" + contact_no + ", email=" + email + ", password=" + password + ", associate_id="
				+ associate_id + "]";
	}

}
