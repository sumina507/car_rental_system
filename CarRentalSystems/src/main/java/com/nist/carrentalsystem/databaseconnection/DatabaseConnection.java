package com.nist.carrentalsystem.databaseconnection;

import java.sql.*;
public class DatabaseConnection {
	
	public static Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager.getConnection("jdbc:mysql://localhost/car_rental_system","root","");
		
	}

}
