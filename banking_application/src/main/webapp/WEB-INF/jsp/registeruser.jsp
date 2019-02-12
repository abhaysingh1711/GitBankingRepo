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

<title></title>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
   <li class="nav-item">
  <a class="nav-link" style="text-decoration:none;color:white;font:20px arial;">Admin${user.username}</a>
  </li>
   <li class="nav-item">
      <a class="nav-link" href="adminHome">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="openAccountPage">Open Account</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="#">User Registeration</a>
    </li>
   <li class="nav-item">
      <a class="nav-link" href="adminViewPage">View Account</a>
    </li>
  <li>
  <a class="nav-link" href="logout">Logout</a>
  </li>
  </ul>
</nav>
<br>

   <div class="container">
		<h2>Register Form</h2>
  <h5 style="color:red;"> ${error }</h5>
		<form:form action="register" modelAttribute="registerform">
			<div class="form-group">
				<label for="username">User name</label>
				<form:input path="username" placeholder="username" id="username"
					class="form-control" />
				<font style="color: red;"><form:errors path="username" >Username should be 5 to 10 character long</form:errors></font>

			</div>
			<div class="form-group">
				<label for="password"> Password</label>
				<form:input path="password" placeholder="password" id="password"
					class="form-control" />
				<font style="color: red;"><form:errors path="password" >Password should be 4 to 8 character long</form:errors></font>

			</div>
			<div class="form-group">
				<label for="role">Role </label>
				<form:select id="role" path="role" class="form-control">
					<form:option value="ADMIN">ADMIN</form:option>

					<form:option value="USER">USER</form:option>
				</form:select>
			</div>


			<button type="submit" class="btn btn-primary">register</button>
		</form:form>

	</div>
</body>
</html>