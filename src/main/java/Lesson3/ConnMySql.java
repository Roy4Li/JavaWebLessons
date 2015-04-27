package Lesson3;

import java.sql.*;

public class ConnMySql {
	private static String dbDriver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/course";
	private static String user = "enjoy";
	private static String pwd = "";
	private static String sqlQuery = "select * from book where book_id=1";
	private static String sqlUpdate = "update book set price=100 where book_id=1";
	public static void main(String[] args) {
		try {
//			Class.forName(dbDriver);
			Connection conn = DriverManager.getConnection(url, user, pwd);
			Statement stmt = conn.createStatement();
			// execute sql query
			ResultSet rs = stmt.executeQuery(sqlQuery);
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t"
						+ rs.getString(3) + "\t" + rs.getString(4) + "\t"
						+ rs.getString(5) + "\t" + rs.getString(6) + "\t"
						+ rs.getString("publisher"));
			}
			
			// execute sql update
			int affectedNum = stmt.executeUpdate(sqlUpdate);
			System.out.println("影响到"+ affectedNum + "行\r\n");
			// query again 
			rs = stmt.executeQuery(sqlQuery);
			while (rs.next()) {
				System.out.println(rs.getInt(1) + "\t" + rs.getString(2) + "\t"
						+ rs.getString(3) + "\t" + rs.getString(4) + "\t"
						+ rs.getString(5) + "\t" + rs.getString(6) + "\t"
						+ rs.getString("publisher"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
	}
}
