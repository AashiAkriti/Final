<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core"
    prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%@ page isELIgnored="false" %>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Payment details</title>
</head>
<body>

<br>
<br>
<table border=1>
<c:forEach var="tempStud" items="${StudPayment}">

<tr>
<td><c:out value="${tempStud.sId}" /></td>
<td><c:out value="${tempStud.feeFine}" /></td>
<td><c:out value="${tempStud.lastDate}" /></td>
<td><c:out value="${tempStud.modeOfPayment}" /></td>
<td><c:out value="${tempStud.sBalance}" /></td>
<td><c:out value="${tempStud.totalFees}" /></td>


</tr>
</c:forEach>
</table>
</body>
</html>