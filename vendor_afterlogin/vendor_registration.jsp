<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <head><link rel="stylesheet" type="text/css" href="css_style.css"/></head>
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
  <script>
       function validate() {

              if (document.docReg.firstname.value == "" ) {
                     alert("Please provide your First Name!");
                     document.docReg.firstname.focus();
                     document.docReg.firstname.style.borderColor="red";
                     return false;
              }
              else
                     document.docReg.firstname.style.borderColor="green";
                     
              
              if (!(document.docReg.firstname.value).match(/^[a-zA-Z]+$/)) {
                     alert("Please provide Correct First Name!");
                     document.docReg.firstname.focus();
                     document.docReg.firstname.style.borderColor="red";
                     return false;
              }
              else
                     document.docReg.firstname.style.borderColor="green";
              
              
                     
              
                     
              if (document.docReg.age.value == "") {
                     alert("Please provide your Age!");
                     document.docReg.age.focus();
                     document.docReg.age.style.borderColor="red";
                     return false;
              }else
                     document.docReg.age.style.borderColor="green";

              if (document.docReg.contactno.value == ""
                           || isNaN(document.docReg.contactno.value)
                           || document.docReg.contactno.value.length != 10) {
                     alert("Please provide a valid contact no.(9876543210)");
                     document.docReg.contactno.focus();
                     document.docReg.contactno.style.borderColor="red";
                                         return false;
              }else
                     document.docReg.contactno.style.borderColor="green";

              var email = document.getElementById('emailid');
              var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;
              if (!filter.test(email.value)) {
                     alert('Please provide a valid email address');
                     email.focus();
                     email.style.borderColor="red";
                     email.focus;
                     return false;
              }else
                     document.docReg.emailid.style.borderColor="green";

              if ((docReg.gender[0].checked == false)
                           && (docReg.gender[1].checked == false)) {
                     alert("Please choose your Gender: Male or Female");
                     return false;
              }else
                     document.docReg.gender.style.borderColor="green";
                     
              if (document.docReg.city.value == "") {
                     alert("Please provide your City!");
                     document.docReg.city.focus();
                     document.docReg.city.style.borderColor="red";
                     
                     return false;
              }else
                     document.docReg.city.style.borderColor="green";
                     
              if (document.docReg.state.value == "Choose...") {
                     alert("Please provide your Select State!");
                     document.docReg.state.focus();
                     document.docReg.state.style.borderColor="red";
                     
                     return false;
              }else
                     document.docReg.state.style.borderColor="green";
              
              if (document.docReg.question.value == "Choose...") {
                     alert("Please provide your question!");
                     document.docReg.question.focus();
                     document.docReg.question.style.borderColor="red";
                     
                     return false;
              }else
                     document.docReg.question.style.borderColor="green";
              
              if (document.docReg.answer.value == "") {
                     alert("Please provide your answer!");
                     document.docReg.answer.focus();
                     document.docReg.answer.style.borderColor="red";
                     
                     return false;
              }else
                     document.docReg.answer.style.borderColor="green";
                     
              if (document.docReg.password.value == "") {
                     alert("Please provide your password!");
                     document.docReg.password.focus();
                     document.docReg.password.style.borderColor="red";
                     
                     return false;
              }else
                     document.docReg.answer.style.borderColor="green";

              return true;

       }
</script>
  
<style> 
header {
 
  background-size:cover;
  text-align: center;
  color:black;
  position:relative;
   z-index: 0;
   margin: 0;
    padding: 0px; 
    border: 0;
     outline: 0; 
     font-size: 100%; 
     vertical-align: baseline;
}
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
body{
 
background-size:cover; 
background-image: linear-gradient(rgba(50,62,67,67), rgba(192,192,192,0.3)),url('images/44.jpg');
background-repeat: no-repeat;
}
label{
  color:white;
  
}
img{
  filter: brightness(50%);
}
* {box-sizing: border-box}
/* Full-width input fields */
input[type=text], input[type=password] ,select{
  width: 100%;
  padding: 10px;
  margin: 5px 0 15px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}
 
input[type=text]:focus, input[type=password]:focus {
  background-color: #e5dfda;
  outline: none;
}
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}
/* Set a style for all buttons */
button {
  background-color:#b27943;
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
  background-color: #704b28;
}
/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
  float: left;
  width: 50%;
}
/* Add padding to container elements */
.container {
  width:50%;
  left:25%;
position:absolute;
  padding: 20px;
  background: black;
  opacity:0.78;
  
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
<body  >

    <header>
<br>
<div> <h2> <font color="red">${param.errmsg2}</h2></font></div>
    <h1>Vendor Registration Form</h1>
    <p>Please fill in this form to create an account with Mojo Bazzar.</p>
    </header><br>
     <a href="logout.do">GO BACK</a><br><br>
<form name="RegForm" action="V_SignUpFilter.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
  <div class="container">
    <label for="fname">First Name</label>
    <input type="text" placeholder="Enter First Name in Capital Letters" name="fname" >

       <label for="lname">Last Name</label>
    <input type="text" placeholder="Enter Last Name" name="lname" >
    
    <label for="age">Age</label>
    <input type="text" placeholder="Enter Age" name="age" >
    
     <label for="gender">Gender</label>
   <select name="gender" placeholder="Gender"> 
  <option label="Male">Male</option>
  <option label="Female">Female</option>
  <option label="Transgender">Others</option>
</select>
<label for="contactnumber">Contact Number</label>
    <input type="text" placeholder="Enter Contact Number" name="contactNum" >
    
    <label for="uid">User ID</label>
    <input type="text" placeholder="Enter User ID" name="uid">
  
    <label for="psw">Password</label>
    <input type="password" placeholder="Enter password of minimum 8 characters" id="pass" name="password" minlength="8" >
    
   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->
    

    <div class="clearfix">
     <button type="submit" class="signupbtn" onclick="return G1()"><b>Sign Up</b></button>
      <button type="reset" class="cancelbtn"><b>Reset</b></button>
 
    </div>
  </div>
</form>


</body>
</html>