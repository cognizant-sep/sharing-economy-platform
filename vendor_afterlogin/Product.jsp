<%@page import="P_model.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.ArrayList"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product List Display</title>
</head>
<body bgcolor="cyan">
       <%
              ArrayList<Product_detail> al =(ArrayList<Product_detail>)request.getAttribute("prodlist");
       %>
       <table border="1">
              <tr color="red">
                     <th width="90">Product ID</th>
                     <th width="90">Product Type</th>
                     <th width="90">Length</th>
                     <th width="90">Breadth</th>
                     <th width="90">Height</th>
                     <th width="90">Color</th>
                     <th width="90">Material</th>
                     <th width="90">Brand</th>
                     <th width="90">Price</th>
                     <th width="90">Description</th>
                     <th width="90">Vendor Id</th>

			</tr>

              <%
              for(Product_detail p:al)
              {
              %>
              <tr>
                     <td width="90"> <%=p.getProduct_id() %></td>
                     <td width="90"> <%=p.getType2() %></td>
                     <td width="90"> <%=p.getLength() %></td>
                     <td width="90"> <%=p.getBreadth() %></td>
                     <td width="90"> <%=p.getHeight() %></td>
                     <td width="90"> <%=p.getColor() %></td>
                     <td width="90"> <%=p.getMaterial() %></td>
                     <td width="90"> <%=p.getBrand() %></td>
                     <td width="90"> <%=p.getPrice() %></td>
                     <td width="90"> <%=p.getDescription() %></td>
                     <td width="90"> <%=p.getVendor_id()%></td>
                     
              </tr>
              <%
              }
              %>
       </table>


</body>
</html>