<%--
  Created by IntelliJ IDEA.
  User: manh
  Date: 12/26/2024
  Time: 9:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <title>Product List</title>
  <style>
    table {
      width: 80%;
      margin: 20px auto;
      border-collapse: collapse;
    }
    th, td {
      padding: 10px;
      text-align: center;
      border: 1px solid #ddd;
    }
    th {
      background-color: #4CAF50;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
  </style>
</head>
<body>
<h2 style="text-align: center;">Product List</h2>

<form action="/products" method="get" style="text-align: center; margin-bottom: 20px;">
  <input type="hidden" name="action" value="search">
  <input type="text" name="search" placeholder="Search by name..." required>
  <button type="submit">Search</button>
</form>

<a href="/products?action=create" style="display: block; text-align: center; margin-bottom: 20px;">Add New Product</a>

<table>
  <thead>
  <tr>
    <th>ID</th>
    <th>Name</th>
    <th>Price</th>
    <th>Description</th>
    <th>Manufacturer</th>
    <th>Actions</th>
  </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${products}">
    <tr>
      <td>${product.id}</td>
      <td>${product.name}</td>
      <td>${product.price}</td>
      <td>${product.description}</td>
      <td>${product.manufacturer}</td>
      <td>
        <a href="/products?action=view&id=${product.id}">View</a> |
        <a href="/products?action=edit&id=${product.id}">Edit</a> |
        <a href="/products?action=delete&id=${product.id}" onclick="return confirm('Are you sure?');">Delete</a>
      </td>
    </tr>
  </c:forEach>
  </tbody>
</table>
</body>
</html>

