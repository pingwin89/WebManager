<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ page isELIgnored="false" %>
</head>

<body>
<a href="form">add</a>
	<form type="POST" action="delete.html">
	<table border="1" cellspacing="0" cellpadding="10">
	<tr>
		<td>login</td>
		<td>first name</td>
		<td>last name</td>
		<td>birth date</td>
		<td>employed since</td>
		<td>is still employed</td>
		<td>department</td>
		<td>superior</td>
		<td><input type="submit" value="delete selected"/></td>
	</tr>
	<c:forEach items="${employees}" var="employee">
	<tr>
		<td>${employee.login}</td>
		<td>${employee.firstName}</td>
		<td>${employee.lastName}</td>
		<td>${employee.birthDate}</td>
		<td>${employee.employedSince}</td>
		<td>${employee.isStillEmployed}</td>
		<td>${employee.department}</td>
		<td>${employee.superior}</td>
		<td><input type="checkbox" name="${employee.login}"/></td>
	</tr>
	</c:forEach>
	</table>
	</form>
</body>

</html>