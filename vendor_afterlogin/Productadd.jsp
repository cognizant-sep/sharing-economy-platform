<%@ page import="java.sql.Statement"%>
    <%@page import="java.sql.ResultSet" %>
    <%@page import="java.sql.*" %>
    <%@ page import="com.dao.*" %>
      <%@ page import="v_model.*" %>
     <%@page import="java.sql.DriverManager" %>
     <link rel="stylesheet" type="text/css" href="css_style.css"/>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<h2>Your Category Details Are Successfully Added!!!</h2>


<body>


<h2>Product Categories</h2><br>

<%

ResultSet rs=null;
PreparedStatement st=null;
try
{
      Connection con= dataconn.connect();
       
      HttpSession hts=request.getSession();
    
      VendorInfo user=(VendorInfo)hts.getAttribute("user");
      String v_uid = user.getVendor_UserId();
      System.out.println(v_uid);
      System.out.println("product check");
      String query1="select * from product_details where Vendor_userId = ?";
      st = con.prepareStatement(query1);
      st.setString(1,v_uid);
      rs = st.executeQuery();
       
       
       
%>
<table border="1">
<tr><th width="60">ProdCode</th><th width="120">Category</th><th width="120">Length</th><th width="120">Breadth</th><th width="120">Height</th><th width="120">Color</th><th width="120">Material</th><th width="120">Brand</th><th width="120">Price</th><th width="120">Description</th><th width="120">Vendor id</th></tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getInt(5)%></td>
<td><%=rs.getInt(6)%></td>
<td><%=rs.getString(7)%></td>
<td><%=rs.getString(8)%></td>
<td><%=rs.getString(9)%></td>
<td><%=rs.getInt(10)%></td>
<td><%=rs.getString(11)%></td>
<td><%=rs.getString(12)%></td>

</tr>
<%
}
con.close();
}
catch(Exception e)
{
       
}

%>

</table>

<br>





<h2>Service Categories</h2><br>

<div class="al1"> <font color="red"><h3> ${param.s}</font></h3></div>
<%

try
{
      Connection con= dataconn.connect();
      HttpSession hts=request.getSession();
	  VendorInfo user=(VendorInfo)hts.getAttribute("user");
	  String v_uid = user.getVendor_UserId();
      String query="select * from service_details where Vendor_userId = ?";
     
      st = con.prepareStatement(query);
      st.setString(1,v_uid);
       
       rs = st.executeQuery();
       
       
        
         %>
         <table border="1">
         <tr><th width="60">ServiceCode</th><th width="120">Category</th><th width="120">Price</th><th width="120">Description</th><th width="120">Vendor id</th></tr>
<%
while(rs.next())
{
%>
<tr>
<td><%=rs.getString(1)%></td>
<td><%=rs.getString(3)%></td>
<td><%=rs.getInt(4)%></td>
<td><%=rs.getString(5)%></td>
<td><%=rs.getString(6)%></td>

</tr>
         <%
         }
         con.close();
         }
         catch(Exception e)
         {
                
         }

         %>

         </table>

<br>

</body>
</html>
