package Lesson3;

import java.sql.*;

public class ConnMySql {
	private static String dbDriver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/course";
	private static String user = "enjoy";
	private static String pwd = "";
	private static String sqlQuery = "select * from book";

	public static void main(String[] args) {
		try {
			Class.forName(dbDriver);
			Connection conn = DriverManager.getConnection(url, user, pwd);
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sqlQuery);
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t"
						+ rs.getString(3) + "\t" + rs.getString(4) + "\t"
						+ rs.getString(5) + "\t" 
						+ rs.getString("publisher"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
