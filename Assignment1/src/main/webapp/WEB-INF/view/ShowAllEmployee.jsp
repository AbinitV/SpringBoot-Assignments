<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<title>Document</title>
</head>
<body>
	<div class="container">
		<table class="table table-hover table-bordered">
			<thead>
				<tr>
					<th>Employee Id</th>
					<th>Employee Name</th>
					<th>Employee Location</th>
					<th>Email</th>
				</tr>
			</thead>
			<tbody>
			<c:forEach var="emp" items="${employeeList}">
				<tr>
					<td>${emp.getEmpId()}</td>
					<td>${emp.getEmpFirstName()} ${emp.getEmpLastName()}</td>
					<td>${emp.getEmpAddress()}</td>
					<td>${emp.getEmpEmail()}</td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<div class="row justify-content-md-center">
			<a class="btn btn-primary" href="/" role="button">Click here to add more Employees!!</a>

		</div>
		<div >
		<input type="text" class="form-control" name="searchitem" id="validationCustom03" placeholder="Enter Employee id to search" />
			<a class="btn btn-primary" href="/search" role="button">Click here to search for an employee</a>
		</div>		
	</div>


</body>
</html>