<!DOCTYPE html>
<html>
<head>
    <title>Image with Centered Button</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous">
     <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
     <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<style>
body, html {
    margin: 0;
    padding: 0;
    
   background-color: rgb(236, 227, 227);
}

.displayflex{
	display:flex;	
}

.navi{

	background-color: white;

}


.b {
   
    bottom: 300px;
    left: 45%;
    padding: 15px 25px;
    font-size: 16px;
    color: #fff;
    border: none;
    cursor: pointer;
}

h1{
 font-family: Arial, sans-serif;
 padding-top:10px;
    bottom: 300px;
    left: 30%;
    padding-bottom:30px;
    

}

 .div1, .div2 {
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      background-color: #f0f0f0;
      
    }
    
    .div1 {
      margin-right: 10px;
    }
    
    @media(max-width:767px){
    
    	body,html{
    		max-width:100%;
    	
    	}
    	.displayflex{
    	flex-direction:column;
    	}
    	
    	.b{

    	margin-top:20px;
    	width:80%;
    	
    	}
    	
    	
    h1 {
        text-align: center;
    }
    
    .div1 {
        margin-right: 0;
        margin-bottom: 20px;
    }
    
    .div2 {
        margin-top: 20px;
    }
    
    
    .div1, .div2 {
        padding: 10px;
    }

     .div2 img {
        max-width: 100%;
        max-height: 300px; /* Adjust the height as needed to maintain the aspect ratio */
    }
    
    }
      

    
</style>

<body>


<div class="navi">
<h1 class="d-flex justify-content-center "><i class="fas fa-plus"></i> &nbsp Welcome to the Employee Management System Website &nbsp <i class="fas fa-plus"></i></h1>
</div>

<div class="displayflex d-flex justify-content-center ">
<div class="div1">

<h1 class="d-flex justify-content-center mt-5">Employee Management System</h1>
<div class="d-flex justify-content-center mt-5">
<button class="btn btn-dark b " onclick="window.location='login.jsp'">Go to Next Page</button> 
</div>
</div>

<div class="div2">
        
        <img src="images/newhome.jpg" alt="">
        
    </div>
    
    </div>
    
    
</body>
</html>