package services;

import java.sql.*;


import com.dao.dataconn;

import v_model.VendorInfo;
public class V_Service_add {

public static void addUser(VendorInfo u)
	{		
		try {
			Connection con =dataconn.connect();

			PreparedStatement ps = null;
            
            
            String query1 = "insert into vendor_info1 values(?,?,?,?,?,?,?)";
            ps=con.prepareStatement(query1);
            
			ps.setString(1, u.getfName());
			ps.setString(2, u.getlName());
			ps.setInt(3, u.getAge());
			ps.setString(4, u.getGender());
			ps.setLong(5, u.getContactNo());
			ps.setString(6, u.getVendor_UserId());
			ps.setString(7, u.getPassword());
			
			ps.executeUpdate();
			
					} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

