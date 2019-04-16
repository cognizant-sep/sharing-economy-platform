package Filters;
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


public class LoginFilter implements Filter {

    public LoginFilter() {
    }
	public void destroy() {
	}
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        boolean found = false;
        try
        {
        	
                        Connection con = dataconn.connect();
                        String uid = request.getParameter("uid");
                        String pass =request.getParameter("psw");
                        String query = "select * from user_info";
                        PreparedStatement ps = con.prepareStatement(query);
                        ResultSet rs = ps.executeQuery();
                        int flag=0;
                        while(rs.next())
                        {	
                        		if(rs.getString(6).equals(uid) && rs.getString(7).equals(pass))
                                {
                        			request.setAttribute("userid", uid);
                        			request.getRequestDispatcher("u_submit.jsp?msg1=Successfully logged in").forward(request, response);
                                    flag=1;
                                }
                      
                        	
                        }
                        if (flag==0) {

                        	request.getRequestDispatcher("index.jsp?errmsg1=invalid user")
    						.forward(request, response);
						}
	}catch (Exception e) {
		e.printStackTrace();
	}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
