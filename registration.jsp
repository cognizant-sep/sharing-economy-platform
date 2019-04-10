<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script language="javascript"> 
function G1()                                    
{ 
   
    if(document.RegForm.fname.value =="")                                  
    {
    	alert('Please Enter First Name');
       	
    	document.getElementById('fname').style.color="red";
       	
    	
         return false;
    } 
    
    if(document.RegForm.lname.value =="")                                
    	    {
    	    	
    	    	 alert('Please Enter Last Name');
    	    	 document.getElementById('fname').style.color="red";
    	         return false;
    	    } 
    
    
    if(document.RegForm.age.value =="")                                
    {
    	
    	 alert('Please Enter your Age');
    	 document.getElementById('age').style.color="red";
         return false;
    } 
    
    if(document.RegForm.gender.value =="")                                
    {
    	
    	 alert('Please Enter your gender');
    	 document.getElementById('gender').style.color="red";
         return false;
    } 
    
    if(document.RegForm.gender.value =="")                                
    {
    	
    	 alert('Please Enter your gender');
    	 document.getElementById('gender').style.color="red";
         return false;
    } 
    
    if(document.RegForm.uid.value =="")                                
    {
    	
    	 alert('Please Enter your valid user id');
    	 document.getElementById('uid').style.color="red";
         return false;
    } 
    if(document.RegForm.Password.value =="")                                
    {
    	
    	 alert('Please Enter your Password');
    	 document.getElementById('Password').style.color="red";
         return false;
    } 
    
    return true; 
}</script> 
  
<style> 
G1 {                                         
    margin-left: 70px; 
    font-weight: bold ; 
    float: left; 
    clear: left; 
    width: 100px; 
    text-align: left; 
    margin-right: 10px; 
    font-family:sans-serif,bold, Arial, Helvetica; 
    font-size:14px; 
    border: 1px solid red;
} 
:alert
{
	background: red;
}


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration form</title>

body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button 
{
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}
button:hover {
  opacity:1;
}
/* Extra styles for the cancel button */
.cancelbtn {
  padding: 14px 20px;
  background-color: #f44336;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
  padding: 16px;
}
/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}
/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn, .signupbtn {
     width: 100%;
  }
}
</style>
</head>
<body bgcolor="#ffb366">

<form name="RegForm" action="Registration.do"  method="post"  style="border:1px solid #ccc">
  <div class="container">
    <h1>USER REGISTERATION FORM</h1>
    <p>Please fill in this form to create an account with MOJO BAZZAR.</p>
    <hr>
    <label for="fname"><b>First Name(IN BLOCK LETTERs)</b></label>
    <input type="text" placeholder="Enter First Name" name="fname" >

       <label for="lname"><b>Last Name</b></label>
    <input type="text" placeholder="Enter Last Name" name="lname" >
    
    <label for="age"><b>Age</b></label>
    <input type="text" placeholder="Enter Age" name="age" >
    
     <label for="gender"><b>Gender</b></label>
   <select name="gender">
  <option label="Male">Male</option>
  <option label="Female">Female</option>
  <option label="Transgender">Transgender</option>
</select>


 <p><label for="contactnumber"><b>Contact Number</b></label>
    <input type="text" placeholder="Enter Contact Number" name="contactNum" >
    </p>
    
    
    <label for="uid"><b>User ID</b></label>
    <input type="text" placeholder="Enter User ID" name="uid">
    
    
    <div>
    <label for="psw"><b>Password (8 characters minimum):</b></label>
    <input type="password" id="pass" name="password" minlength="8" >
</div>
    

   

    
    
   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->
    

    <div class="clearfix">
    
      <button type="reset" class="resetbtn">Reset</button>
      <button type="submit" class="signupbtn" onclick="return G1()">Sign Up</button>
   
    </div>
  </div>
</form>


</body>
</html>
