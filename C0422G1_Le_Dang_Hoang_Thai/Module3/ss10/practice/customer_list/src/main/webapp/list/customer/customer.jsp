<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/28/2022
  Time: 2:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh Sách Khách Hàng</title>
</head>
<body>
<h1 style="text-align: center">Danh sách khách hàng</h1>
<table  cellpadding="10" cellspacing="0" style="box-shadow: 1px 2px 3px 3px deepskyblue;margin: auto;border: 3px lightblue">
    <tr>
        <th>Họ và Tên</th>
        <th>Ngày Sinh</th>
        <th>Địa Chỉ</th>
        <th>Avatar</th>

    </tr>
    <c:forEach var="customer" items="${customerList}">
    <tr>
        <td>${customer.name}</td>
        <td>${customer.dayOfBirth}</td>
        <td>${customer.address}</td>
        <td><img src="${customer.avatar}" style="width: 40px;height: 30px" alt=""></td>

    </tr>

    </c:forEach>

</table>
</body>
</html>
