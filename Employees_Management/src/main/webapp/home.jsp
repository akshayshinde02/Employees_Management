<%@page import="com.entities.CountEmp" %>
<%@page import="com.entities.CountDesig" %>

<% 

CountEmp ce = new CountEmp();
CountDesig cd = new CountDesig();

long countemp = ce.countEmployees();
long countdesig = cd.countdesig();


%>

<!DOCTYPE html>
<html>
<head>
  <title>Employee Management Dashboard</title>
  <!-- Add Bootstrap CSS link here -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/css/bootstrap.min.css">
  <style>
  
    body {
      background-color: #f0f0f0;
    }
    
    nav {
  background-color: #3498db;
  padding: 10px 0;
}

.navbar {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

.navbar li {
  margin: 0;
  padding: 0;
}

.add-employee-button {
  font-size: 18px;
  font-weight: bold;
  color: #fff;
  padding: 12px 20px;
  border-radius: 5px;
  background-color: #e74c3c;
  transition: background-color 0.3s ease;
}

.add-employee-button:hover {
  background-color: #c0392b;
}

.navbar-brand {
  font-size: 24px;
  font-weight: bold;
  color: #fff;
}
    
    .container {
      padding-top: 20px;
      padding-bottom:20px;
    }
    
    .card {
      border: none;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      background-color: #ffffff;
      padding: 20px;
      text-align: center;
    }
    
    .card-title {
      font-size: 24px;
      font-weight: bold;
      color: #3498db;
    }
    
    .card-number {
      font-size: 36px;
      font-weight: bold;
      color: #e74c3c;
      margin-top: 20px;
    }
    
    .card-icon {
      font-size: 60px;
      color: #3498db;
    }
    
   @media (max-width: 767px) {
      .card {
        margin-bottom: 20px;
      }

      .buttons {
        display: flex;
        flex-direction: column;
        align-items: center;
        gap: 10px;
      }
    }
    
    
  </style>
</head>
<body>

 <nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container">
    <h3>Employee Management System</h3>
      <ul class="navbar-nav">
        <li class="nav-item">
          
          <button type="button" class="btn btn-success " onclick="window.location='create.jsp'"><i class="fas fa-plus"></i> Add Employee</button>
                  
        </li>
      </ul>
    </div>
  </nav>

  <div class="container ">
    <div class="row justify-content-center">
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <i class="fas fa-building card-icon"></i>
          <div class="card-body">
            <h5 class="card-title">Number of Designations</h5>
            <p class="card-number"> <% out.println(countdesig); %></p>
          </div>
        </div>
      </div>
      <div class="col-sm-6 col-md-4">
        <div class="card">
          <i class="fas fa-users card-icon"></i>
          <div class="card-body">
            <h5 class="card-title">Number of Employees</h5>
            <p class="card-number"><% out.println(countemp); %></p>
          </div>
        </div>
      </div>
    </div>
  </div>
  
     <div class="container d-flex justify-content-center my-3">
        
        <div class="buttons">
      
             
             <button type="button" class="btn btn-warning " onclick="window.location='read.jsp'"><i class="fas fa-list"></i> Read</button>
             <button type="button" class="btn btn-info " onclick="window.location='search.jsp'"><i class="fas fa-search"></i> Search</button>
             <button type="button" class="btn btn-info " onclick="window.location='attendence.jsp'"><i class="fas fa-user-check"></i> Attendance</button><br> <br>
             
             <div class="text-center">
         <form id="logoutForm" action="LogoutEmp" method="get">
  			<input type="submit"  class="btn btn-danger " value="Logout">
		</form>
		</div>
 
        </div>
        
    </div>

  <!-- Add Font Awesome CSS link here -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
  <!-- Add Bootstrap JS and Popper.js links here -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
  
 
</body>
</html>



