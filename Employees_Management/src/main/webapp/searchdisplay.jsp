
<%@page import="com.entities.AddEmployee" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Details</title>
    <link rel="stylesheet" href="styles.css">
</head>

<style>

table {
    width: 100%;
    border-collapse: collapse;
    border: 1px solid #ccc;
}

th, td {
    padding: 10px;
    text-align: left;
    border-bottom: 1px solid #ccc;
}

th {
    background-color: #f2f2f2;
    font-weight: bold;
}

tbody tr:nth-child(even) {
    background-color: #f2f2f2;
}

tbody tr:hover {
    background-color: #ddd;
}



</style>

<script>
var responseMessage = '<%= request.getAttribute("respMsg") %>';
if(responseMessage==='200'){
alert('Success: '+responseMessage+', Successfully Searched');


}
else{
	alert('Success: '+responseMessage+', Enter Valid Searched !');
setTimeout(function() {
    window.location.href = "search.jsp"; // Redirect to the desired page
}, 1000); 
}
    </script>

<body>
    <div class="container">
        <h1>Employee Details</h1>
       
       
        <% AddEmployee emp = (AddEmployee) request.getAttribute("emp"); %>
         <% if(emp == null)  {%>
         
         <p> No Employee Found in Database</p>
       
			
			<% }else{ %>
			
			<table border="1" cellspacing="0">
	
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Father Name</th>
		<th>Salary</th>
		<th>Address</th>
		<th>Email</th>
		<th>Phone</th>
		<th>Designation</th>
		<th>Adhare Number</th>
		
		</tr>     
        <tr>
				<td><%= emp.getId() %></td>
				<td><%= emp.getEmployee_name() %></td>
				<td><%= emp.getEmployee_fathername() %></td>
				<td><%= emp.getSalary() %></td>
				<td><%= emp.getAddress() %></td>
				<td><%= emp.getEmail() %></td>
				<td><%= emp.getPhone() %></td>
				<td><%= emp.getDesignation() %></td>
				<td><%= emp.getAdhar_number() %></td>
				
		</tr>
		</table>
			
    <%} %>
        
       
    
    </div>
    
    
</body>
</html>
