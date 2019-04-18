package Vendor_Filters;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import com.dao.dataconn;

import services.V_Service_add;
import services.V_details;
import v_model.VendorInfo;
import v_model.Vendordetails;
class UniqueID {

	 private static final long LIMIT = 100000000L;
	private static long last = 0;

	public long getID() {
	  // 10 digits.
	  long id = System.currentTimeMillis() % LIMIT;
	  if ( id <= last ) {
	    id = (last + 1) % LIMIT;
	  }
	  return last = id;
	}
	}


public class Vendor_details implements Filter
{

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException 
	{
		boolean found = false;
		try {
			
			
			/*
			UniqueID uid= new UniqueID();
			uid.getID();
			Connection con = dataconn.connect();
			String query = "select * from vendor_details";
			PreparedStatement ps = con.prepareStatement(query);
			ResultSet rs = ps.executeQuery();
			long s = uid.getID();
			while (rs.next()) {
				if (rs.getString(13).equals(s)) {
					found = true;
					break;
				}
			}*/
			int s=1234;
			if (!found) {
				String fName = request.getParameter("fname");
				String lName = request.getParameter("lname");
				int age = Integer.parseInt(request.getParameter("age"));
				long contactNo = Long.parseLong(request.getParameter("contactNum"));
				
				String t=Integer.toString(s);
				
				String gender = request.getParameter("gender");
				String u= request.getParameter("Vendor_UserId");
				String userId = request.getParameter("uid");
				String password = request.getParameter("password");
				
				String address = request.getParameter("Address");
				String city = request.getParameter("City");
				String zip_code = request.getParameter("Zip_Code");
				String landline = request.getParameter("Landline");
				String email = request.getParameter("Email");
				String othercon = request.getParameter("Other_Contact_info");
				Vendordetails v1 = new Vendordetails(fName, lName, age,contactNo,gender,u,t,address,city,zip_code,landline,email,othercon);
				V_details.addUser(v1);
				
				request.setAttribute("userdetails", v1);
				System.out.println("1");
				request.getRequestDispatcher("vendor_main.jsp").forward(request, response);
				System.out.println("2");
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("index.jsp?errmsg2=User Already Exists!");
				rd.forward(request, response);
			}
		} catch (Exception e) {
		}

	}
		

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	
}
