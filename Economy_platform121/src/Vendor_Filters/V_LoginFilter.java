package Vendor_Filters;
import java.io.IOException;

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
import javax.servlet.http.HttpSession;

import services.V_Service_add;
import v_model.VendorInfo;


public class V_LoginFilter extends HttpServlet  {

	 public  V_LoginFilter() {
	        super();
	        
	    }

		
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String v_uid = request.getParameter("username");
        String pass =request.getParameter("password");
        
    
        try
        {
        VendorInfo user = V_Service_add.checkUser(v_uid,pass);

        System.out.println("user checked0");
        if(user!=null)
        {
        	
       	 HttpSession hs = request.getSession();
       	 hs.setAttribute("user", user);
       //	VendorInfo user=(VendorInfo)request.getAttribute("user");
       	 
       	 
        	RequestDispatcher rd = request.getRequestDispatcher("vendor_main.jsp?msg3=Successfully logged in");
        	rd.forward(request, response);
        	
        }
        else
        {
        	RequestDispatcher rd = request.getRequestDispatcher("index.jsp?errmsg3=INVALID USER...!!!!!!!!!!!");
            rd.forward(request, response);
        }
        }catch(Exception ex)
        {
        	/*RequestDispatcher rd = request.getRequestDispatcher("views/error.jsp?errmsg=" + ex.getMessage());
            rd.forward(request, response);*/
        	
        }
        
		
	}
	

 


		
	}


   

     	
        	
        	
        	
        	