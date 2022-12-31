<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user1" class="beans.User" scope="session"></jsp:useBean>
<jsp:setProperty property="*" name="user1"/>
<%
String action = request.getParameter("action");
if (action != null && action.equals("formsubmit")){
	
	if(user1.validate()){
		getServletContext().getRequestDispatcher("/Controller").forward(request, response);
	}
}
%>

<h2><jsp:getProperty property="message" name="user1" /></h2>
 <!--  Luu du lieu bang form -->
	<form action="/Forms/selfvalidatingform.jsp" method="post">
		<p> <input type="hidden" name="action" value= "formsubmit"></p>
		<p>User name: <input type="text" name = "email" value="<jsp:getProperty property="email" name="user1" />" /></p>
		
		<p>Password: <input type="text" name = "password" value="<jsp:getProperty property="password" name="user1" />"/></p>
		
		<input type="submit" value = "Submit" />
	
	</form>
</body>
</html>