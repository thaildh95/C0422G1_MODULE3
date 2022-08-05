<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2022
  Time: 11:20 PM
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
        #logo{
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
        <img id="logo" src="https://furamavietnam.com/wp-content/uploads/2018/10/logo.png" alt="">
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
        <a class="navbar-brand" href="#">Home</a>
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
                        <li><a class="dropdown-item" href="#">Danh sách dịch vụ</a></li>
                        <li><a class="dropdown-item" href="#">Thêm mới dich vụ</a></li>
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
                        <li><a class="dropdown-item" href="http://localhost:8080/view/crud/list-customer.jsp">Danh sách khách hàng</a></li>
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
                        <li><a class="dropdown-item" href="http://localhost:8080/view/crud/list-employee.jsp">Danh sách nhân viên</a></li>
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
<div class="container">
    <div class="row">
            <div class="card-group">
                <div class="card">
                    <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/723975/723975/FV_Livingroom_Two_Bedroom_Villa.jpg?auto=format,compress&fit=crop&crop=entropy&w=1322&q=75" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://tbb-prod-apac.imgix.net/attachments/room_type_photos/images/724017/724017/Bedroom.jpg?auto=format,compress&fit=crop&crop=entropy&w=1322&q=75" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This card has supporting text below as a natural lead-in to additional content.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
                <div class="card">
                    <img src="https://nhakhoagiadinh.com.vn/anhr-phong-canh-dep/imager_2_78744_700.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Card title</h5>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This card has even longer content than the first to show that equal height action.</p>
                        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                    </div>
                </div>
            </div>
        </div>
</div>

</body>
</html>
