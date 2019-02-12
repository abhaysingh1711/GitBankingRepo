<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
 <script>
  
</script>
</head>
<body>

	<nav class="navbar navbar-expand-sm bg-primary navbar-dark">
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link"
			style="text-decoration: none; color: white; font: 20px arial;">Admin${user.username}</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="adminHome">Home</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="openAccountPage">Open
				Account</a></li>
		<li class="nav-item"><a class="nav-link" href="openRegisterForm">User
				Registeration</a></li>
		<li class="nav-item active"><a class="nav-link" href="#">View
				Account</a></li>
		<li><a class="nav-link" href="logout">Logout</a></li>
	</ul>
	</nav>
	<br>
	<div class="container">
		<div class="row">
			<div class="col-lg-2 text-right">
				<label for="searchBy">Search By:</label>
			</div>
			<div class="col-lg-3">
				<select class="form-control" id="searchBy" name="searchBy">
					<option value="username">Username</option>
					<option value="account">Account Number</option>
					<option value="name">Name</option>
				</select>
			</div>
			<div class="col-lg-4 col-offset-1">
				<input type="text" placeholder="Search.." class="form-control"
					name="search" id="bar" onkeyup="search(this.value)">
			</div>




		</div>
<div id="demo">
   
</div>
<div id="demo1">
   
</div>
		<script>
      function search(str) {
          var xhttp = new XMLHttpRequest();
          var searchBy=document.getElementById("searchBy").value;
          
          
          xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
                  document.getElementById("demo").innerHTML = this.responseText;
                }
          };
          xhttp.open("GET", "searchData?searchBy="+searchBy+"&key="+str, true);
           xhttp.send();
        }
      

      function loadDoc(id) {
          var xhttp = new XMLHttpRequest();
               
          xhttp.onreadystatechange = function() {
          if (this.readyState == 4 && this.status == 200) {
                  document.getElementById("demo1").innerHTML = this.responseText;
                }
          };
          xhttp.open("GET", "viewAccountOfUser?userId="+id, true);
           xhttp.send();
        }
</script>
</body>
</html>