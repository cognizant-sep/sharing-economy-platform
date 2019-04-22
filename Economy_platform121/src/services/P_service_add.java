package services;

import java.sql.*;

import javax.servlet.http.HttpServlet;

import org.omg.CORBA.Request;

import com.dao.dataconn;

import P_model.Product_detail;

public class P_service_add extends HttpServlet {

	
public static void addUser(Product_detail u)
	{		
		try {
			Connection con =dataconn.connect();

			PreparedStatement ps = null;
            
			
            String query1 = "insert into Product_details values(?,?,?,?,?,?,?,?,?,?,?,?)" ;
            ps=con.prepareStatement(query1);
            
			ps.setInt(1, u.getProduct_id());
			ps.setString(2, u.getType1());
			ps.setString(3, u.getType2());
			ps.setInt(4, u.getLength());
			ps.setInt(5, u.getBreadth());
			ps.setInt(6, u.getHeight());
			ps.setString(7, u.getColor());
			ps.setString(8, u.getMaterial());
			ps.setString(9, u.getBrand());
			ps.setInt(10, u.getPrice());
			ps.setString(11, u.getDescription());
			ps.setString(12, u.getVendor_id());
			System.out.println("vendor id is " +u.getVendor_id());
			ps.executeUpdate();
			
					} catch (Exception e) {
			e.printStackTrace();
		}
	}

}








