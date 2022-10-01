<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 9:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Customer List</title>
</head>
<body>
<h1>Customers</h1>
<p>
    <a href="/customers?action=create">Create new customer</a>
</p>
<form action="/customers?action=search">
<input type="text" name="nameSearch" placeholder="Nhập tên sản phẩm cần tìm" style="margin-right: 20px">
<input type="submit" name="action" value="Search" style="margin-right: 20px">
</form>
<table border=1>
    <tr>
        <td>Name</td>
        <td>Model</td>
        <td>Startus</td>
        <td>Price</td>
        <td>Edit</td>
        <td>Delete</td>
    </tr>
    <c:forEach items='${requestScope["customers"]}' var="customer">
        <tr>
            <td><a href="/customers?action=view&id=${customer.getId()}">${customer.getName()}</a></td>
            <td>${customer.getModel()}</td>
            <td>${customer.getStartus()}</td>
            <td>${customer.getPrice()}</td>
            <td><a href="/customers?action=edit&id=${customer.getId()}">Edit</a></td>
            <td><a href="/customers?action=delete&id=${customer.getId()}">Delete</a></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
