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
				<tr>
					<td>${empId}</td>
					<td>${empName}</td>
					<td>${empLocation}</td>
					<td>${empEmail}</td>
				</tr>
			</tbody>
		</table>

		<div class="row justify-content-md-center">
			<div class="alert alert-success" role="alert">The data has been successfully saved!!</div>
		</div>
		<div class="row justify-content-md-center">
			<a class="btn btn-primary" href="/" role="button">Click here to add more Employees!!</a>
		</div>
		
	</div>


</body>
</html>