package lesson4;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.*;
import javax.servlet.http.*;

public class ScoreQuery extends HttpServlet {

	private static String dbDriver = "com.mysql.jdbc.Driver";
	private static String url = "jdbc:mysql://127.0.0.1:3306/course";
	private static String user = "enjoy";
	private static String pwd = "";
	private static String sqlQuery = "select * from book where book_id=1";

	public int getMathScore(String name) {
		int mathScore = -1;
		try {
			Class.forName(dbDriver);
			Connection conn = DriverManager.getConnection(url, user, pwd);
			Statement stmt = conn.createStatement();
			// execute sql query
			sqlQuery = "SELECT * FROM score WHERE name = '" + name + "'";
			ResultSet rs = stmt.executeQuery(sqlQuery);
			if (rs.next()) {
				mathScore = rs.getInt("math");
			}
		} catch (Exception e) {
			System.out.println(e);
			mathScore = -2; // database error
		}
		return mathScore;
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String reMsg = "";
		String name = req.getParameter("name");
		if (name == null)
			reMsg = "参数错误:不能为空";
		else {
			System.out.println("收到的参数：name :" + name);
			int mathScore = this.getMathScore(name);
			if (mathScore == -1)
				reMsg = "没有学生：" + name + "的数学成绩信息";
			else if(mathScore == -2)
				reMsg = "数据库错误，请稍后再试";
			else
				reMsg = "学生" + name + "的数学成绩为" + mathScore;
		}
		resp.setContentType("text/html;charset=utf-8");
		resp.getWriter().println("<html>");
		resp.getWriter().println("<head>");
		resp.getWriter().println("<meta charset=\"UTF-8\">");
		resp.getWriter().println("</head>");
		resp.getWriter().println("<title>数学成绩</title>");
		resp.getWriter().println("<body>" + reMsg + "</body>");
		resp.getWriter().println("</html>");
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		doGet(req, resp);
	}
}
