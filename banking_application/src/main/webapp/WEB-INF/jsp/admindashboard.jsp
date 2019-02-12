<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
<style>

</style>
</head>
<body>

<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
  <ul class="navbar-nav">
   <li class="nav-item">
  <a class="nav-link" style="text-decoration:none;color:white;font:20px arial;">Admin ${user.username}</a>
  </li>
   <li class="nav-item active">
      <a class="nav-link" href="#">Home</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="openAccountPage">Open Account</a>
    </li>
    <li class="nav-item">
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

<div class="container-fluid">
 </div>




</body>
</html>