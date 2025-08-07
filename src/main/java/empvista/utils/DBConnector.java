package empvista.utils;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnector {

	public static DBConnector dBConnector = null;

	private static Connection connection = null;

	private DBConnector() {
		
	}
	
	public static DBConnector getInstance()
	{
		if (dBConnector == null) {
			dBConnector = new DBConnector();
		}
		return dBConnector;
	}

	public static Connection getConnection() {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/employee-db"; 
			String username = "empmgmt"; // this is sensitive information
			String password = "empmgmt"; // //this is sensitive information
			connection = DriverManager.getConnection(url, username, password);   // most problematic line // takes time

		} catch (Exception e) {

			e.printStackTrace();
		}
		return connection;
	}

}
