package services;
import java.sql.*;
import com.dao.dataconn;

import Vendor_Filters.Vendor_details;
import v_model.Vendordetails;
public class V_details {

	
public static void addUser(Vendordetails v1)
	{		
		try {
			Connection con =dataconn.connect();

			PreparedStatement ps = null;
            
            
            String query1 = "insert into Vendor_details values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
            ps=con.prepareStatement(query1);
            System.out.println("p2111");
			ps.setString(1,v1.getfName2());
			ps.setString(2, v1.getlName2());
			ps.setInt(3, v1.getAge2());
			ps.setString(4, v1.getGender2());
			ps.setLong(5, v1.getContactNo2());
			ps.setString(6, v1.getVendor_Id());
			ps.setString(7, v1.getAddress());
			ps.setString(8, v1.getCity());
			ps.setString(9, v1.getZipcode());
			ps.setString(10, v1.getLandline());
			ps.setString(11, v1.getEmail());
			ps.setString(12, v1.getOther());
			ps.setString(13, v1.getVendor_UserId());
			ps.executeUpdate();
			
					} catch (Exception e) {
			e.printStackTrace();
		}
	}

public static Vendordetails checkUser(String v_uid,String pwd) throws Exception
{
	Vendordetails ud =null;
	
	//try
//	{
	
	 Connection con = dataconn.connect();
     String query = "select * from vendor_details where vendor_userId=? and password=?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, v_uid);
     ps.setString(2, pwd);
     
     
     
     ResultSet rs = ps.executeQuery();
              
     if(rs.next())
     {

         System.out.println("user checked in check user if");
    	 //ud=new Vendordetails(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getLong(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13));
    	 return ud;
                         
     }
     else 
    	 

	/*}
	catch (Exception e) 
	  {
    	// 	e.printStackTrace();
    	 

    	 
    	 
     }*/
	
	
	return ud;
	
}
}