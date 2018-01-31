
package com.shopolic.products;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mysql.jdbc.Connection;
/**
 * Servlet implementation class sale1
 */
@WebServlet("/bynow")
public class sale1 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sale1() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		res.setContentType("text/Html");
		  PrintWriter pw = res.getWriter();
		  HttpSession session = req.getSession(true); 
		  String na = (String) session.getAttribute("user");
		  try{  
				
			  String type="mobile";
			  String model="13AS2DERS34";
			  int price=1500;
			  Class.forName("com.mysql.jdbc.Driver");  
				Connection con=(Connection) DriverManager.getConnection(  
						"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false","root","16283");  
				  
				PreparedStatement ps=((java.sql.Connection) con).prepareStatement(  
				"insert into product values(?,?,?,?,?)");  
				  
				ps.setString(1,type);  
				ps.setString(2,model);  
				ps.setInt(3,price);
				ps.setString(4, na);
			
				
				          
				int i=ps.executeUpdate();  
				if(i>0)  {
				 
				  pw.print("Added to your cart succesfully");
					
					}  
			  
				
				      
				          
				}catch (Exception e2) {
					//RequestDispatcher rd = req.getRequestDispatcher("login.html");
					
		  //rd.include(req, res); 
					pw.println("<html><head><body>");
					pw.println("<b  style= font-size:35px >you dint login to the website please login and order the product</b>");
					pw.println("<a  style= font-size:35px href=login.html>login</a>");
					pw.println("</body></head></html>");
		  }
			
			
			 
				
				}
	       

				


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
