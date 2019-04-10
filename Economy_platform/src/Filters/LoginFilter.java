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
                        String query = "select * from user_info where user_id=? and password=?";
                        PreparedStatement ps = con.prepareStatement(query);
                        
                        ResultSet rs = ps.executeQuery();
                        String uid = request.getParameter("uid");
                        String pass =request.getParameter("psw");
                        int flag=0;
                        while(rs.next())
                        {
                                        if(rs.getString("user_id").equals(uid) && rs.getString("password").equals(pass))
                                        {

                                            RequestDispatcher rd = request.getRequestDispatcher("views/u_submit.html");
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
