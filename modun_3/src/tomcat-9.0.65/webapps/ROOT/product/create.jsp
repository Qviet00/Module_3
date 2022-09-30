<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 11:34 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Thêm sản phẩm</title>

    <style>
        .message{
            color:green;
        }
        body {
            background-color: #e3e3ff;
            font-family: Arial, sans-serif
        }
        a{
            text-decoration: none;
        }
        a:hover {
            text-decoration: underline;
            color: blue;
        }
    </style>
</head>
<body>
<h3>Thêm thông tin sản phẩm</h3>
<p>
    <c:if test='${requestScope["message"] != null}'>
        <span class="message">${requestScope["message"]}</span>
    </c:if>
</p>
<p>
    <a href="/product">Home</a>
</p>
<form method="post">
    <fieldset>
        <legend>Thông tin sản phẩm</legend>
        <table>
            <tr>
                <td>Mã sản phẩm: </td>
                <td><input type="number" name="id" id="id"></td>
            </tr>
            <tr>
                <td>Tên sản phẩm: </td>
                <td><input type="text" name="productName" id="productName"></td>
            </tr>
            <tr>
                <td>Giá tiền: </td>
                <td><input type="number" name="price" id="price"></td>
            </tr>
            <tr>
                <td>Mô tả: </td>
                <td><input type="text" name="description" id="description"></td>
            </tr>
            <tr>
                <td>Hãng sản xuất: </td>
                <td><input type="text" name="producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Thêm sản phẩm"></td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>
