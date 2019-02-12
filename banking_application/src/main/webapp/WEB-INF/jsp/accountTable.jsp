<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title></title>
</head>
<body>
<table class="table table-striped">
    <thead>
     <tr>
       <th> First Name</th>
       <th> Last Name</th>
       <th>Account No</th>
       <th>Account Type</th>
       <th>Branch</th>
       <th>Current Balance</th>
       <th>Phone</th>
       <th>Address</th>
      </tr>
      
    </thead>
    <tbody>
    <c:forEach var="accounts" items="${accountList}">
    
    <tr>
        <td> ${accounts.firstName }</td> 
        <td>${accounts.lastName}</td>
         <td>${accounts.accountNumber}</td>
          <td>${accounts.accountType}</td>
           <td>${accounts.branch}</td>
            <td>${accounts.balance}</td>
             <td>${accounts.phoneNo}</td>
             <td>${accounts.address}</td>
        
<td> <a href="accountEdit?accountNo=${accounts.accountNumber}" class="btn btn-info btn-sm">edit</a></td>  
      </tr>
     
    </c:forEach>
      
     
    </tbody>
  </table>
</body>
</html>