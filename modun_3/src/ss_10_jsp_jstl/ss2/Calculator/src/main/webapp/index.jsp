<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 9/29/2022
  Time: 3:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Calculator</title>
</head>
<body>
<form action="/Calculator" method="get">
    <h2>Simple Calculation</h2>
    <fieldset>
        <legend>Calculator</legend>
        <table>
            <tr>
                <td>First operand</td>
                <td><label>
                    <input name="first" type="text">
                </label></td>
            </tr>
            <tr>
                <td>Operator</td>
                <td>
                    <label>
                        <select name="operation">
                            <option value="Addition">Addition</option>
                            <option value="Subtraction">Subtraction</option>
                            <option value="Multiplication">Multiplication</option>
                            <option value="Division">Division</option>
                        </select>
                    </label>
                </td>
            </tr>
            <tr>
                <td>Second operand</td>
                <td><label>
                    <input name="second" type="text">
                </label></td>
            </tr>
            <tr>
                <td></td>
                <td>
                    <input type="submit" name="calculate" value="Calculate">
                </td>
            </tr>
        </table>
    </fieldset>
</form>
</body>
</html>