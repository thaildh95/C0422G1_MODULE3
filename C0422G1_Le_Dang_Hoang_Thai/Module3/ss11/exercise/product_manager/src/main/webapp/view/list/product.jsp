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
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.min.css">

</head>
<style>

    button:hover{
        font-weight: inherit;
        background: #dde0e3;
    }
</style>
<body>
<nav class="navbar navbar-light bg">
    <div class="container-fluid">
        <a  style="color:#dc3545 " class="navbar-brand">
            <h1 class="bg-light" style="border: 1px black;border-radius: 13px;box-shadow: 1px 2px 2px 3px">Product List</h1></a>
        <a id="add" href="/Product?action=add">
            <button class="btn btn-primary">add product</button>
        </a>
        <form class="d-flex" action="/Product" method="post">

            <input type="text" name="productName" placeholder="Search">
            <button type="submit" class="btn btn-primary" name="action" value="search">Submit</button>

        </form>
        </form>
    </div>
</nav>

<c:if test="${message1!=null}">
    <p>${message1}</p>
</c:if>
<table class="table table-dark table-hover">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>prices</th>
        <th>description</th>
        <th colspan="4">producer</th>
    </tr>
    <c:forEach var="product" items="${list}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td>${product.productPrice}</td>
            <td>${product.productDescription}</td>
            <td>${product.producerName}</td>
            <td>
                <a href="/Product?action=edit&id=${product.productId}">
                <button class="btn btn-primary" name="action" value="submit">edit</button>
            </a>
            </td>

            </a>
            </td>
            <td><a href="/Product?action=delete&id=${product.productId}">
                <button class="btn btn-primary">delete</button>
            </a>
            </td>

            <td><a href="/Product?action=detail&id=${product.productId}">
                <button name="action" value="detail" class="btn btn-primary">detail</button>
            </a>
            </td>
            <div>
<%--            <td>--%>
<%--                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${product.productId}">--%>
<%--                    Delete--%>
<%--                </button>--%>

<%--                <!-- Modal -->--%>
<%--                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">--%>
<%--                    <div class="modal-dialog">--%>
<%--                        <div class="modal-content">--%>
<%--                            <div class="modal-header">--%>
<%--                                <h5 class="modal-title" id="exampleModalLabel">Warning</h5>--%>
<%--                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>--%>
<%--                            </div>--%>
<%--                            <div class="modal-body">--%>
<%--                                    Do you want to delete this product : ${product.productName}--%>
<%--                            </div>--%>
<%--                            <div class="modal-footer">--%>
<%--                                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Yes</button>--%>
<%--                                <button type="button" class="btn btn-primary">No</button>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </td>--%>
           </div>
        </tr>
    </c:forEach>
    <!-- Button trigger modal -->

</table>
<script src="../bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>

</html>
