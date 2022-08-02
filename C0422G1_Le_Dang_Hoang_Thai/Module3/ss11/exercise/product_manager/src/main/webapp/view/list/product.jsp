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
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Title</title>
    <%--    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.min.css">--%>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<style>

    button:hover {
        font-weight: inherit;
        background: #dde0e3;
    }
</style>
<body>
<nav class="navbar navbar-light bg">
    <div class="container-fluid">
        <a style="color:#dc3545 " class="navbar-brand">
            <h1 class="bg-light" style="border: 1px black;border-radius: 13px;box-shadow: 1px 2px 2px 3px">Product
                List</h1></a>
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
        <th colspan="5">producer</th>
    </tr>
    <c:forEach var="product" items="${list}">
        <tr>
            <td>${product.productId}</td>
            <td>${product.productName}</td>
            <td><fmt:formatNumber value=" ${product.productPrice}" type="number" pattern="###,###"/></td>
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
            <td>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                        data-bs-target="#exampleModal-${product.productId}">
                    Launch demo modal
                </button>
            </td>
            <!-- Modal -->
            <div class="modal fade" id="exampleModal-${product.productId}" tabindex="-1"
                 aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            ...
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                            <a href="/Product?action=delete&id=${product.productId}">
                                <button class="btn btn-primary">delete</button>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </tr>
    </c:forEach>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
        integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
        integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
        crossorigin="anonymous"></script>
</body>

</html>
