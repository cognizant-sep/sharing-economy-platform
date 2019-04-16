<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import="v_model.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<link rel="stylesheet" type="text/css" href="css_style.css"/>
<link rel="stylesheet" type="text/css" href="vendor_css.css"/>

<title>MR. MOJO BAZZAR </title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!---------------------------------------------------------------------------------------------------------------------------------------------------------->

<script language="javascript" type="text/javascript">
  $("a").click(function() { // do stuff
   return false; });
</script>

<!------------------------------------------------------------------------------------------------------------------------------------------------------>

<script language="javascript " type="text/javascript">
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
}
 function typeSelectCheck(nameSelect)
{
  		{
        typeOptionValue = document.getElementById("getFname").value;
        if("1" == nameSelect.value){
            document.getElementById("proDivCheck").style.display = "block";
        }
        else{  document.getElementById("proDivCheck").style.display = "none";
        
         document.getElementById("productformDivCheck").style.display = "none";
         document.getElementById("product1formDivCheck").style.display = "none";
         document.getElementById("serviceformDivCheck").style.display = "none";
         document.getElementById("service1formDivCheck").style.display = "none";
        }
        if("2" == nameSelect.value){
            document.getElementById("serDivCheck").style.display = "block";
        }
        else{  document.getElementById("serDivCheck").style.display = "none";
        
         document.getElementById("productformDivCheck").style.display = "none";
         document.getElementById("product1formDivCheck").style.display = "none";
         document.getElementById("serviceformDivCheck").style.display = "none";
         document.getElementById("service1formDivCheck").style.display = "none";
        
        }
    }
}
function form1SelectCheck(nameSelect1)
{
  		{
        typeOptionValue = document.getElementById("product").value;
        if("3" == nameSelect1.value || "4" == nameSelect1.value|| "5" == nameSelect1.value|| "6" == nameSelect1.value|| "7" == nameSelect1.value||"add" == nameSelect1.value)
        {
            document.getElementById("productformDivCheck").style.display = "block";
        }
        else{  document.getElementById("productformDivCheck").style.display = "none";}
       if("8" == nameSelect1.value)
        {
            document.getElementById("product1formDivCheck").style.display = "block";
        }
        else{  document.getElementById("product1formDivCheck").style.display = "none";}
    }
}
function form2SelectCheck(nameSelect1)
{
  		{
        typeOptionValue = document.getElementById("service").value;
        if("polish" == nameSelect1.value || "install" == nameSelect1.value|| "design" == nameSelect1.value|| "assemble" == nameSelect1.value||"ad" == nameSelect1.value)
        {
            document.getElementById("serviceformDivCheck").style.display = "block";
        }
        else{  document.getElementById("serviceformDivCheck").style.display = "none";}
       if("another" == nameSelect1.value)
        {
            document.getElementById("service1formDivCheck").style.display = "block";
        }
        else{  document.getElementById("service1formDivCheck").style.display = "none";}
    }
}
</script>

<!---------------------------------------------------------------------------------------------------------------------------------------------------------->

<style>
.target {
    width:50%;
    overflow: hidden;
    left:25%;
    height:100%;
    /*position: static;*/
  -ms-flex: 70%;
  flex: 70%;
  background-color: white;
  padding: 20px;
  background-size:cover;
/*background-image: linear-gradient(rgba(0,10,30,0.6), rgba(192,192,192,0.3));*/
/*background-repeat: no-repeat;*/
}
body{
  background-color: "#00b300"
}
.target > div {
    display:none;
}
.target > div:target{
    display:inline;
}
a:link {
  text-decoration: none;
}
.side a:link, .side a:visited {
  background-color:#595959;
  color: white;
  padding: 10px 15px;
  width: 100%;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}
.side a:hover, .side a:active {
  background-color:grey;
  color: black;
}
.navbar a {
  float: left;
  display: block;
  color: white;
  text-align: center;
  padding: 14px 20px;
  text-decoration: none;
}
.row{
   text-decoration: none;
}
.container {
  width:50%;
  height: 100%;
  /*left:50%;*/
  position:relative;
  display:table;
  padding: 20px;
  background: black;
  opacity:0.78;
  /*z-index: 9;*/
}
 .header{
  position: static;
}
hr{
  border-top: 0;
  border-width: 5px;
  border-color: black;
}
</style>

<!-------------------------------------------------------------------------------------------------------------------------------------------------------->

</head>

<%
/* String unm = request.getAttribute("username").toString();
request.getSession().setAttribute("uname",unm);
 */

VendorInfo user=(VendorInfo)request.getAttribute("user");
request.getSession().setAttribute("user", user);
System.out.println("user checked");

%>



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
    <a href="#eprd">View Personal Details </a><br><br>
    <a href="#upd">Update Personal Details </a><br><br>
    <a href="#apd">Add Product Details </a><br><br>
    <a href="#epd"> View Product Details </a><br><br>
   <a href="">About Us</a><br><br>
   <a href="">Contact Us</a><br><br>
   <a href="">Help & Support</a><br><br>
  </div>

<div class="target">

