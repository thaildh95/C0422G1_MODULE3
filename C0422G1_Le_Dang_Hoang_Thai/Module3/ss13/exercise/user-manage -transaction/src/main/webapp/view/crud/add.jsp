<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/1/2022
  Time: 8:02 PM
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
<body><div class="mb-3" style="padding-top: 10px">
    <a href="/user"><button  style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit" class="btn btn-primary"  >Back to mainpage</button></a>

</div>

<c:if test="${message!=null}">
    <p>${message}</p>
</c:if>
<div style="width: 500px; margin: auto; height: 500px">
    <fieldset style="box-shadow: 1px 2px 3px 3px skyblue;background: bisque">
        <legend>User Info</legend>
        <form style="width: 400px; padding-top: 10px" action="/user"  method="post">
            <div class="mb-3" style="padding-top: 10px">
                <label for="id" class="form-label">User ID</label>
                <input required type="text" class="form-control" id="id" name="id" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="name" class="form-label">User Name</label>
                <input required type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="email" class="form-label">User Email</label>
                <input required type="text" class="form-control" id="email" name="email" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="country" class="form-label">User Country</label>
                <input required type="text" class="form-control" id="country" name="country" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <button  style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit" class="btn btn-primary" name="action" value="add" >Submit</button>

            </div>
        </form>
    </fieldset>
</div>

<script src="../bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="../bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>