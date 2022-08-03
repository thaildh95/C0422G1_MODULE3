
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
    <link rel="stylesheet" href="view/bootstrap-5.0.2-dist/css/bootstrap.min.css">
</head>
<body>
<nav class="navbar navbar-light bg">
    <div class="container-fluid">
        <a  style="color:#dc3545 " class="navbar-brand">
            <h1 class="bg-light" style="border: 1px black;border-radius: 13px;box-shadow: 1px 2px 2px 3px">User List</h1></a>
        <div class="mb-3" style="padding-top: 10px">
            <a href="/user?action=add"><button  style="padding-top: 10px;margin-left: 200px;margin-top: 10px" type="submit" class="btn btn-primary" >Add New User</button></a>


        </div>
        <form class="d-flex" action="/user?action=search" method="post">

            <input type="text" name="country" placeholder="Search">
            <button type="submit" class="btn btn-primary" name="action" value="search">Submit</button>

        </form>
        </form>
    </div>
</nav>
<table class="table table-striped">
    <tr>
        <th>id</th>
        <th>name</th>
        <th>email</th>
        <th>country</th>
    </tr>
    <c:forEach var="user" items="${list}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.country}</td>
            <td><a href="/user?action=update&id=${user.id}">Edit</a></td>


            <td>
                <!-- Button trigger modal -->
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal-${user.id}">
                    Launch demo modal
                </button>

                <!-- Modal -->


            </td>
        </tr>
    </c:forEach>


    <div class="modal fade" id="exampleModal-${user.id}" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    do you want to delete this user?
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-danger" onclick="location.href='/user?action=delete&id=${user.id}';"> Delete</button>
                </div>
            </div>
        </div>
    </div>

</table>




<script src="/view/bootstrap-5.0.2-dist/jquery/jquery-3.6.0.min.js"></script>
<script src="/view/bootstrap-5.0.2-dist/js/bootstrap.min.js"></script>
</body>
</html>