<strong><center>Welcome Vendor Id: <%=user.getVendor_UserId() %></center></strong><br><br>
<!----------------------------------------------------------------------------------------------------------------------------------------------  -->


    <div id="eprd">
       <form name="RegForm" action="Registration.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
    <div class="container">
    <br><br>
    <label for="Vendor_UserId">Vendor ID</label>
    <input type="text" placeholder="Enter your ID" name="Vendor_UserId"  >

    <label for="fname">First Name</label>
    <input type="text" placeholder="Enter First Name in Capital Letters" name="fname" value="<%=user.getfName() %>" >

    <label for="lname">Last Name</label>
    <input type="text" placeholder="Enter Last Name" name="lname" value="<%=user.getlName()%>">

    <label for="age">Age</label>
    <input type="text" placeholder="Enter Age" name="age" value="<%=user.getAge()%>" >

    <label for="gender">Gender</label>
    <select name="gender" placeholder="Gender" value="<%=user.getGender()%>">
            <option label="Male">Male</option>
            <option label="Female">Female</option>
            <option label="Transgender">Others</option>
    </select>

    <label for="contactnumber">Contact Number</label>
    <input type="text" placeholder="Enter Contact Number" name="contactNum" value="<%=user.getContactNo() %>" >

    <label for="contactnumber">Address</label><br>
    <textarea   type="text" placeholder="Enter your address" name="Address"style=" overflow: scroll;">
    </textarea><br>
    <label for="City">City</label>
    <input type="text" placeholder="Enter city name" name="City">

    <label for=" Zip_Code">Zip Code</label>
    <input type="text" placeholder="Enter zip code" name="Zip_Code">

    <label for=" Landline">Landline</label>
    <input type="text" placeholder="Enter Landline number" name="Landline">

    <label for=" Email">Email</label>
    <input type="text" placeholder="Enter your Email" name="Email">

    <label for="Other_Contact_info">Detailed Contact info</label>
    <input type="text" placeholder="Other Contact info" name="Other_Contact_info" >

   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->
    <!--<div class="clearfix">
         <button type="submit" class="signupbtn" onclick="return G1()"><b>Sign Up</b></button>
         <button type="reset" class="cancelbtn"><b>Reset</b></button>
    </div>-->
  </div>

</form>
    </div>

<!---------------------------------------------------------------------------------------------------------------------------------------------------->

    <div id="upd">
    <form name="RegForm" action="Registration.do"  method="post"  style="border:0px solid #ccc; opacity:2" ;>
    <div class="container">
     <br><br>
    <label for="Vendor_UserId">Vendor ID</label>
    <input type="text" placeholder="Enter your ID" name="Vendor_UserId" value="<%=user.getVendor_UserId() %>">

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

    <label for="contactnumber">Address</label>
    <input type="text" placeholder="Enter your address" name="Address" >

    <label for="City">City</label>
    <input type="text" placeholder="Enter city name" name="City">

    <label for=" Zip_Code">Zip Code</label>
    <input type="text" placeholder="Enter zip code" name="Zip_Code">

    <label for=" Landline">Landline</label>
    <input type="text" placeholder="Enter Landline number" name="Landline">

    <label for=" Email">Email</label>
    <input type="text" placeholder="Enter your Email" name="Email">

    <label for="Other_Contact_info">Detailed Contact info</label>
    <input type="text" placeholder="Other Contact info" name="Other_Contact_info" >

   <!-- <label>
      <input type="checkbox" checked="checked" name="remember" style="margin-bottom:15px"> Remember me
    </label>
    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>-->


    <div class="clearfix">
         <button type="submit" class="signupbtn" onclick="return G1()"><b>Update</b></button>
         <button type="reset" class="cancelbtn"><b>Cancel</b></button>
    </div>

    </div>

</form>
</div>

<!---------------------------------------------------------------------------------------------------------------------------------------------->

<div id="apd">
<div class="container">
  <label for="">Choose what you offer:</label>
  <select id="getFname" onchange="typeSelectCheck(this);">
  <option value="0">Select Type</option>
  <option value="1">Product</option>
  <option value="2">Service</option>
  </select>
<div id="proDivCheck"  style="display:none;">
<br>
<label for="">Select Product Type:</label>
<br>
<select id="product" onchange="form1SelectCheck(this);" placeholder="Choose Product">
            <option>Choose Product</option>
            <option value="3">Beds</option>
            <option value="4">Sofa and loungers</option>
            <option value="5">Chairs</option>
            <option value="6">Tables</option>
            <option value="7">Wardrobes</option>
            <option value="8">Add other category...</option>
</select>
</div>

<div id="serDivCheck" style="display:none;" >
<label for="">Select Service Type:</label>
<select id="service" onchange="form2SelectCheck(this);" placeholder="Choose Services">
            <option >Choose Service</option>
            <option value="polish">Furniture Polishing/ Varnishing</option>
            <option value="assemble">Furniture Assembling </option>
            <option value="design">Interior Designing</option>
            <option value="install">Furniture Installation</option>
            <option value="another">Add other service...</option>
</select>
</div>

