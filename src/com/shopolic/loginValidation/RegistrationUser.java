package com.shopolic.loginValidation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegistrationUser
 */
// @WebServlet("/RegistrationUser")
public class RegistrationUser extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");

		PrintWriter out = response.getWriter();

		String fn = request.getParameter("fn");
		String ln = request.getParameter("ln");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		String mobile = request.getParameter("mobile");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false", "root", "16283");
			String otpConfirm = request.getParameter("otp");
			String otp = request.getParameter("confirmotp");
			boolean b = (otp.equals(otpConfirm));
			boolean c = b;
			boolean b1 = c;
			if (b1) {
				PreparedStatement ps = ((java.sql.Connection) con)
						.prepareStatement("insert into newuser values(?,?,?,?,?,?,?)");

				ps.setString(1, fn);
				ps.setString(2, ln);
				ps.setString(3, gender);
				ps.setString(4, age);
				ps.setString(5, email);
				ps.setString(6, mobile);
				ps.setString(7, password);

				int i = ps.executeUpdate();
				if (i > 0) {

					RequestDispatcher rd1 = request.getRequestDispatcher("vregistration.jsp");
					rd1.include(request, response);

				}

			} else {
				System.out.println(otp + otpConfirm);
			}

		} catch (Exception e2) {
			System.out.println(e2);
		}

		out.close();
	}

}
