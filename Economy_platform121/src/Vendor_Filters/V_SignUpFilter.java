package Vendor_Filters;
import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.Servlet;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.dataconn;


import services.V_Service_add;
import v_model.VendorInfo;

public class V_SignUpFilter extends HttpServlet  {

    
	   
    public  V_SignUpFilter() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		boolean found = false;
		try {

			Connection con = dataconn.connect();
			String query = "select * from vendor_info1";
			PreparedStatement ps = con.prepareStatement(query);

			ResultSet rs = ps.executeQuery();
			String s = request.getParameter("uid");
			while (rs.next()) {
				if (rs.getString(6).equals(s)) {
					found = true;
					break;
				}
			}
			if (!found) {
				String fName = request.getParameter("fname");
				String lName = request.getParameter("lname");
				int age = Integer.parseInt(request.getParameter("age"));
				long contactNo = Long.parseLong(request.getParameter("contactNum"));

				String gender = request.getParameter("gender");

				String userId = request.getParameter("uid");
				String password = request.getParameter("password");
				

				VendorInfo u = new VendorInfo(fName, lName, age, gender,contactNo,userId,password);
				V_Service_add.addUser(u);
				request.getRequestDispatcher("vendor_login.jsp?msg2=Account Created successfully. Please Login")
						.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("vendor_registration.jsp?errmsg2=User Already Exists!");
				rd.forward(request, response);
			}
		} catch (Exception e) {
		}

		
	}
}
