<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html PUBLIC "-//W3C/DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<title>Customer Relationship Management</title>
</head>
<body>

	<div class="container mt-3">

		<h1 class="p-3 mb-2 bg-info text-white" style="text-align: center">CUSTOMER
			RELATIONSHIP MANAGEMENT</h1>
		<hr>

		<form action="/CustomerManagement/save" class="form-inLine"></form>

		<!-- Add a button -->
		<a href="/CustomerManagement/add" class="btn btn-success mb-3"><i
			class="bi bi-person-plus-fill"></i> Add Customer</a>

		<div class="row justify-content-md-center">
			<table class="table table-bordered table-striped">
				<thead class="thead-dark">
					<tr>
						<th style="text-align: center">First Name</th>
						<th style="text-align: center">Last Name</th>
						<th style="text-align: center">Email</th>
						<th style="text-align: center" colspan="2">Action</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${Customers}" var="tempCx">
						<tr>
							<td style="text-align: center"><c:out value="${tempCx.firstName}" /></td>
							<td style="text-align: center"><c:out value="${tempCx.lastName}" /></td>
							<td style="text-align: center"><a href="#" class="link-info"><c:out value="${tempCx.email}" /></a></td>

							<td style="text-align: center">
								<!-- Add update button --> <a
								href="/CustomerManagement/edit/${tempCx.customerId}"
								class="btn btn-info btn-sm"><i class="bi bi-pencil-square"></i>
									Update</a>
							</td>

							<td style="text-align: center">
								<!-- Add delete button --> <a
								href="/CustomerManagement/delete/${tempCx.customerId}"
								class="btn btn-danger btn-sm"
								onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false"><i
									class="bi bi-trash-fill"></i> Delete</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>