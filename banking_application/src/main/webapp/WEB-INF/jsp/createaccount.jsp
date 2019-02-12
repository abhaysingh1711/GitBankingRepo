<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
   <li class="nav-item">
  <a class="nav-link" style="text-decoration:none;color:white;font:20px arial;">Admin${user.username}</a>
  </li>
   <li class="nav-item">
      <a class="nav-link" href="adminHome">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Open Account</a>
    </li>
    <li class="nav-item active">
      <a class="nav-link" href="openRegisterForm">User Registeration</a>
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
		<h2>Open account form</h2>
		<form:form action="openAccount" modelAttribute="accountform">
			<div class="form-group">
				<label for="seluser">Select User</label>
				<form:select class="form-control" id="seluser" path="userId">

					<c:forEach var="user" items="${usersData}">
						<form:option value="${user.userId}">
							${ user.username}
						</form:option>

					</c:forEach>


				</form:select>
			</div>
			<div class="form-group">
				<label for="fname">First Name</label>
				<form:input class="form-control" id="fname"
					placeholder="Enter First Name" path="firstName" />
				<font style="color: red"><form:errors path="firstName" /></font>
			</div>
			<div class="form-group">
				<label for="lname">Last Name</label>
				<form:input class="form-control" id="lname"
					placeholder="Enter Last Name" path="lastName" />
				<font style="color: red"><form:errors path="lastName" /></font>
			</div>
			<div class="form-group">
				<label for="accNo">Account No</label>
			<form:input class="form-control" id="accNo"
					 path="accountNumber" disabled="true" />
			</div>
			<div class="form-group">
				<label for="acctype">Account Type</label>
				<form:select class="form-control" id="acctype" path="accountType">
					<form:option value="saving">Saving Account</form:option>
					<form:option value="current">Current Account</form:option>
				</form:select>
			</div>

			<div class="form-group">
				<label for="branch"> Select Branch</label>
				<form:select class="form-control" id="branch" path="branch">
					<form:option value="branch1">Branch1</form:option>
					<form:option value="branch2">Branch2</form:option>
					<form:option value="branch3">Branch3</form:option>
					<form:option value="branch4">Branch4</form:option>

				</form:select>
			</div>
			<div class="form-group">
				<label for="address">Address</label>
				<form:input class="form-control" id="address"
					placeholder="enter address" path="address" />
				<font style="color: red"><form:errors path="address">Address cannot be empty</form:errors></font>
			</div>
			<div class="form-group">
				<label for="balance">Initial Deposit amount</label>
				<form:input type="number" class="form-control" id="balance"
					placeholder="enter initial amount" path="balance" value="0.00" />
				<font style="color: red"><form:errors path="balance"></form:errors></font>

			</div>

			<div class="form-group">
				<label for="phoneNo">Phone No.</label>
				<form:input type="number" class="form-control" id="phoneNo"
					placeholder="enter phone no" path="phoneNo" />
				<font style="color: red"><form:errors path="phoneNo" >enter a valid number of length 10 digit</form:errors></font>
			</div>


			<button type="submit" class="btn btn-primary">Create</button>
		</form:form>
	</div>
</body>
</html>