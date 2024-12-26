<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/26/2024
  Time: 9:13 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>View Product</title>
</head>
<body>
<h2 style="text-align: center;">Product Details</h2>
<table style="margin: 20px auto; border: 1px solid #ddd; padding: 10px;">
  <tr>
    <td>ID:</td>
    <td>${product.id}</td>
  </tr>
  <tr>
    <td>Name:</td>
    <td>${product.name}</td>
  </tr>
  <tr>
    <td>Price:</td>
    <td>${product.price}</td>
  </tr>
  <tr>
    <td>Description:</td>
    <td>${product.description}</td>
  </tr>
  <tr>
    <td>Manufacturer:</td>
    <td>${product.manufacturer}</td>
  </tr>
</table>
<a href="/products" style="display: block; text-align: center; margin-top: 20px;">Back to Product List</a>
</body>
</html>
