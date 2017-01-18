<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

 	<link href='<c:url value="/resources/style.css" />' rel="stylesheet" type="text/css"> 
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>login</title>
</head>
<body>
<h1>Login</h1>

<form action="loginController" method="post">
<label>User Name : </label>
<input type="text" name="userid" />

<label>Password : </label>
<input type="password" name="password" />

<p>${message}</p>
<input type="submit" value="Login">
</form>


</body>
</html>