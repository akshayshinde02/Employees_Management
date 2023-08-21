<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Response Delete</title>
</head>
<body>
<script>
var responseMessage = '<%= request.getAttribute("deletesuccess") %>';;
if(responseMessage)
alert(responseMessage+', Successfully Deleted');
    
    </script>
 <script>
        
        setTimeout(function() {
            window.location.href = "read.jsp"; // Redirect to the desired page
        }, 1000); 
    </script>
</body>
</html>
