package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;

public class dataconn {
	

	    public static Connection connect()
	    {
	           Connection con=null;
	           try
	           {
	                        Class.forName("oracle.jdbc.driver.OracleDriver");
	                         con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","system","password");    
	              
	                  
	           }
	           
	           catch(Exception ex){}
	           return con;
	           
	           
	    }


	}
