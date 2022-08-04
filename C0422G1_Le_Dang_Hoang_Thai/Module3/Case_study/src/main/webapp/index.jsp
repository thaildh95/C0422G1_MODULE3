<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2022
  Time: 9:03 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/other/bootstrap/css/bootstrap.min.css">
    <style>
        body{
            background-image: url("https://images.pexels.com/photos/1024967/pexels-photo-1024967.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1");
        }
        img{
            width: 50px;
            height: 70px;
        }
        .head {
            height: 80px;
        }

        .body {

        }

        .foot {
            height: 50px;
        }
    </style>
</head>

<body>
<div class="row container-fluid head">
    <div class="col-lg-6">
        <img src="https://furamavietnam.com/wp-content/uploads/2018/10/logo.png" alt="">
    </div>
    <div class="col-lg-6 ">
        <div class="row m-lg-2">
            <div class="col-lg-3">
                <p class="m-lg-2">Login</p>
            </div>
            <div class="col-lg-3">
                <div class="row">
                    <div class="col-lg-12">
                       <p class="m-lg-2">register</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<nav class="navbar navbar-expand-lg navbar-light container sticky-top">
    <div class="container-fluid bg-transparent ">
        <a class="navbar-brand" href="/furama">Home</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false"
                aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNavDropdown">
            <ul class="navbar-nav">
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink1" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Dịch Vụ
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="/furama?action=displayServiceList">Danh sách dịch vụ</a></li>
                        <li><a class="dropdown-item" href="/furama?action=displayAddService">Thêm mới dich vụ</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa dịch vụ</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>

                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink3" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Khách Hàng
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="/furama?action=displayCustomerList">Danh sách khách hàng</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới khách hàng</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa khách hàng</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink2" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Nhân viên
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="/furama?action=displayEmployeeList">Danh sách nhân viên</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới nhân viên</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa nhân viên</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink4" role="button"
                       data-bs-toggle="dropdown" aria-expanded="false">
                        Hợp đồng
                    </a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
                        <li><a class="dropdown-item" href="#">Thêm mới hợp đồng</a></li>
                        <li><a class="dropdown-item" href="#">Chỉnh sửa chỉnh sửa</a></li>
                        <%--                <li><a class="dropdown-item" href="#">Xóa dịch vụ</a></li>--%>
                    </ul>
                </li>
            </ul>
        </div>
        <nav class="navbar navbar-light ">
            <div class="container-fluid">
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-primary" type="submit">Search</button>
                </form>
            </div>
        </nav>
    </div>
</nav>
<div class="row container-fluid">
    <div class="col-lg-12">
    </div>
</div>


</div>

<div class="row container">
    <div class="col-lg-3">
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="card bg-transparent" style="width: 15rem;">--%>
<%--                    <img src="https://www.gannett-cdn.com/-mm-/05b227ad5b8ad4e9dcb53af4f31d7fbdb7fa901b/c=0-64-2119-1259/local/-/media/USATODAY/USATODAY/2014/08/13/1407953244000-177513283.jpg" class="card-img-top" alt="...">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Garden Superior</h5>--%>
<%--                        <p class="card-text">40m²•Garden </p>--%>
<%--                        <a href="#" class="btn btn-primary">Đặt phòng</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="card" style="width: 15rem;">--%>
<%--                    <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/722773/722773/160407105.jpg?auto=format,compress&fit=crop&crop=entropy&w=1322&q=75" class="card-img-top" alt="...">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Garden Superior</h5>--%>
<%--                        <p class="card-text">40m²•Garden </p>--%>
<%--                        <a href="#" class="btn btn-primary">Đặt phòng</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="card" style="width: 15rem;">--%>
<%--                    <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/722773/722773/160407105.jpg?auto=format,compress&fit=crop&crop=entropy&w=1322&q=75" class="card-img-top" alt="...">--%>
<%--                    <div class="card-body">--%>
<%--                        <h5 class="card-title">Garden Superior</h5>--%>
<%--                        <p class="card-text">40m²•Garden </p>--%>
<%--                        <a href="#" class="btn btn-primary">Đặt phòng</a>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>

    </div>
    <div class="col-lg-9">

            </div>
        </div>
    </div>

</div>

<div class="row">
    <div class="col-lg-12">footer</div>
</div>
<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>

</html>
