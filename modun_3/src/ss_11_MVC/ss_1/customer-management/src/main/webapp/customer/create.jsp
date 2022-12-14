<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 9:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Create new customer</title>
  <style>
    .message{
      color:green;
    }
  </style>
</head>
<body>
<h1>Create new customer</h1>
<p>
  <c:if test='${requestScope["message"] != null}'>
    <span class="message">${requestScope["message"]}</span>
  </c:if>
</p>
<p>
  <a href="/customers">Back to customer list</a>
</p>
<form method="post">
  <fieldset>
    <legend>Customer information</legend>
    <table>
      <tr>
        <td>Name: </td>
        <td><input type="text" name="name" id="name"></td>
      </tr>
      <tr>
        <td>Model: </td>
        <td><input type="text" name="model" id="model"></td>
      </tr>
      <tr>
        <td>Startus: </td>
        <td><input type="text" name="startus" id="startus"></td>
      </tr>
      <tr>
        <td>Price: </td>
        <td><input type="text" name="price" id="price"></td>
      </tr>
      <tr>
        <td></td>
        <td><input type="submit" value="Create customer"></td>
      </tr>
    </table>
  </fieldset>
</form>
</body>
</html>
