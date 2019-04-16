package Vendor_Filters;
import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;




import services.V_Service_add;
import v_model.VendorInfo;


public class V_LoginFilter implements Filter {

    public V_LoginFilter() {
    }
	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
       // boolean found = false;
       
        	 
        	 String v_uid = request.getParameter("username");
             String pass =request.getParameter("password");
             
         
             try
             {
             VendorInfo u = V_Service_add.checkUser(v_uid,pass);

             System.out.println("user checked0");
             if(u!=null)
             {
            	 
            	 request.setAttribute("user", u);
             	RequestDispatcher rd = request.getRequestDispatcher("Economy.do?msg3=Successfully logged in");
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

     	public void init(FilterConfig fConfig) throws ServletException {
     		// TODO Auto-generated method stub
     	}

     }


        	
        	
        	
        	
        	
        	