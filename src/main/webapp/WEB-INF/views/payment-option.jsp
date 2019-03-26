<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>payment options</title>
</head>
<body>
 <nav class="navbar navbar-inverse">
    <div class="container-fluid">
      <div class="navbar-header">
        <img src="D:\Final Project\logo2.png"  height=60px >
      </div>
      <ul class="nav navbar-nav">
        <li class="active" ><h4>Welcome Admin</h4></li>
        
      </ul>
     <a href="http://localhost:8085/project/index.jsp"> <button class="btn btn-success navbar-btn" 
     style="float:right;background-color: rgb(7, 173, 118); /* Green */
  border: none;
  border-radius: 12px;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;">Logout</button></a>
    </div>
  </nav>
<input type="button" value="addStudentPaymentDetails" onclick="window.location.href='showPayment';return false;"/>
<br>
<br>
<br>
<input type="button"value="Payment_Details" onclick="window.location.href='listPay';return false;"/>

</body>
</html>