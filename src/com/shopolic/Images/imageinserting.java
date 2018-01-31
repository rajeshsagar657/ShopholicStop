package com.shopolic.Images;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class imageinserting {

	public static void main(String[] args) throws SQLException {
		imageinserting imgin = new imageinserting();
		imgin.insertImage();
	}

	public Connection getConnection() {
		Connection connection = null;

		try {
			Class.forName("com.mysql.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/siteregistration", "root", "16283");
		} catch (Exception e) {
			System.out.println("Error Occured While Getting the Connection: - " + e);
		}
		return connection;
	}

	public void insertImage() {
		Connection connection = null;
		PreparedStatement statement = null;
		FileInputStream inputStream = null;

		try {
			String desc="20MP+16MP primary dual camera and 16MP front facing camera\r\n" + 
					"-->>13.97 centimeters (5.5-inch) capacitive touchscreen FHD display with 1920 x 1080 pixels resolution.\r\n" + 
					"-->>Cover Glass:2.5D Corning Gorilla Glass 5\r\n" + 
					"-->>Android v7.1.1 Nougat OS with Qualcomm Snapdragon 835 octa core processor\r\n" + 
					"-->> 8 GB RAM, 128 GB internal memory and dual nano SIM dual-standby (4G+4G)\r\n" + 
					"-->> 3300mAH lithium Polymer battery with Dash Charge technology\r\n" + 
					"-->> Fingerprint scanner, all-metal unibody and NFC enabled\r\n" + 
					"-->> 1 year manufacturer warranty for device and 6 months manufacturer warranty for in-box accessories including batteries from the date of purchase";
			File image = new File("C:\\Users\\nisumconsuting\\Desktop\\onlineshopping\\sale16.jpg");
			inputStream = new FileInputStream(image);

			connection = getConnection();
			statement = connection.prepareStatement("insert into item values(?,?,?,?,?,?,?)");
			statement.setInt(1, 16);
			statement.setString(2, "shop");
			statement.setString(3, "1H7SD8S9HD");
			statement.setString(5, "clothing");
			statement.setInt(4, 1589);
			statement.setString(6, desc);
			statement.setBinaryStream(7, (InputStream) inputStream, (int) (image.length()));

			statement.executeUpdate();

		} catch (FileNotFoundException e) {
			System.out.println("FileNotFoundException: - " + e);
		} catch (SQLException e) {
			System.out.println("SQLException: - " + e);
		} finally {

			try {
				connection.close();
				statement.close();
			} catch (SQLException e) {
				System.out.println("SQLException Finally: - " + e);
			}

		}

	}

}