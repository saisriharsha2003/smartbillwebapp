<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	
		<link rel="stylesheet" href="../style.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link rel="icon" href="../assets/icon.png" type="image/icon type">
	    <title>View Bills & Pay</title>
	</head>
	<body>
		<div class="hero">
        <nav>
            <a href="../home.jsp"><img class="logo"
                  src="../assets/logo.png"></a>
            <ul>
              <li><a href="home.jsp">Home</a></li>
              <li><a href="paybill.html">Pay Bill</a></li>
              <li><a href="complaint.html">Register Complaint</a></li>
              <li><a href="complaint_status.html">Complaint Status</a></li>    
            </ul>
            <img src="../assets/user.png" class="user-pic" onclick="toggleMenu()">
            <div class="sub-menu-wrap" id="subMenu">
	        	<div class="sub-menu">
		        	<div class="user-info">
		        		<img src="../assets/user.png" style="width: 80px; height: 80px">
		        		<h2 id="cu_name" style="color:#CCBA78;"></h2>
		        	</div>
		        	<hr>
		        	<a href="#" class="sub-menu-link">
		        		<img src="../assets/edit.png" style="width: 50px; height: 50px">
		        		<p>Edit Profile</p>
		        		<span class="ext">></span>
		        	</a>
		        	<a href="login.jsp" class="sub-menu-link">
		        		<img src="../assets/logout.png" style="width: 50px; height: 50px">
		        		<p>Logout</p>
		        		<span class="ext">></span>
		        	</a>
	        	</div>
        	</div>  
        </nav>
        
      </div>
      	<div class="signup">
	        <div class="container">
	          <div class="title">View Bills & Pay</div>
	         </div>
	  </div>
	
	</body>
</html>