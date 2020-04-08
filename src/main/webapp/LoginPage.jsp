<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>
<form action="loginServlet" method="post">
    <table>
        <tr>
            <td> UserName:</td>
            <td><input type="text" name="userName" placeholder="Enter Username" required></td>
        </tr>
        <tr>
            <td>Password:</td>
            <td><input type="password" name="userPassword" placeholder="Enter Password" required></td>
        </tr>
        <tr>
            <td><input type="submit" value="Login"></td>
        </tr>
    </table>
</form>
</body>
</html>
