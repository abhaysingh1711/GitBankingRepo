<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<table class="table table-striped">
    <thead>
     <tr>
       <th>  Username</th>
       
      </tr>
      
    </thead>
    <tbody>
    <c:forEach var="users" items="${userList}">
    <tr>
        <td> ${users.username }</td> 
        
        <td style="float:right"><button type="button" class="btn btn-primary" onClick="loadDoc(${users.userId })" >Open</button></td>  
      </tr>
     
    </c:forEach>
      
     
    </tbody>
  </table>
  
  <div id="demo"></div>
 
</body>
</html>