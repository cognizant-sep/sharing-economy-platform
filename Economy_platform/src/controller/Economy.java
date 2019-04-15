package controller;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Economy extends HttpServlet{
	private static final long serialVersionUID = 1L;


					public void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	                {
	                  
	                 
	                }
	                
	                
	                public void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException
	                {
	                               
	                
	                	
	                	
	                	RequestDispatcher rd = req.getRequestDispatcher("index.jsp");
	                                rd.forward(req, res);
	                                
	                }
	                
	                
	}

