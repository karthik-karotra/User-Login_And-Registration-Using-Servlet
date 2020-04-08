<%--
  Created by IntelliJ IDEA.
  User: Admin/Karthik
  Date: 09-04-2020
  Time: 12:15 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<form action="loginServlet" method="post">
    UserName:<input type="text" name="userName">
    <br>
    Password:<input type="password" name="userPassword">
    <br>
    <input type="submit" value="Login">
</form>
</body>
</html>
