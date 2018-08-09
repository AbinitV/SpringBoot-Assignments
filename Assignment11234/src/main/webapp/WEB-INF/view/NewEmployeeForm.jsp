<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<div class="jumbotron">
			<div class="row justify-content-md-center">
				<h1>New Employee Form</h1>
			</div>
		</div>
		<div class="row justify-content-md-center">
			<div class="col-md-8 col-md-offset-10">

				<form:form class="needs-validation" novalidate="novalidate" 
				action="/save"	modelAttribute="employee"  method="post">
					<div class="row">
						<div class="col-md-4 mb-3">
							<form:label for="validationCustom01" path="empFirstName">First name*</form:label>
							<form:input path="empFirstName" type="text" class="form-control"
								id="validationCustom01" placeholder="First name" required="required" />
							<div class="invalid-feedback">Please provide a First Name.</div>
						</div>
						<div class="col-md-4 mb-3">
							<form:label for="validationCustom02" path="empLastName">Last name</form:label>
							<form:input type="text" class="form-control" path="empLastName"
								id="validationCustom02" placeholder="Last name" />
						</div>
					</div>

					<div class="form-row">
						<div class="col-md-6 mb-3">
							<form:label for="validationCustom03" path="empEmail">User Name*</form:label>
							<form:input type="text" class="form-control"
								id="validationCustom03" placeholder="Johndoe" path="empEmail"
								required="required" />
							<div class="invalid-feedback">Please provide a valid User
								Name.</div>
						</div>

						<div class="col-md-4 mb-3">
							<label for="validationCustomUsername">Domain</label>
							<div class="input-group">
								<div class="input-group-prepend">
									<span class="input-group-text" id="inputGroupPrepend">@</span>
								</div>
								<input type="text" class="form-control"
									id="validationCustomUsername" placeholder="Username"
									aria-describedby="inputGroupPrepend" value="wipro.com" disabled>
							</div>
						</div>
					</div>

					<div class="form-row">
						<div class="col-md-8 mb-3">
							<form:label for="validationCustom03" path="empId">Employee Id:*</form:label>
							<form:input type="text" path="empId" class="form-control"
								id="validationCustom03" placeholder="Enter an Employee Id"
								required="required" />
							<div class="invalid-feedback">Please provide a Employee Id.</div>
						</div>
					</div>

					<div class="form-row">
						<div class="col-md-8 mb-3">
							<form:label for="validationCustom03" path="empAddress">Location:*</form:label>
							<form:input type="text" class="form-control" path="empAddress"
								id="validationCustom03" placeholder="Enter Employee Location"
								required="required" />
							<div class="invalid-feedback">Please provide a Location.</div>
						</div>
					</div>

					<button type="submit" class="btn btn-success">Submit</button>
					<div class="row justify-content-md-center">
			<a class="btn btn-primary" href="/displayAll" role="button">Click here to display the list of Employees.</a>
		</div>
				</form:form>
				<script>
					// Example starter JavaScript for disabling form submissions if there are invalid fields
					(function() {
						'use strict';
						window
								.addEventListener(
										'load',
										function() {
											// Fetch all the forms we want to apply custom Bootstrap validation styles to
											var forms = document
													.getElementsByClassName('needs-validation');
											// Loop over them and prevent submission
											var validation = Array.prototype.filter.call(forms,function(form) {
																form.addEventListener('submit',function(event) {
																					if (form.checkValidity() === false) {
																						event.preventDefault();
																						event.stopPropagation();
																					}
																					form.classList.add('was-validated');
																				},false);});}, false);})();
				</script>
			</div>
		</div>
	</div>
</body>
</html>