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


    </style>
</head>

<body>
<%@include file="/view/include/head.jsp"%>
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
            <label for="name" class="form-label">Tên</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên" required>
        </div>
        <div class="col-md-12">
            <label for="dayOfBirth" class="form-label">Ngày sinh</label>
            <input type="date" class="form-control" id="dayOfBirth" name="dayOfBirth" placeholder="Ngày sinh" required>
        </div>

        <div class="col-md-12">
            <label for="gender" class="form-label">Giới tính</label>
            <input type="radio" class="form-control" id="gender" name="gender" placeholder="Giới tính" required>
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


<%@include file="/view/include/foot.jsp"%>


<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>