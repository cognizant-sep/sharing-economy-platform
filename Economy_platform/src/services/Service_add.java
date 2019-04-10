package services;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.*;
import java.sql.PreparedStatement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.dataconn;

import models.UserInfo;
public class Service_add {

public static void addUser(UserInfo u)
	{		
		try {
			Connection con =dataconn.connect();

			PreparedStatement ps = null;
            
            
            String query1 = "insert into user_info values(?,?,?,?,?,?,?)";
            ps=con.prepareStatement(query1);
            
			ps.setString(1, u.getfName());
			ps.setString(2, u.getlName());
			ps.setInt(3, u.getAge());
			ps.setString(4, u.getGender());
			ps.setLong(5, u.getContactNo());
			ps.setString(6, u.getUserId());
			ps.setString(7, u.getPassword());
			
			ps.executeUpdate();
			
					} catch (Exception e) {
			e.printStackTrace();
		}
	}
}
