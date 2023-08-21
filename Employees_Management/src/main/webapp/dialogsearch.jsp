<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Response</title>
</head>
<body>
<script>
var responseMessage = '<%= request.getAttribute("respMsg") %>';
if(responseMessage=='200'){
alert('Success: '+responseMessage+', Successfully Searched');
setTimeout(function() {
    window.location.href = "searchdisplay.jsp"; // Redirect to the desired page
}, 1000); 
}
else{
	alert('Success: '+responseMessage+', Enter Valid Searched !');
setTimeout(function() {
    window.location.href = "search.jsp"; // Redirect to the desired page
}, 1000); 
}
    </script>
 <script>
        
       
    </script>
</body>
</html>
