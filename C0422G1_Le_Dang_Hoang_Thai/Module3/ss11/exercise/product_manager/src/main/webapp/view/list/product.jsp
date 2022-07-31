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
<%--    <link rel="stylesheet" href="C0422G1_Le_Dang_Hoang_Thai/Module3/ss11/exercise/product_manager/bootstrap-5.0.2-dist/css/bootstrap.min.css">--%>
<%--    <link rel="stylesheet" href="C0422G1_Le_Dang_Hoang_Thai/Module3/ss11/exercise/product_manager/bootstrap-5.0.2-dist/js/bootstrap.min.js">--%>
    <link rel="stylesheet" href="C:\CODEGYM\module_3\C0422G1_Le_Dang_Hoang_Thai\Module3\ss11\exercise\product_manager\src\main\webapp\view\bootstrap-5.0.2-dist\css\bootstrap.css">
    <link rel="stylesheet" href="C:\CODEGYM\module_3\C0422G1_Le_Dang_Hoang_Thai\Module3\ss11\exercise\product_manager\src\main\webapp\view\bootstrap-5.0.2-dist\js\bootstrap.js">
</head>
<style>
    #add button:hover {
        background: bisque;
    }
</style>
<body>
<h1> Trang danh sách</h1>
<a id="add" href="/Product?action=add">
    <button>add product</button>
</a>

<form action="/Product" method="post">
    <input type="text" name="productName" placeholder="Search">
    <button type="submit" name="action" value="search">Submit</button>

</form>
<c:if test="${message1!=null}">
    <p>${message1}</p>
</c:if>
<table class="table">
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
            <td><a href="/Product?action=edit&id=${product.productId}">
                <button>edit</button>
            </a></td>
            <td><a href="/Product?action=delete&id=${product.productId}">
                <button>delete</button>
            </a></td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
