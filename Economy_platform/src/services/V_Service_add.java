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

public static VendorInfo checkUser(String v_uid,String pwd) throws Exception
{
	VendorInfo ud =null;
	
	//try
//	{
	
	 Connection con = dataconn.connect();
     String query = "select * from vendor_info1 where vendor_userId=? and password=?";
     PreparedStatement ps = con.prepareStatement(query);
     ps.setString(1, v_uid);
     ps.setString(2, pwd);
     
     
     
     ResultSet rs = ps.executeQuery();
              
     if(rs.next())
     {

         System.out.println("user checked in check user if");
    	 ud=new VendorInfo(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getLong(5), rs.getString(6), rs.getString(7));
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
public static VendorInfo checkUser1() throws Exception
{
	VendorInfo ud =null;
	
	//try
//	{
	
	 Connection con = dataconn.connect();
     String query = "select * from vendor_info1";
     PreparedStatement ps = con.prepareStatement(query);
     ResultSet rs = ps.executeQuery();
              
     if(rs.next())
     {

         System.out.println("user checked in check user if 1");
    	 ud=new VendorInfo(rs.getString(1), rs.getString(2), rs.getInt(3), rs.getString(4), rs.getLong(5), rs.getString(6), rs.getString(7));
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








