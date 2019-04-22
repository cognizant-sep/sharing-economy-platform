package P_Filter;

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

import P_model.Product_detail;
import services.P_service_add;
import services.V_Service_add;
import v_model.VendorInfo;

public class ProductFilter implements Filter {

	@Override
	public void destroy() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		// TODO Auto-generated method stub
		
		
		boolean found = false;
		try {

			int product_Id=1;
			Connection con = dataconn.connect();
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
				System.out.println(de);
				int s= Integer.parseInt(request.getParameter("Vendor_UserId"));
				System.out.println(s);
				System.out.println("p2");

				Product_detail p1 = new Product_detail(product_Id,l,b,h,p,s,t,t1,c,m,br,de);
				
				request.setAttribute("p1", p1);
				
				System.out.println("p21");
				P_service_add.addUser(p1);
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
	

	@Override
	public void init(FilterConfig arg0) throws ServletException {
		// TODO Auto-generated method stub
		
	}
	}


