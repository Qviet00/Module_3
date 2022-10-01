<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View customer</title>
</head>
<body>
<h1>Customer details</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<table>
    <tr>
        <td>Name: </td>
        <td>${requestScope["customer"].getName()}</td>
    </tr><tr>
        <td>Model: </td>
        <td>${requestScope["customer"].getModel()}</td>
    </tr>
    <tr>
        <td>Startus: </td>
        <td>${requestScope["customer"].getStartus()}</td>
    </tr>
    <tr>
        <td>Price: </td>
        <td>${requestScope["customer"].getPrice()}</td>
    </tr>
</table>
</body>
</html>
