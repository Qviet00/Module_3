<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 9:17 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Deleting customer</title>
</head>
<body>
<h1>Delete customer</h1>
<p>
    <a href="/customers">Back to customer list</a>
</p>
<form method="post">
    <h3>Are you sure?</h3>
    <fieldset>
        <legend>Customer information</legend>
        <table>
            <tr>
                <td>Name:</td>
                <td>${requestScope["customer"].getName()}</td>
            </tr>
            <tr>
                <td>Model:</td>
                <td>${requestScope["customer"].getModel()}</td>
            </tr>
            <tr>
                <td>Startus:</td>
                <td>${requestScope["customer"].getStartus()}</td>
            </tr>
            <tr>
                <td>Price:</td>
                <td>${requestScope["customer"].getPrice()}</td>
            </tr>
            <tr>
                <td><input type="submit" value="Delete customer"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
