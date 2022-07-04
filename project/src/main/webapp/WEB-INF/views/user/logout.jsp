<%@page import="javax.tools.DocumentationTool.Location"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP Title</title>
</head>
<body>
	<%
		session.removeAttribute("user");
		out.print("<script>");
		out.print("alert('로그아웃 되었습니다.');");
    	out.print("location.href = '/project/';");
		out.print("</script>");
	%>
</body>
</html>