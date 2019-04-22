package Vendor_Filters;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.dataconn;

import P_model.Product_detail;
import services.P_service_add;
import v_model.VendorInfo;


public class Product extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public Product() {
        super();
        
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{

		HttpSession hts=request.getSession();
		//hts.setAttribute("user",user);
		VendorInfo user=(VendorInfo)hts.getAttribute("user");
		try{
		int product_Id=1;
		Connection con = dataconn.connect();
		String query = "select * from product_details1";
		PreparedStatement ps = con.prepareStatement(query);
		//VendorInfo user=(VendorInfo)request.getAttribute("user");
		request.getSession().setAttribute("user", user);
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
			System.out.println(de);
			String s= user.getVendor_UserId();
			System.out.println(s);
			System.out.println("p2");

			Product_detail p1 = new Product_detail(product_Id,l,b,h,p,s,t,t1,c,m,br,de);
			
			request.setAttribute("p1", p1);
			
			System.out.println("p21");
			try {
				
	            
				
	            String query1 = "insert into Product_details1 values(?,?,?,?,?,?,?,?,?,?,?,?)" ;
	            ps=con.prepareStatement(query1);
	            
				ps.setInt(1, product_Id);
				ps.setString(2, t);
				ps.setString(3, t1);
				ps.setInt(4, l);
				ps.setInt(5, b);
				ps.setInt(6, h);
				ps.setString(7,c);
				ps.setString(8, m);
				ps.setString(9,br);
				ps.setInt(10, p);
				ps.setString(11,de);
				ps.setString(12,s);
				System.out.println("vendor id is " +user.getVendor_UserId());
				ps.executeUpdate();
				
						} catch (Exception e) {
				e.printStackTrace();
			}
			System.out.println("p3");
			request.getRequestDispatcher("vendor_main.jsp?msg2=Product added successfully.").forward(request, response);
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


	}catch (Exception e) 
	{
		System.out.print(e);
		
	}

}

}


