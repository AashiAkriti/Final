<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
 <style>
* {
  box-sizing: border-box;
}
body{
    background-color:
}
input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

input[type=password], input[type=email], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}


input[type=date], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 12px 12px 12px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #eeeeee;
  padding: 20px;
}

.col-25 {
  float: left;
  width: 25%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 75%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}
.head{
    background-image: linear-gradient(rgb(112, 104, 111),#abb6ac);
    padding: 2%;
    text-align: center;
    color:aliceblue;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
}
</style>
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

 <form:form action="saveFeeDetails" method="post" modelAttribute="StudPayment">
<div class="head">
<h1>PAYMENT PAGE</h1>
</div>

<div class="container">

    <div class="row">
      <div class="col-25">
        <label for="id">STUDENT ID</label><br>
      </div>
      <div class="col-75">
        <form:hidden path="sId" />
      </div>
    </div>
    
    <div class="row">
      <div class="col-25">
        <label for="fee_fine">FINE TO PAY</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="fee_fine" path="feeFine" placeholder="Enter fee fine" />
      </div>
    </div>
    <div class="row">
      <div class="col-25">
        <label for="s_balance">BALANCE</label>
      </div>
      <div class="col-75">
        <form:input type="text" id="s_balance" path="sBalance" placeholder="Balance.."/>
      </div>
    </div>
    <div class="row">
        <div class="col-25">
              <label for="mode_of_payemnt">MODE OF PAYMENT</label>
        </div>
        <div class="col-75">
          <form:input type="text" id="mode_of_payemnt" path="modeOfPayment"  placeholder="Mode of Payment"/>
        </div>
    </div>
              <div class="row">
                    <div class="col-25">
                      <label for="total_fees">TOTAL FEES</label>
                    </div>
                    <div class="col-75">
                      <form:input type="text" id="total_fees" path="totalFees" placeholder="Total fees.." maxlength="30"/>
                    </div>
                  </div>    
                  <div class="row">
                    <div class="col-25">
                      <label for="last_payment_date">LAST DATE OF PAYMENT</label>
                    </div>
                    <div class="col-75">
                      <form:input type="date" id="last_payment_date" path="lastDate" placeholder="YYYY-MM-DD"/>
                    </div>
                  </div>    
                  <br>        
    <div class="row">
     <!-- <form:button>submit</form:button> -->
     <input type="submit" value="Submit" onclick="myfun()">
    </div>
    </div>
    </form:form>
</div>
<script>
    function myfun(){
        confirm("Are you sure you want to proceed..");
    }
</script>
</body>
</html>