package com.shopolic.Images;

import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;

@WebServlet("/DisplayImage")
public class DisplayImage extends HttpServlet {
	byte[] image;
	int imgData;

	private static final long serialVersionUID = 1L;
	Connection con;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		try {
			String imageId = request.getParameter("id");

			OutputStream o = response.getOutputStream();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = (Connection) DriverManager.getConnection(
					"jdbc:mysql://localhost:3306/siteregistration?autoReconnect=true&useSSL=false", "root", "16283");
			PreparedStatement ps = con.prepareStatement("select * from item where id=" + imageId);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				

				image = rs.getBytes(7);
				response.setContentType("image/jpg");
				/* imgData = image.length; */
				/*
				 * File fi = new File("myfile.jpg"); byte[]
				 * fileContent=Files.readAllBytes(fi.toPath());
				 */

				o.write(image);

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