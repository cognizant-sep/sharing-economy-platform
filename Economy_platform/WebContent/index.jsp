<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="css_style.css"/>
<script  language="javascript">
  function openForm() {
  document.getElementById("myForm").style.display = "inline";
  }
function closeForm() {
  document.getElementById("myForm").style.display = "none";
}

</script>



<title>MR. MOJO BAZZAR </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

</style>
</head>
<body>

<div class="header">
<img src="images/png1.png" class="logo"/>
</div>

<div class="navbar">
  <a href="#">Home</a>
  <a href="#">Departments</a>
  <a href="#">Top picks</a>
  
</div>

<div class="row">
  <div class="side">
     <!--<a href="#" class="right open-button" onclick="openForm()" >Login</a>
<div class="form-popup" id="myForm">
  -->
  <form action="LoginFilter.do" class="form-container">
  <div> <h2> ${param.msg}</h2></div>
    <h2 id="errmsg"> ${param.errmsg}</h2>
<h2>Login </h2>
    <label for="uid"><b>User ID</b></label>
    <input type="text" placeholder="Enter User ID" name="uid" required>

    <label for="psw"><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="psw" required>
    <button type="submit" class="btn">Login</button>
    <a href="registration.jsp">
    <button type="button" class="btn user" onclick="closeForm()">New User?</button>
    </a>
     <!--<a style="text-decoration: none;" href="" color="black" ><center> Old Vendor? Login here!</center></a>
     -->
     <button type="button" class="btn vendor" onclick=" closeForm()">Existing Vendor?</button>
     <button type="button" class="btn vendor" onclick=" closeForm()">New Vendor?</button>
  </form>

  <h4>About Us</h4>
  <h4>Contact Us</h4>
  <h4>Help & Support</h4>
  </div>
  <div class="main">
    <h2>HI THERE!!! Looking for a Home Makeover?</h2>
    <h5>Checkout our new range of Home Decors</h5>
     <img src="images/5.jpg" style="width:170px;height:145px;">
      <img src="images/8.jpg" style="width:170px;height:145px;">
       <img src="images/10.jfif" style="width:170px;height:145px;">
       <img src="images/7.jpg" style="width:170px;height:145px;">
       <img src="images/9.jpg" style="width:170px;height:145px;">
       <img src="images/6.jfif" style="width:170px;height:145px;">
       <img src="images/11.jpg" style="width:170px;height:145px;">
       <img src="images/12.jpg" style="width:170px;height:145px;">
       <img src="images/13.jpg" style="width:170px;height:145px;">
       <img src="images/14.jpg" style="width:170px;height:145px;">
       <img src="images/15.jpg" style="width:170px;height:145px;">
       <img src="images/16.jpg" style="width:170px;height:145px;">
    <p>Here at Mr.Mojo Bazzar we promise happy furniture for you. Fulfilling all the needs of your dream house.  </p>
    
<br>
    <h2>Beds</h2>
     <img src="images/18.jpg" style="width:245px;height:195px;">
    <img src="images/22.jpg" style="width:245px;height:195px;">
    <img src="images/21.jpg" style="width:245px;height:195px;">
      <img src="images/23.jpg" style="width:245px;height:195px;">  
<br>
   <h2>Sofas and Loungers</h2>
     <img src="images/24.jpg" style="width:245px;height:195px;">
    <img src="images/25.jpg" style="width:245px;height:195px;">
    <img src="images/26.jpg" style="width:245px;height:195px;">
      <img src="images/27.jpg" style="width:245px;height:195px;"> 
<br>
   <h2>Chairs</h2>
     <img src="images/28.jpg" style="width:245px;height:195px;">
    <img src="images/29.jpg" style="width:245px;height:195px;">
    <img src="images/30.jpg" style="width:245px;height:195px;">
      <img src="images/13.jpg" style="width:245px;height:195px;"> 

<br>
   <h2>Tables</h2>
     <img src="images/31.jpg" style="width:245px;height:195px;">
    <img src="images/33.jfif" style="width:245px;height:195px;">
    <img src="images/34.jpg" style="width:245px;height:195px;">
      <img src="images/35.jpg" style="width:245px;height:195px;"> 
   
<br>
   <h2>Wardrobes</h2>
     <img src="images/36.jpg" style="width:245px;height:195px;">
    <img src="images/37.jpg" style="width:245px;height:195px;">
    <img src="images/38.jpg" style="width:245px;height:195px;">
      <img src="images/39.jpg" style="width:245px;height:195px;">
  </div>
</div>



<div class="footer">
  <h5>@mr.mojobazzar.com</h5>
</div>

</body>
</html>
