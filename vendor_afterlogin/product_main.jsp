<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.dao.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
try{
String catname="";
catname=request.getParameter("txtCat");

Connection con= dataconn.connect();
PreparedStatement ps = null;
String query= "select * from Product_details where type2='"+ catname + "'";
ps=con.prepareStatement(query);
ResultSet rs = ps.executeQuery();
%>
<table border="1">
<%



%>
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







</body>
</html>