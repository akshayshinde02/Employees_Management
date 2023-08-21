<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Employee Form For Attendance</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 20px;
    }

    form {
      max-width: 400px;
      margin: 0 auto;
      border: 1px solid #ccc;
      padding: 20px;
      border-radius: 5px;
    }

    label {
      display: block;
      margin-bottom: 10px;
    }

    select, input[type="text"] {
      width: 100%;
      padding: 8px;
      margin-bottom: 15px;
      border: 1px solid #ccc;
      border-radius: 4px;
    }

    .btn-group {
      display: flex;
      justify-content: space-between;
    }

    button {
      padding: 10px 15px;
      border: none;
      border-radius: 4px;
      cursor: pointer;
    }

    button[type="submit"] {
      background-color: #4CAF50;
      color: white;
    }

    button[type="close"] {
      background-color: #ccc;
    }
  </style>
</head>
<body>
  <form action="attendence" method="post">
    <label for="emp_id">Employee ID:</label>
    <input type="text" id="emp_id" name="emp_id">

    <label for="emp_name">Name:</label>
    <input type="text" id="emp_name" name="emp_name">

    <label for="emp_email">Email:</label>
    <input type="text" id="emp_email" name="emp_email">

    <label for="first_half">First Half:</label>
    <select id="first_half" name="first_half">
      <option value="present">Present</option>
      <option value="absent">Absent</option>
    </select>

    <label for="second_half">Second Half:</label>
    <select id="second_half" name="second_half">
      <option value="present">Present</option>
      <option value="absent">Absent</option>
    </select>

    <div class="btn-group">
      <button type="submit" onclick="closeForm()">Submit</button>
      <button type="button"  onclick="attendance()">Attendance Display</button>
    </div>
  </form>

 
</body>

<script type="text/javascript">

function closeForm() {
	alert("Attendance Entered Successfully !!!!")
  }

function attendance() {
	var jspPage = "attendancedisp.jsp";
    window.location.href = jspPage;
	//alert("Attendance Entered Successfully !!!!")
  }



</script>
</html>
