package com.cognizant.educationportal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.cognizant.educationportal.model.Course;
import com.cognizant.educationportal.model.Exam;
import com.cognizant.educationportal.model.Faculty;
import com.cognizant.educationportal.model.Payment;
import com.cognizant.educationportal.model.Stream;
import com.cognizant.educationportal.model.Student;
import com.cognizant.educationportal.model.admin;
import com.cognizant.educationportal.service.CourseService;
import com.cognizant.educationportal.service.ExamService;
import com.cognizant.educationportal.service.FacultyService;
import com.cognizant.educationportal.service.PaymentService;
import com.cognizant.educationportal.service.StreamService;
import com.cognizant.educationportal.service.StudentService;
import com.cognizant.educationportal.service.adminservice;

//admin
@Controller 
@RequestMapping("/admin")
public class admincontroller {
	@Autowired
	adminservice adminService;
	@GetMapping("/list")
	public String listCustomer(Model theModel){
		
		List<admin> theadmin=adminService.getAdmins();
		theModel.addAttribute("admin",theadmin);
	   return "http://localhost:8085/project/index.jsp";
		//return "demo";
		
	}

	@GetMapping("/showForm")
	public String showForAdd(Model theModel){
		admin theadmin=new admin();
		theModel.addAttribute("admin", theadmin);
		return "admin-form";
		
	}
	@PostMapping("/saveAdmin")
	public String saveAdmin(@ModelAttribute("admin") admin theadmin){
		adminService.saveAdmin(theadmin);
		return "redirect:/admin/list";
	}
	@GetMapping("/list2")
	public String listAdmin(@RequestParam("username") String name,@RequestParam("password") String em,Model theModel){
		 
		admin theadmin=adminService.getAdmin(name,em);
		
		theModel.addAttribute("admin", theadmin);
	   if(theadmin==null){return "invalid";}
		return "page2";
		
		
	}
	//end admin
	
	//Student
	@Autowired
	StudentService studentService;
	/*
	@GetMapping("/list")
	public String listCustomers(Model theModel)
	{
	
		System.out.println("in line");
		List<Student> theStudents=studentService.getStudents();
		theModel.addAttribute("students", theStudents);
		return "list-students";
		
	}
	*/
	@GetMapping("/showStudent")
	public String showForm(Model theModel) {
		
		Student theStudent=new Student();
		theModel.addAttribute("student_reg", theStudent);
		return "student-info";
	}
	
	@GetMapping("/addStudent")
	public String showFormForAdd(Model theModel) {
		
		Student theStudent=new Student();
		theModel.addAttribute("student_add", theStudent);
		return "add-student";
	}
	
	@PostMapping("/saveStudent")
	public String saveStudent(@ModelAttribute("student_reg") Student theStudent)
	{
		studentService.saveStudent(theStudent);
		return "page2";
	}
	

	@PostMapping("/add_Student")
	public String saveOrAddStudent(@ModelAttribute("student_add") Student theStudent)
	{
		studentService.saveStudent(theStudent);
		return "redirect:/admin/showStudent";
	}
	
	
	
	@GetMapping("/updateForm")
	public String showFormForUpdate(@RequestParam("studentId") int theId , Model theModel)
	{
		Student theStudent=studentService.getStudent(theId);
		theModel.addAttribute("student", theStudent);
		return "student-info";
	}
	
	@GetMapping("/delete")
	public String deleteStudent(@RequestParam("studentId") int theId)
	{
		studentService.deleteStudent(theId);
		return "redirect:/admin/showStudent";
	}
	//end student
	
	//Faculty
	@Autowired
	FacultyService  ser;

	@GetMapping("/list_faculty")	
	public String listFaculty(Model mod){
	List<Faculty> cust=ser.getFacultys();
	mod.addAttribute("Facultys", cust);
	//System.out.println("HAHSHAHASDHAODRHidebgf");
	return "page2";

	}

	@GetMapping("/showFaculty")
	public String showFaculty(Model mod){
	Faculty cust=new Faculty();
	mod.addAttribute("Faculty", cust);
	return "faculty";
	}

	@PostMapping("/saveFaculty")
	public String saveFaculty(@ModelAttribute("Faculty") Faculty cust){
		//System.out.println("ff");
	ser.saveFaculty(cust);
	return "page2";

	}
	//end faculty
	
	//course
	
	@Autowired
	CourseService courseService1;
	StreamService streamService;
	/*
	@GetMapping("/listCourse")
	public String listCourse(Model theModel)
	{
	
		System.out.println("in line");
		List<Course> theCourses=courseService.getCourses();
		theModel.addAttribute("courses", theCourses);
		return "list-courses";
		
	}
	*/
	@GetMapping("/showCourse")
	public String showCourse(Model theModel1) {
		
		Course theCourse=new Course();
		theModel1.addAttribute("course_reg", theCourse);
		return "course-info";
	}
	
	@GetMapping("/addCourse")
	public String showAddCourse(Model theModel1) {
		
		Course theCourse=new Course();
		theModel1.addAttribute("course_add", theCourse);
		return "add-course";
	}
	
	@PostMapping("/saveCourse")
	public String saveCourse(@ModelAttribute("course_reg") Course theCourse)
	{
		courseService1.saveCourse(theCourse);
		return "page2";
	}
	

	@PostMapping("/add_Course")
	public String addCourse(@ModelAttribute("course_add") Course theCourse)
	{
		courseService1.saveCourse(theCourse);
		return "redirect:/admin/showCourse";
	}
	@GetMapping("/showStream")
	public String showStream(Model theModel1) {
		
		Stream theStream=new Stream();
		theModel1.addAttribute("stream_reg", theStream);
		return "stream-info";
	}
	@PostMapping("/saveStream")
	public String saveStream(@ModelAttribute("stream_reg") Stream theStream)
	{
		streamService.saveStream(theStream);
		return "redirect:/admin/showStream";
	}
	
	//end course
	
	//exam
	@Autowired
	ExamService es;

	@GetMapping("/listExam")
	public String listExam(Model mod1){
		//System.out.println("d");
	List<Exam> cust= es.getExams();
	//System.out.println("eft");
	mod1.addAttribute("Exam",cust);
	//System.out.println("ji");
	return "page2";
	}

	@GetMapping("/showExam")
	public String showExam(Model mod){
	Exam cust=new Exam();
	mod.addAttribute("Exam", cust);
	//System.out.println("shpw");
	return "exam-form";
	}

	@PostMapping("/saveExam")
	public String saveExam(@ModelAttribute("Exam") Exam cust){
		//System.out.println("ff");
	es.saveExam(cust);
	return "page2";

	}

	//end exam
	
	//payment
	
	@Autowired
	PaymentService ps;
	
	@GetMapping("/listPay")
	public String listFeeDetails(Model theModel)
	{
	 List<Payment> sPay=ps.getAllPaymentDetails();
     theModel.addAttribute("StudPayment",sPay);
     //System.out.println("aaaa");
	 return "payment-details";
	}
	
	@GetMapping("/showPayment")
	public String showPayment(Model theModel)
	{
		Payment sPay=new Payment();
		theModel.addAttribute("StudPayment",sPay);
		System.out.println("oooo");
		return "payment-form";
	}
	
	@PostMapping("/saveFeeDetails")
	public String saveFeeDetails(@ModelAttribute("StudPay") Payment studfee)
	{
		//System.out.println("rrrr");
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
		//System.out.println("ffff");
		return "payment-option";
	}


	
}
