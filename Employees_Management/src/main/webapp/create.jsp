<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 8px;
        }

        input[type="text"],
        input[type="date"],
        input[type="number"],
        textarea,
        input[type="tel"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }

        button[type="submit"] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        button[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>

<body>

<div class="container">

	<h1>New Employee Details</h1>
	
	<form method="post" action="add">
	
	<label> Employee Id</label>
	<input type="text" name="id" placeholder="Enter Id "><br>
	
	<label>Employee Name</label>
	<input type="text" name="ename" placeholder="Enter Employee Name "><br>
	
	<label>Father Name</label>
	<input type="text" name="fname" placeholder="Enter Father Name "><br>
	
	<label>Salary</label>
	<input type="text" name="salary" placeholder="Enter Salary "><br>
	
	<label> Address</label>
	<input type="text" name="address" placeholder="Enter Address "><br>
	
	<label>Email</label>
	<input type="text" name="email" placeholder="Enter Email "><br>
	
	<label>Phone</label>
	<input type="text" name="phone" placeholder="Enter Phone Number "><br>
	
	<label>Designation</label>
	<input type="text" name="desig" placeholder="Enter Designation "><br>
	
	<label>Adhar Number</label>
	<input type="text" name="adhar" placeholder="Enter Adhar Number "><br>
	
	
	
	 <button type="submit" >Submit</button>
	  
	</form>


</div>

</body>


<script>



</script>
</html>