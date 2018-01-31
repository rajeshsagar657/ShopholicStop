package com.shopolic.productDescribtion;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/DisplayDesc")
public class DisplayDesc extends HttpServlet {
	byte[] image;
	int imgData;

	private static final long serialVersionUID = 1L;
	Connection con;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String imageId = request.getParameter("id");

			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false", "root", "16283");
			PreparedStatement ps = con.prepareStatement("select * from item where id=" + imageId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				String desc = rs.getString(6);

				PrintWriter ou = response.getWriter();
				ou.println(desc);

			}

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
		}
	}
}
