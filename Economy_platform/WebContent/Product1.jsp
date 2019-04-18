<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="v_model.*" %>
    <%@ page import="com.dao.*" %>
    <%@ page import="P_model.*" %>
    <%@ page import="services.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>


<%
int product_Id=1;
Connection con = dataconn.connect();
VendorInfo user=(VendorInfo)request.getAttribute("user");
request.getSession().setAttribute("user", user);
String query = "select * from product_details";
PreparedStatement ps = con.prepareStatement(query);

System.out.println("p1");
ResultSet rs = ps.executeQuery();
System.out.println("p11");
String t = request.getParameter("selecttype");
System.out.println("p12");


if(t.equalsIgnoreCase("Product"))
{
	
	product_Id++;
	String t1= request.getParameter("choose_product");
	System.out.println(t1);
	int l= Integer.parseInt(request.getParameter("length"));
	System.out.println(l);
	int b= Integer.parseInt(request.getParameter("breadth"));
	int h= Integer.parseInt(request.getParameter("height"));
	String c= request.getParameter("color");
	String m= request.getParameter("material");
	String br= request.getParameter("brand");
	int p= Integer.parseInt(request.getParameter("price"));
	String de= request.getParameter("desc");
	
	int s= Integer.parseInt(request.getParameter(user.getVendor_UserId()));
	System.out.println(s);
	System.out.println("p2");

	Product_detail p1 = new Product_detail(product_Id,l,b,h,p,s,t,t1,c,m,br,de);
	System.out.println("p21");
	P_service_add.addUser(p1);
	System.out.println("p3");
	request.getRequestDispatcher("vendor_main.jsp?msg2=Product added successfully.")
			.forward(request, response);
} 
else if(t.equals("Service"))
{
//String t1= request.getParameter("choose_service");
//redirect to service filter

}

else {
	RequestDispatcher rd = request.getRequestDispatcher("vendor_main.jsp?errmsg2=User Already Exists!");
	rd.forward(request, response);
}


%>
<body>

</body>
</html>