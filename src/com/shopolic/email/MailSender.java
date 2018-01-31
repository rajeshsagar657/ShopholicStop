package com.shopolic.email;

import java.io.IOException;
import java.util.Random;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;



@WebServlet("/MailSender")



public class MailSender extends HttpServlet {

	private static final long serialVersionUID = 1L;
	@EJB
	
	private SessionBean sessionbean;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		

		
		String fn=request.getParameter("fn");  
		String ln=request.getParameter("ln");  
		String gender=request.getParameter("gender");   
		String age=request.getParameter("age");
		String mobile=request.getParameter("mn");
		String email=request.getParameter("email");
		String password=request.getParameter("password");
		String confirm=request.getParameter("confirm");
	


		char[] chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789".toCharArray();
		Random rnd = new Random();
		StringBuilder sb = new StringBuilder((100000 + rnd.nextInt(9000000)));
		for (int i = 0; i < 6; i++)
		    sb.append(chars[rnd.nextInt(chars.length)]);

		 String mess=sb.toString();
		 
		
		 
			HttpSession session=request.getSession();  
		    session.setAttribute("otp",mess);
		    session.setAttribute("fn",fn);
		    session.setAttribute("ln",ln);
		    session.setAttribute("email",email);
		    session.setAttribute("gender",gender);
		    session.setAttribute("password",password);
		    session.setAttribute("mobile",mobile);
		    session.setAttribute("age",age);
		    session.setAttribute("confirm",confirm);
	
		    String fromEmail="ShopholicStop@gmail.com";
		    String username="ShopholicStop";
		    String pass="rajeshsagar657";
		
		    
		    String subject="OTP for Shopholic Stop to Register";
		try{
			
			SessionBean.sendmail(fromEmail, username, pass, email, subject, mess);
			RequestDispatcher rd=request.getRequestDispatcher("confirmreg.jsp");
	        rd.include(request,response);
		}
		catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		
	}


}
