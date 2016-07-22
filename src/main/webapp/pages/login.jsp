<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: david.petrosyan
  Date: 7/21/2016
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <script src="/js/jquery-3.1.0.js"></script>
</head>
<body>

    <c:url var="postUrl" value='/login.htm' />
    <form name='login' action="${postUrl}" method='POST'>
        <table>
            <tr>
                <td>UserName:</td>
                <td><input type='text' id="username" name='username' value=''></td>
            </tr>
            <tr>
                <td>Password:</td>
                <td><input type='password' id="password" name='password' /></td>
            </tr>
            <tr>
                <%--<td colspan='2'><input name="submit" type="submit" value="submit" onclick="login();"/></td>--%>
                <td colspan='2'><input name="submit" type="submit" value="submit"/></td>
            </tr>
        </table>
    </form>

    <script type="text/javascript">

    function login() {
        var userName = $("#username").val();
        var password = $("#password").val();

        $.ajax({
            url: '/login.htm',
            type: 'POST',
            data: JSON.stringify({username : userName, password : password}),
            contentType: 'application/json; charset=utf-8',
            dataType: 'json',
            async: true,
            success: function(msg) {
                alert(msg);
            },
            error: function(err) {
                alert(err);
            }

        });

    }

    </script>


</body>
</html>
