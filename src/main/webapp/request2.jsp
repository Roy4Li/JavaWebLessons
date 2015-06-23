<%@ page contentType="text/html;charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<%@ page import="java.util.Enumeration"%>
<html>
<head>
<title>request对象_例2</title>
</head>
<body bgcolor="#FFFFF0">
	<form action="" method="post">
		用户名：<input type="text" name="username">&nbsp;&nbsp; 密 码：<input
			type="text" name="userpass">&nbsp;&nbsp; <input type="submit"
			value="进入">
	</form>
	<%
		String str = "";
		if (request.getParameter("username") != null
				&& request.getParameter("userpass") != null) {
			Enumeration enumt = request.getParameterNames();
			while (enumt.hasMoreElements()) {
				str = enumt.nextElement().toString();
				out.println(str + ":" + request.getParameter(str) + "<br>");
			}
		}
	%>
</body>
</html>
