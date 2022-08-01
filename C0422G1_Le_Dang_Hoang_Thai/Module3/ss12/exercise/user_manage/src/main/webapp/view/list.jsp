<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/1/2022
  Time: 7:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<a href="/user?action=add">thêm mới</a>
<form action="/sser?action=search" method="post">
    <input type="text" name="search">
    <button type="submit">tìm</button>
</form>
<a href="/user?action=sort">
    <button type="submit">Xắp xếp</button>
</a>
<table border="1px">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>country</th>
        <th>Update</th>
    </tr>
    <c:forEach var="user" items="${list}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><a href="/user?action=update&id=${user.id}">Edit</a></td>
            <td><a href="/user?action=delete&id=${user.id}">delete</a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>