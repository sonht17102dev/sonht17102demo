<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%-- http://localhost:8085/Forms/formhandler.jsp?user=son&password=123 --%>
<jsp:useBean id="user" class="beans.UserUseBeanCollectData" scope="session" ></jsp:useBean>
<jsp:setProperty property="*" name="user"/>

User name: <%= user.getUser() %><br/>
Password: <%= user.getPassword() %>
</body>
</html>