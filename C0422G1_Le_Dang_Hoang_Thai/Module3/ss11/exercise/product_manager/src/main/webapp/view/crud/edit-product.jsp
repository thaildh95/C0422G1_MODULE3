<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/30/2022
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<style>
    input{
        margin-left: 45px;
    }
    label{
        text-align: center;
    }
    legend{
        text-align: center;
    }
</style>
<body>
<c:if test="${messege!=null}">
    <p>${messsege}</p>
</c:if>
<div style="width: 500px; margin: auto; height: 500px">
    <fieldset style="box-shadow: 1px 2px 3px 3px skyblue;background: bisque">
        <legend>Product Info</legend>
        <form action="/Product" method="post" style="width: 400px">
            <div class="mb-3" style="padding-top: 10px" disabled>
                <label for="id" class="form-label" >Product ID</label>
                <input required type="text" class="form-control" id="Id" aria-describedby="emailHelp" name="id">
            </div>
            <div class="mb-3" >
                <label for="name" class="form-label">Product Name</label>
                <input required type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name">
            </div>
            <div class="mb-3" >
                <label for="price" class="form-label">Product Price</label>
                <input required type="text" class="form-control" id="price" aria-describedby="emailHelp" name="price">
            </div>
            <div class="mb-3">
                <label for="description" class="form-label">Product Description</label>
                <input required type="text" class="form-control" id="description" aria-describedby="emailHelp" name="description">
            </div>
            <div class="mb-3">
                <label for="producer" class="form-label">Producer Name</label>
                <input required type="text" class="form-control" id="producer" aria-describedby="emailHelp" name="producer"><br>

                <button style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit"  name="action" value="edit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </fieldset>
</div>
<p>
    <a href="/Product"><button>Quay về trang chủ</button></a>
</p>
<script src="../bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>