<div id="productformDivCheck" style="display:none;">
    <label for="dime">Dimensions (in feet)</label>
    <input type="text" placeholder="length" name="length" >
    <input type="text" placeholder="breadth" name="breadth" >
    <input type="text" placeholder="height" name="height" >

    <label for="color">Color</label>
    <input type="text" placeholder="Enter color" name="color" >

     <label for="material">Material</label>
    <input type="text" placeholder="Enter material" name="material" >

    <label for="brand">Brand</label>
    <input type="text" placeholder="Enter brand" name="brand" >

    <label for="price">Price</label>
    <input type="text" placeholder="Enter price" name="price" >

    <label for="desc">Description</label>
    <input type="text" placeholder="Description" name="desc" >

    <div class="clearfix">
    <button type="submit" class="signupbtn" onclick=""><b>Add Product</b></button>
    <button type="reset" class="cancelbtn"><b>Reset</b></button>
    </div>

</div>

<div id="product1formDivCheck" style="display:none;">
<label for="pro">New category</label>
<input type="text" placeholder="Enter the new category..." >
<button value="add" type="submit" class="signupbtn" onclick="form1SelectCheck(this);"><b>Add</b></button>
</div>

<div id="serviceformDivCheck" style="display:none;">
    <label for="price">Price</label>
    <input type="text" placeholder="Enter price" name="price" >

    <label for="desc">Description</label>
    <input type="text" placeholder="Description" name="desc" >
    <div class="clearfix">
    <button type="submit" class="signupbtn" onclick=""><b>Add Service</b></button>
    <button type="reset" class="cancelbtn"><b>Reset</b></button>
    </div>
</div>

<div id="service1formDivCheck" style="display:none;">
<label for="pro">New category</label>
<input type="text" placeholder="Enter the new category..." >
<button value="ad" type="submit" class="signupbtn" onclick="form2SelectCheck(this);"><b>Add</b></button>
</div>

</div>
</div>
<!---------------------------------------------------------------------------------------------------------------------------------------------->


  <div id="epd">
      <div class="container">
  <label for="">Choose what you offer:</label>
  <select id="getFname" onchange="typeSelectCheck(this);">
  <option value="0">Select Type</option>
  <option value="1">Product</option>
  <option value="2">Service</option>
  </select>
<div id="proDivCheck"  style="display:none;">
<br>
<label for="">Select Product Type:</label>
<br>
<select id="product" onchange="form1SelectCheck(this);" placeholder="Choose Product">
            <option>Choose Product</option>
            <option value="3">Beds</option>
            <option value="4">Sofa and loungers</option>
            <option value="5">Chairs</option>
            <option value="6">Tables</option>
            <option value="7">Wardrobes</option>
            <option value="8">Add other category...</option>
</select>
</div>

<div id="serDivCheck" style="display:none;" >
<label for="">Select Service Type:</label>
<select id="service" onchange="form2SelectCheck(this);" placeholder="Choose Services">
            <option >Choose Service</option>
            <option value="polish">Furniture Polishing/ Varnishing</option>
            <option value="assemble">Furniture Assembling </option>
            <option value="design">Interior Designing</option>
            <option value="install">Furniture Installation</option>
            <option value="another">Add other service...</option>
</select>
</div>

<div id="productformDivCheck" style="display:none;">
    <label for="dime">Dimensions (in feet)</label>
    <input type="text" placeholder="length" name="length" >
    <input type="text" placeholder="breadth" name="breadth" >
    <input type="text" placeholder="height" name="height" >

    <label for="color">Color</label>
    <input type="text" placeholder="Enter color" name="color" >

     <label for="material">Material</label>
    <input type="text" placeholder="Enter material" name="material" >

    <label for="brand">Brand</label>
    <input type="text" placeholder="Enter brand" name="brand" >

    <label for="price">Price</label>
    <input type="text" placeholder="Enter price" name="price" >

    <label for="desc">Description</label>
    <input type="text" placeholder="Description" name="desc" >

     <div class="clearfix">
     <button type="submit" class="signupbtn" onclick=""><b>Add Product</b></button>
     <button type="reset" class="cancelbtn"><b>Reset</b></button>
 
    </div>
</div>

<div id="product1formDivCheck" style="display:none;">
<label for="pro">New category</label>
<input type="text" placeholder="Enter the new category..." >
<button value="add" type="submit" class="signupbtn" onclick="form1SelectCheck(this);"><b>Add</b></button>
</div>

<div id="serviceformDivCheck" style="display:none;">
    <label for="price">Price</label>
    <input type="text" placeholder="Enter price" name="price" >

    <label for="desc">Description</label>
    <input type="text" placeholder="Description" name="desc" >
</div>

<div id="service1formDivCheck" style="display:none;">
<label for="pro">New category</label>
<input type="text" placeholder="Enter the new category..." >
<button value="ad" type="submit" class="signupbtn" onclick="form2SelectCheck(this);"><b>Add</b></button>
</div>

</div>
</div>

<!---------------------------------------------------------------------------------------------------------------------------------------------------------->

</div>
</div>

<div class="footer">
  <h5>@mr.mojobazzar.com</h5>
</div>

</body>
</html>