<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<link rel="stylesheet" href="../style.css">
	    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	    <link rel="icon" href="../assets/icon.png" type="image/icon type">
	    <title>Register Complaint</title>
	   
	</head>
	<body>
	
	    <div class="hero">
	      <nav>
            <a href="../home.jsp"><img class="logo"
                  src="../assets/logo.png"></a>
            <ul>
              <li><a href="home.jsp">Home</a></li>
              <li><a href="paybill.html">Pay Bill</a></li>
              <li><a href="register_complaint.jsp">Register Complaint</a></li>
              <li><a href="search_complaint.jsp">Search Complaint</a></li>             
			<li><a href="<%= request.getContextPath() %>/ComplaintStatus">Complaint Status</a></li>
            </ul>
            <img src="../assets/user.png" class="user-pic" onclick="toggleMenu()">
            <div class="sub-menu-wrap" id="subMenu">
	        	<div class="sub-menu">
		        	<div class="user-info">
		        		<img src="../assets/user.png" style="width: 80px; height: 80px">
		        		<h2 id="cu_name" style="color:#CCBA78;"></h2>
		        	</div>
		        	<hr>
		        	<a href="edit_profile.jsp" class="sub-menu-link">
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
          <div class="title" style="margin-bottom: 20px;">File a New Complaint</div>
          <form name='complaint-form' action="<%=request.getContextPath()%>/RegisterComplaintController" method = "post">
            <div class="user-details">
              <div class="input-box">

                <span class="details">Consumer Number</span>
                <input type="text" id="fcno" name = "fcno"
                  placeholder="Enter your Consumer Number" required
                  oninvalid="this.setCustomValidity('Please Enter Consumer Number')"
                  onchange="this.setCustomValidity('')">
              </div>
              <div class="input-box">
                <span class="details">Landmark</span>
                <input type="text" placeholder="Enter your Landmark"
                  required name ="land"
                  oninvalid="this.setCustomValidity('Please Enter Landmark')"
                  onchange="this.setCustomValidity('')">
              </div>
              <div class="input-box">
                <span class="details">Complaint/Service Type</span>

                <select class="drtitle" name="stype">
                  <option value="Default" selected>Select Service Type</option>
                  <option value="Street light related">Street light related</option>
                  <option value="Street light related">Street light related</option>
                  <option value="Street light related">Street light related</option>
                  <option value="Street light related">Street light related</option>
                </select>
              </div>
              <div class="input-box">
                <span class="details">Category</span>

                <select class="drtitle" name = "ccat">
                  <option value="Default" selected>Select Category</option>
                  <option value="Street light not working">Street light not working</option>
                  <option value="Street light damaged">Street light damaged</option>
                  <option value="Street light related</">Street light related</option>
                  <option value="Street light broken">Street light broken</option>
                </select>
              </div>
              
              <div class="input-box">
                <span class="details">Mobile Number</span>
                <input type="text" id='fphno' name = "fphno"
                  placeholder="Enter your Mobile Number" required
                  oninvalid="this.setCustomValidity('Please Enter Mobile Number')"
                  onchange="this.setCustomValidity('')">
              </div>
              <div class="input-box">

                <span class="details">Contact Person</span>
                <input type="text" name = "cpname"
                  placeholder="Contact Person" required
                  oninvalid="this.setCustomValidity('Please Enter Contact Person')"
                  onchange="this.setCustomValidity('')">
              </div>
              <div class="input-box" style="width: 100%">
                <span class="details">Problem Description</span>
                <textarea name="fprob" rows="2" style="width:100%" id="fprob"></textarea>
              </div>
              <div class="input-box" style="width: 100%">
                <span class="details">Address</span>
                <textarea id="faddr" name="faddr" rows="2"  style="width:100%"></textarea>
              </div>
            
            </div>
           <div class="button">
              <input type="submit" id="compButton" value="Submit Complaint" style="margin-bottom: 5px; cursor: pointer;" >
            </div>
            
          </form>
        </div>
      </div>
   
	    <script>
		    let subm = document.getElementById("subMenu");
		    function toggleMenu() {
		    	subm.classList.toggle("open-menu");
		    }
	
		    var name = '<%= (session.getAttribute("consumer_lgname") != null) ? session.getAttribute("consumer_lgname") : "" %>';
      		
      		var c1 = document.getElementById("cu_name");
      		
      		if(c1) c1.textContent = name;
	    </script>
	</body>
</html>