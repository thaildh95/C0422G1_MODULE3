<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/1/2022
  Time: 8:02 PM
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
        <form action="/user?action=update" method="post" style="width: 400px">
            <div class="mb-3" style="padding-top: 10px" >
                <label for="id" class="form-label" >User ID</label>
                <input required type="hidden"  class="form-control" id="id" aria-describedby="emailHelp" name="id" value="${user.id}">
            </div>
            <div class="mb-3" >
                <label for="name" class="form-label">User Name</label>
                <input required type="text" class="form-control" id="name" aria-describedby="emailHelp" name="name" value="${user.name}">
            </div>
            <div class="mb-3" >
                <label for="email" class="form-label">Email</label>
                <input required type="text" class="form-control" id="email" aria-describedby="emailHelp" name="email" value="${user.email}">
            </div>
            <div class="mb-3">
                <label for="country" class="form-label">Country</label>
                <input required type="text" class="form-control" id="country" aria-describedby="emailHelp" name="country" value="${user.country}">
            </div>
            <div class="mb-3">
                <button style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit"class="btn btn-primary">Submit</button>
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