package Filters;

import java.io.IOException;
import java.io.PrintWriter;
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

import models.UserInfo;
import services.Service_add;

public class SignUpFilter implements Filter {

	@Override
	public void destroy() {
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		boolean found = false;
		try {

			Connection con = dataconn.connect();
			String query = "select * from user_info";
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

				UserInfo u = new UserInfo(fName, lName, age, contactNo, gender, userId, password);
				Service_add.addUser(u);
		/*		request.setAttribute("uid", userId);
				request.setAttribute("password", password);*/
				request.getRequestDispatcher("index.jsp?msg=Account Created successfully. Please Login")
						.forward(request, response);
			} else {
				RequestDispatcher rd = request.getRequestDispatcher("registration.jsp?errmsg=User Already Exists!");
				rd.forward(request, response);
			}
		} catch (Exception e) {
		}

	}

	@Override
	public void init(FilterConfig arg0) throws ServletException {

	}
}
