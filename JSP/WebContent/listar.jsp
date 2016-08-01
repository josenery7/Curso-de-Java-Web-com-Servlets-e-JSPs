<%@page import="java.util.Set"%>
<%@page import="java.util.Properties"%>
<%@page import="java.io.InputStream"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Listagem do arquivo props.txt</title>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<%!Properties props = new Properties();%>

	<%
		InputStream is = application.getResourceAsStream("/WEB-INF/props.txt");
		props.load(is);
		is.close();
		Set<Object> keys = props.keySet();
	%>

	<table border="1" width="100%">
		<tr>
			<td><strong>Nome</strong></td>
			<td><strong>Valor</strong></td>
		</tr>

		<%
			for (Object k : keys) {
		%>
		<tr>
			<td><%=k %></td>
			<td><%=props.getProperty((String)k) %></td>
		</tr>
		<%
			}
		%>
	</table>

</body>
</html>