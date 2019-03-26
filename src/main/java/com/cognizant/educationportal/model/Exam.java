package com.cognizant.educationportal.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity 
@Table(name="Exam_Record")
public class Exam {
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name="Exam_Id")
	int exam_id;
	
	@Column(name="Course")
	String course_name;

	@Column(name="Semester")
	String sem;

	@Column(name="Start_Date")
	String st_date;

	@Column(name="End_Date")
	String end_date;
	

public int getExam_id() {
	//System.out.println("hhy");
		return exam_id;
	}

	public void setExam_id(int exam_id) {
		this.exam_id = exam_id;
	}

public String getCourse_name() {
		return course_name;
	}

	public void setCourse_name(String course_name) {
		this.course_name = course_name;
	}

public String getSem() {
	return sem;
}

public void setSem(String sem) {
	this.sem = sem;
}

public String getSt_date() {
	return st_date;
}

public void setSt_date(String st_date) {
	this.st_date = st_date;
}

public String getEnd_date() {
	return end_date;
}

public void setEnd_date(String end_date) {
	this.end_date = end_date;
}

public Exam(){
	super();
	//System.out.println("fdfdfdfd");
}

@Override
public String toString() {
	return "Exam [coRurse_Name=" + course_name + ", sem=" + sem + ", st_date=" + st_date + ", end_date=" + end_date
			+ "]";
}

}
