<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 10/6/2022
  Time: 10:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1 style="color: darkviolet">User Management</h1>
    <h3>
        <a href="/customer?action=create" style="color: chartreuse">Add New User</a>
    </h3>
    <h3>
        <a href="/view/home.jsp" style="color: chartreuse">Back Home</a>
    </h3>
</center>
<center>
    <form action="/customer?action=search">
        <input type="text" name="nameSearch" placeholder="Nhập tên cần tìm" style="margin-right: 40px">
        <input type="submit" name="action" value="Search" style="margin-right: 40px">
    </form>
    <c:if test="${listCustomer.size() ==0 }">
        <p>Không tìm thấy </p>
    </c:if>
</center>

<div align="center">
    <table border="1" cellpadding="5">
        <caption><h2>List of Customer</h2></caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Brithday</th>
            <th>Gender</th>
            <th>CMND</th>
            <th>Phone</th>
            <th>Email</th>
            <th>Address</th>
            <th>Typeid</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach var="customer" items="${listCustomer}">
            <tr>
                <td><c:out value="${customer.customerId}"/></td>
                <td><c:out value="${customer.customerName}"/></td>
                <td><c:out value="${customer.customerBirthday}"/></td>
                <td><c:out value="${customer.customerGender}"/></td>
                <td><c:out value="${customer.customerIdCard}"/></td>
                <td><c:out value="${customer.customerPhone}"/></td>
                <td><c:out value="${customer.customerEmail}"/></td>
                <td><c:out value="${customer.customerAddress}"/></td>
                <td><c:out value="${customer.customerTypeId}"/></td>
                <td><a href="/customer?action=edit&id=${customer.customerId}">Edit</a></td>
                <td><a href="/customer?action=delete&id=${customer.customerId}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</div>
</body>
</html>
