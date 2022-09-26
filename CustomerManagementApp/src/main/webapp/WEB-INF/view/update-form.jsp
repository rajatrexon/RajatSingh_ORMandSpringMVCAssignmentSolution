<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>



<meta charset="UTF-8">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="./BaseStyle.jsp"%>
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

	<div class="container  my-3 bg-dark text-white">

		<h1>Update the Customer Detail</h1>

	</div>

	<div class ="container">
		<div class="row">
			<div class="col-md-6 offset md-3">


				<form action="${pageContext.request.contextPath }/handle-customer"
					method="post">
					<input type="hidden" value="${customer.id }" name="id">
					<div class="form-group">
						<label for="f_name">First Name</label> <input type="text"
							class="form-control" id="f_name" name="f_name"
							placeholder="First Name" value="${customer.f_name }"> <label
							for="l_name">last Name</label> <input type="text"
							class="form-control" id="l_name" name="l_name"
							placeholder="Last Name" value="${customer.l_name }"> <label
							for="email">Email id</label> <input type="text"
							class="form-control" id="email" name="email"
							placeholder="Enter Customer email" value="${customer.email }">
					</div>

					<div class="container text-centre">
						<a href="${pageContext.request.contextPath }/"
							class="btn btn-outline-danger">Back</a>
						<button type="submit" class="btn btn-primary">Update
							Customer</button>
					</div>

				</form>
			</div>
		</div>
	</div>

</body>
</html>