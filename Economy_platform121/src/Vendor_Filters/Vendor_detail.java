package Vendor_Filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.dataconn;

import services.V_details;
import v_model.VendorInfo;
import v_model.Vendordetails;

public class Vendor_detail extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
   
    public Vendor_detail() {
        super();
    
    }
    public static String getV_Id()
	{
		int id = 0;
		String id1="";
		try{
			Connection con = dataconn.connect();
			PreparedStatement ps= null;
			String query= "select cast (substr(max(vendor_Id),3) as VARCHAR2) from vendor_detail";
			ps= con.prepareStatement(query,ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
			ResultSet rs = ps.executeQuery();
			if(rs.next()==false)
			{
				id=0;
			}
			else
			{
				id=rs.getInt(6);
				System.out.println(id);
			}
			id=id+1;
			id1="p--";
			id1=id1+String.format("%04d", id);
		}catch(Exception e)
		{
			
		}
		return id1;
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {
	
		Connection con = dataconn.connect();
		String query = "select * from vendor_detail ";
		PreparedStatement ps = con.prepareStatement(query);
		
		

		
			ResultSet rs = ps.executeQuery();
	
		
			
		//	request.getSession().setAttribute("user",user);
			
			HttpSession hts=request.getSession();
			//hts.setAttribute("user",user);
			VendorInfo user=(VendorInfo)hts.getAttribute("user");
		
		
		String a = user.getVendor_UserId().toString();
		System.out.println(a);
		String fName = request.getParameter("fname");
		String lName = request.getParameter("lname");
		int age = Integer.parseInt(request.getParameter("age"));
		long contactNo = Long.parseLong(request.getParameter("contactNum"));
		String gender = request.getParameter("gender");
		//String u= request.getParameter("Vendor_UserId");
		String V_Id = Vendor_detail.getV_Id();
		String password = request.getParameter("password");
		
		String address = request.getParameter("Address");
		String city = request.getParameter("City");
		String zip_code = request.getParameter("Zip_Code");
		String landline = request.getParameter("Landline");
		String email = request.getParameter("Email");
		String othercon = request.getParameter("Other_Contact_info");
		Vendordetails v1 = new Vendordetails(fName, lName, age,contactNo,gender,V_Id,a,address,city,zip_code,landline,email,othercon);
		
		
		request.getRequestDispatcher("vendor_main.jsp").forward(request, response);
		
	
            
            String query1 = "insert into Vendor_detail values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps=con.prepareStatement(query1);
            System.out.println("p2111");
			ps.setString(1,fName);
			ps.setString(2, lName);
			ps.setInt(3, age);
			ps.setString(4, gender);
			ps.setLong(5, contactNo);
			ps.setString(6, V_Id);
			ps.setString(7, address);
			ps.setString(8,city);
			ps.setString(9, zip_code);
			ps.setString(10,landline);
			ps.setString(11, email);
			ps.setString(12, othercon);
			ps.setString(13, a);
			ps.executeUpdate();
			request.setAttribute("userdetails", v1);
			request.getRequestDispatcher("vendor_main.jsp").forward(request, response);
					} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
		
		
	}
	

}
