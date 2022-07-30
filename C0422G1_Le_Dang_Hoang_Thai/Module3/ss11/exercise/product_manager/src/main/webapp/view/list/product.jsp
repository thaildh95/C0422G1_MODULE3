<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/29/2022
  Time: 4:20 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--thư viện jstl--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<style>
    #add button:hover{
        background: bisque;
    }
</style>
<body>
<h1> Trang danh sách</h1>
<a id="add" href="/Product?action=add"><button>add product</button></a>

<table style="border: 1px black;box-shadow: 1px 2px 3px 3px;width: 600px;text-align: center" cellspacing="0" cellpadding="10">
    <tr>

        <th>id</th>
        <th>name</th>
        <th>prices</th>
        <th>description</th>
        <th>producer</th>
    </tr>
    <c:forEach var="product" items="${list}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.productPrice}</td>
            <td>${product.productDescription}</td>
            <td>${product.producerName}</td>
            <td><a href="/Product?action=edit&id=${product.productId}"><button>edit</button></a></td>
            <td><a href="/Product?action=delete&id=${product.productId}"><button>delete</button></a></td>
        </tr>
    </c:forEach>

</table>
</body>
</html>
