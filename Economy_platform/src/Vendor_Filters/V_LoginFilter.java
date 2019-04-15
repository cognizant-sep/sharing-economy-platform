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
import javax.servlet.http.HttpSession;

import com.dao.dataconn;


public class V_LoginFilter implements Filter {

    public V_LoginFilter() {
    }
	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        boolean found = false;
        try
        {
        	
                        Connection con = dataconn.connect();
                        String v_uid = request.getParameter("username");
                        String pass =request.getParameter("password");
                        String query = "select * from vendor_info1";
                      
                        PreparedStatement ps = con.prepareStatement(query);
                        
                        ResultSet rs = ps.executeQuery();
                       
                        
                        
                        int flag=0;
                        while(rs.next())
                        	
                        {
                                        if(rs.getString("Vendor_UserId").equals(v_uid) && rs.getString("password").equals(pass))
                                        {
                                        	request.setAttribute("username", v_uid);
                                        	

                                            RequestDispatcher rd = request.getRequestDispatcher("vendor_main.jsp?msge1=Successfully logged in");
                                            rd.forward(request, response);
                                            flag=1;
                                        }
                        }
                        if (flag==0) {

                            RequestDispatcher rd = request.getRequestDispatcher("index.html?errmsg2=INVALID USER...!!!!!!!!!!!");
                            rd.forward(request, response);
                            	
						}
	}catch (Exception e) {
		e.printStackTrace();
	}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}

