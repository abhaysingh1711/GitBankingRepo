<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<div class="container">
		<h2>Login Form</h2>

		<p style="color: red;">${ error }</p>

		<form:form action="authentication" modelAttribute="loginform">
			<div class="form-group">
				<label for="username">User name</label>
				<form:input path="username" placeholder="username" id="username"
					class="form-control" />
				<font style="color: red;"><form:errors path="username" >cannot be empty</form:errors></font>

			</div>
			<div class="form-group">
				<label for="password"> Password</label>
				<form:input path="password" placeholder="password" id="password"
					class="form-control" />
				<font style="color: red;"><form:errors path="password" >cannot be empty</form:errors></font>

			</div>
			<div class="form-group">
				<label for="role">Role </label>
				<form:select id="role" path="role" class="form-control">
					<form:option value="ADMIN">ADMIN</form:option>

					<form:option value="USER">USER</form:option>
				</form:select>
			</div>


			<button type="submit" class="btn btn-primary">Login</button>
		</form:form>

	</div>
</body>
</html>