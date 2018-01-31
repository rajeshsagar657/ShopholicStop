package com.shopolic.loginValidation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class loginCheck extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	Connection con;


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
			response.setContentType("text/html");      
	       PrintWriter pwriter = response.getWriter();                
	       String user=request.getParameter("user");      
	       String password=request.getParameter("password"); 
           try
           {	
        	     Class.forName("com.mysql.jdbc.Driver");
        	     con=(Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false","root","16283"); 
                 PreparedStatement ps = con.prepareStatement("select * from newuser where firstname=? and password=?");
                 ps.setString(1, user);
                 ps.setString(2, password);
                 ResultSet result = ps.executeQuery();
                 if(result.next())
                 {
                      //RequestDispatcher rd1=request.getRequestDispatcher("vlog.jsp");
                      //rd1.include(request,response);  
                      HttpSession session=request.getSession(true);  
                      session.setAttribute("user",user);
                      response.sendRedirect("vlog.jsp");
                  }
			   
                 else
                 {     
                	 
                	 pwriter.print("User name or password is incorrect!"); 
                	 
		                                        
                 }      

           } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}    
           finally {
   			if (con != null) {
   				try {

   					con.close();
   				} catch (SQLException e) {
   					// TODO Auto-generated catch block
   					e.printStackTrace();
   				}
   			}

   		}
	}
}


