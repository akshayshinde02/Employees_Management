<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import = "java.util.List"  %>
<%@page import = "com.entities.DisplayAttendance"%>
<%@page import = "com.entities.Attendance"%>

<%
	DisplayAttendance at = new DisplayAttendance();
	List<Attendance> employee = at.getAttendance();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Attendance</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
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
h1{
	text-align:center;
}



</style>

<body>

<h1 >Employees Attendance Information</h1>

<table border="1" cellspacing="0">
	
		<tr>
		<th>Id</th>
		<th>Name</th>
		<th>Email</th>
		<th>First Half</th>
		<th>Second Half</th>
		
		</tr>
		
		<% for(Attendance emp : employee)  {%>
		
			<tr>
				<td><%= emp.getId() %></td>
				<td><%= emp.getName() %></td>
				<td><%= emp.getEmail() %></td>
				<td><%= emp.getFirst_half() %></td>
				<td><%= emp.getSecond_half() %></td>
				<td>
			
			</tr>
			
		<% } %>
		
		
</table>



</body>

</html>