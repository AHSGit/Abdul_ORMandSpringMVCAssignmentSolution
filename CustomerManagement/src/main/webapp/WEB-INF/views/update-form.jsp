<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<title>Update Customer</title>
</head>

<body>

	<div class="container mt-3">
		<h3 class="p-3 mb-2 bg-info text-white" style="text-align: center">CUSTOMER RELATIONSHIP MANAGEMENT</h3>
		<hr>

		<p class="h4 mb-4">Update Customer</p>

		<form action="/CustomerManagement/update/${customerId}"
			method="POST">

			<input type="hidden" name="id" value="${customerId}">


			<div class="form-inline" style="text-align: center">
				<input type="text" name="firstName" value="${Customers.firstName}"
					class="form-control mb-4 col-4" placeholder="Name">
			</div>


			<div class="form-inline" style="text-align: center">
				<input type="text" name="lastName" value="${Customers.lastName}"
					class="form-control mb-4 col-4" placeholder="Department">
			</div>


			<div class="form-inline" style="text-align: center">
				<input type="text" name="email" value="${Customers.email}"
					class="form-control mb-4 col-4" placeholder="Email">
			</div>


			<button type="submit" class="btn btn-info col-2"><i class="fa fa-save"></i> Save</button>

		</form>

		<hr>
		<a href="/CustomerManagement/">Back to Customers List</a>

	</div>

</body>
</html>