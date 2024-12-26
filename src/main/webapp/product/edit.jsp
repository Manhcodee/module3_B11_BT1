<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/26/2024
  Time: 9:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>Edit Product</title>
</head>
<body>
<h2 style="text-align: center;">Edit Product</h2>
<form action="/products" method="post">
    <input type="hidden" name="action" value="edit">
    <table style="margin: 20px auto;">
        <tr>
            <td>ID:</td>
            <td><input type="number" name="id" value="${product.id}" readonly></td>
        </tr>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name" value="${product.name}" required></td>
        </tr>
        <tr>
            <td>Price:</td>
            <td><input type="number" step="0.01" name="price" value="${product.price}" required></td>
        </tr>
        <tr>
            <td>Description:</td>
            <td><input type="text" name="description" value="${product.description}" required></td>
        </tr>
        <tr>
            <td>Manufacturer:</td>
            <td><input type="text" name="manufacturer" value="${product.manufacturer}" required></td>
        </tr>
        <tr>
            <td colspan="2" style="text-align: center;">
                <button type="submit">Update Product</button>
            </td>
        </tr>
    </table>
</form>
</body>
</html>
