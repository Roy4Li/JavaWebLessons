<%@ page contentType="text/html;charset=utf-8"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<html>
<head>
<title>request对象_例3</title>
</head>
<body bgcolor="#FFFFF0">
	<form action="" method="post">
		擅长：<input type="checkbox" name="cb" value="ON1">VC++&nbsp; <input
			type="checkbox" name="cb" value="ON2">JAVA&nbsp; <input
			type="checkbox" name="cb" value="ON3">DELPHI&nbsp; <input
			type="checkbox" name="cb" value="ON4">VB&nbsp; <br> <input
			type="submit" value="进入" name="qwe">
	</form>
	<%
		if (request.getParameter("qwe") != null) {
			for (int i = 0; i < request.getParameterValues("cb").length; i++) {
				out.println("cb" + i + ":"
						+ request.getParameterValues("cb")[i] + "<br>");
			}
			out.println(request.getParameter("qwe"));
		}
	%>
</body>
</html>
