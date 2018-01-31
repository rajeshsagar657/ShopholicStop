package com.shopolic.loginValidation;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shopolic.email.SessionBean;

/**
 * Servlet implementation class ForgotPassword
 */
@WebServlet("/ForgotPassword")

public class ForgotPassword extends HttpServlet {

	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public ForgotPassword() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("Email");
		PrintWriter out = response.getWriter();
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false", "root", "16283");
			PreparedStatement ps = con.prepareStatement("select * from newuser where email=?");
			ps.setString(1, email);

			ResultSet result = ps.executeQuery();
			if (result.next()) {
				String password = result.getString(7);
				SessionBean.sendmail("shopholicStop@gmail.com", "shopholicStop", "rajeshsagar657", email,
						"Forgot password from Shopholic Stop and your password is", password);

				out.write("Your password is sent to your Email address");

			} else {
				out.write("You are not a user of Shopaholic Stop ! Please Register!");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
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
