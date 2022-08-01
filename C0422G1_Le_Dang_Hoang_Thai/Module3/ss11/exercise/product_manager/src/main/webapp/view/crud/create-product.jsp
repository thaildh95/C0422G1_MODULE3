<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/30/2022
  Time: 2:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.min.css">
    <style>
        legend{text-align: center}
        input{
            margin-left: 45px;
        }
    </style>
</head>
<body>
<c:if test="${message!=null}">
    <p>${message}</p>
</c:if>
<div style="width: 500px; margin: auto; height: 500px">
<fieldset style="box-shadow: 1px 2px 3px 3px skyblue;background: bisque">
    <legend>Product Info</legend>
<form style="width: 400px; padding-top: 10px" action="/Product"  method="post">
    <div class="mb-3" style="padding-top: 10px">
        <label for="id" class="form-label">Product ID</label>
        <input type="text" class="form-control" id="Id" name="productId" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" style="padding-top: 10px">
        <label for="name" class="form-label">Product Name</label>
        <input type="text" class="form-control" id="name" name="productName" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" style="padding-top: 10px">
        <label for="price" class="form-label">Product Price</label>
        <input type="text" class="form-control" id="price" name="productPrice" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" style="padding-top: 10px">
        <label for="description" class="form-label">Product Description</label>
        <input type="text" class="form-control" id="description" name="productDescription" aria-describedby="emailHelp">
    </div>
    <div class="mb-3" style="padding-top: 10px">
        <label for="producer" class="form-label">Producer Name</label>
        <input type="text" class="form-control" id="producer" name="producerName" aria-describedby="emailHelp"><br>

    <button  style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit" class="btn btn-primary" name="action" value="add" >Submit</button>
        <a class="btn btn-light" href="/Product"><button>Back To Mainpage</button></a>
    </div>
</form>
</fieldset>
</div>




<script src="../bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
