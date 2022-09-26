<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="./BaseStyle.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta charset="UTF-8">
<style>
body {
	background-color: teal;
}

* {
	box-sizing: border-box;
}

p {
	text-align: center;
	font-family: system-ui, -apple-system, BlinkMacSystemFont, 'Segoe UI',
		Roboto, Oxygen, Ubuntu, Cantarell, 'Open Sans', 'Helvetica Neue',
		sans-serif
}

.container {
	margin: auto;
	width: auto;
	padding: 16px;
	background-color: white;
	box-shadow: 20px 20px 20px 0px rgba(0, 0, 0, 0.7);
}
</style>
</head>
<body>
<div class = "container  my-3 bg-dark text-white">
<h2 class="text-centre mb-3">Welcome to Customer Management App</h2>
</div>
	<div class="container mt-3">

		<div class="row">

			<div class="col-md-12"></div>
			

			
				<a href="${pageContext.request.contextPath }/add-customer"
					class="btn btn-outline-success">Add Customer</a>
		

			<table class="table table-hover">
				<thead>
					<tr class ="thead-dark">
						<th scope="col">#</th>
						<th scope="col">First Name</th>
						<th scope="col">Last Name</th>
						<th scope="col">Email id</th>
						<th scope="col">Action</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${customerlist}" var="cust">
						<tr>
							<th scope="row">SD${cust.id}</th>
							<td>${cust.f_name }</td>
							<td>${cust.l_name }</td>
							<td>${cust.email }</td>
							<td><a href="delete/${cust.id}"><i
									class="fas fa-trash-alt text-danger"></i></a>
									
									&nbsp;&nbsp;
									
								<a href="update/${cust.id}"><i
									class="fas fa-user-edit"></i></a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>

		</div>

	</div>


</body>
</html>