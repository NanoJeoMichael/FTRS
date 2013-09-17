<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<%
session.setAttribute("loged", "false");
session.setAttribute("client", null);
response.sendRedirect("client.jsp");
%>
</html>