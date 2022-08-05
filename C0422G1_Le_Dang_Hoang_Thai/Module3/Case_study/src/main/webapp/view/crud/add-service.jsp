<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2022
  Time: 11:46 PM
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

<div class="container w-50 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
    <h3 align="center">THÊM MỚI DỊCH VỤ</h3>
    <form class="row g-3" action="" method="post">
        <div class="col-md-12">
            <label class="form-label">Loại dịch vụ</label>
            <select name=""  class="form-select" onchange="showForm(this.value)">
<%--                <option value="None" >Chọn loại dịch vụ</option>--%>
                <option value="Villa" >Villa</option>
                <option value="House" >House</option>
                <option value="Room" >Room</option>
            </select>
        </div>

        <div class="col-md-12">
            <label for="name" class="form-label">Tên dịch vụ</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên" required>
        </div>
        <div class="col-md-12">
            <label for="area" class="form-label">Diện tích sử dụng</label>
            <input type="text" class="form-control" id="area" name="area" placeholder="diện tích sử dụng" required>
        </div>
        <div class="col-md-12">
            <label for="cost" class="form-label">Chi phí thuê</label>
            <input type="text" class="form-control" id="cost"  name="cost" placeholder="chi phí thuê" required>
        </div>
        <div class="col-md-12">
            <label for="inputAddress2" class="form-label">Số lượng người tối đa </label>
            <input type="text" class="form-control" id="inputAddress2"  name="max_people" placeholder="số người tối đa" required >
        </div>
        <div class="col-md-12">
            <label for="inputCity" class="form-label">Kiểu thuê</label>
            <input type="text" class="form-control" id="inputCity" name="rent_type" placeholder="kiểu thuê" required>
        </div>
        <div class="col-md-12 " id="s1" style="display: none">
            <label for="room_standard" class="form-label">Tiêu chuẩn phòng </label>
            <input type="text" class="form-control" id="room_standard" name="room_standard" placeholder="tiêu chuẩn phòng" required>
        </div>

        <div class="col-md-12 " id="s2" style="display: none">
            <label for="description_other_convenience" class="form-label">Mô tả tiện nghi khác</label>
            <input type="text" class="form-control" id="description_other_convenience" name="description_other_convenience">
        </div>

        <div class="col-md-12 " id="s3" style="display: none">
            <label for="pool_area" class="form-label">Diện tích hồ bơi  </label>
            <input type="text" class="form-control" id="pool_area" name="pool_area">
        </div>

        <div class="col-md-12" id="s4" style="display: none">
            <label for="number_of_floors" class="form-label">Số tầng </label>
            <input type="text" class="form-control" id="number_of_floors" name="number_of_floors">
        </div>

        <div class="col-md-12 " id="s5" style="display: none">
            <label for="facility_free" class="form-label">Dịch vụ miễn phí đi kèm </label>
            <input type="text" class="form-control" id="facility_free" name="facility_free">
        </div>

        <div class="col-12 ">
            <button type="submit" class="btn btn-primary">Gửi</button>
        </div>
    </form>
</div>

<script>
    function showForm(value){

        switch (value){
            // case "None":
            //     document.getElementById("s1").style.display = "none";
            //     document.getElementById("s2").style.display = "none";
            //     document.getElementById("s3").style.display = "none";
            //     document.getElementById("s4").style.display = "none";
            //     document.getElementById("s5").style.display = "none";
            //     break;
            case "Villa":
                document.getElementById("s1").style.display = "block";
                document.getElementById("s2").style.display = "block";
                document.getElementById("s3").style.display = "block";
                document.getElementById("s4").style.display = "block";
                document.getElementById("s5").style.display = "none";
                break;
            case "House":
                document.getElementById("s1").style.display = "block";
                document.getElementById("s2").style.display = "block";
                document.getElementById("s3").style.display = "block";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "none";
                break;

            case "Room":
                document.getElementById("s1").style.display = "none";
                document.getElementById("s2").style.display = "none";
                document.getElementById("s3").style.display = "none";
                document.getElementById("s4").style.display = "none";
                document.getElementById("s5").style.display = "block";

        }

    }
</script>

<script src="/bootstrap/js/bootstrap.min.js"></script>
<script src="/bootstrap/js/jquery-3.6.0.min.js"></script>
</body>
</html>