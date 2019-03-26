<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Stud-Details</title>
</head>
<body>
<br><br>
StudentId: ${StudPayment.sId}
<br>
student fee Fine: ${StudPayment.feeFine}
<br>
Student Total Fees ${StudPayment.totalFees }
</body>
</html>