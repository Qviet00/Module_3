<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/3/2022
  Time: 8:55 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View user</title>
</head>
<body>
<h1>User details</h1>
<p>
    <a href="/users">Back to user list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["user"].getName()}</td>
    </tr><tr>
    <td>Email: </td>
    <td>${requestScope["user"].getEmail()}</td>
</tr>
    <tr>
        <td>Coutry: </td>
        <td>${requestScope["user"].getCountry()}</td>
    </tr>
    <tr>
        <td>Phone: </td>
        <td>${requestScope["user"].getPhone()}</td>
    </tr>
</table>
</body>
</html>
