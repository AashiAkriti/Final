<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<input type="button"value="addAdmin" onclick="window.location.href='showForm';return false;"/>
<br><br>
<table border="1">
<c:forEach var="tempCustomer" items="${admin}">

<tr>
<td><c:out value="${tempCustomer.id}"></c:out></td>
<td><c:out value="${tempCustomer.firstName}"></c:out></td>
<td><c:out value="${tempCustomer.lastName}"></c:out></td>
<td><c:out value="${tempCustomer.age}"></c:out></td>
<td><c:out value="${tempCustomer.gender}"></c:out></td>
<td><c:out value="${tempCustomer.contact_no}"></c:out></td>
<td><c:out value="${tempCustomer.email}"></c:out></td>
<td><c:out value="${tempCustomer.associate_id}"></c:out></td>
<td><c:out value="${tempCustomer.password}"></c:out></td>

</tr>
</c:forEach>
</table>
</body>
</html>