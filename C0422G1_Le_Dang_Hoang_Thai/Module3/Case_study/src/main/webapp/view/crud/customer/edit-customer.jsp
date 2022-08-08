<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <h3 align="center">Sửa Thông Tin Khách Hàng</h3>
    <form class="row g-3" action="/customer?action=editCustomer" method="post">
        <div class="col-md-12">
            <label class="form-label">Loại khách </label>
            <select name="customertype"  class="form-select" >
                <option value="None" disabled >Chọn loại khách</option>
                <c:forEach  var="customerTypeList" items="${customerTypeList}">
                    <option value="${customerTypeList.typeCustomerId}">${customerTypeList.customerTypeName}</option>
                </c:forEach>

            </select>
        </div>

        <div class="col-md-12">
            <label for="name" class="form-label">Tên</label>
            <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên" required>
        </div>
        <div class="col-md-12">
            <label for="birth" class="form-label">Ngày sinh</label>
            <input type="date" class="form-control" id="birth" name="birth" placeholder="Ngày sinh" required>
        </div>

        <div class="col-md-12">
            <label class="form-label">Giới tính</label>
            <input type="radio"  class="form-check-input" name="gender" value="1" > Nam
            <input type="radio" class="form-check-input" name="gender" value="0">Nữ

        </div>

        <div class="col-md-12">
            <label for="idcard" class="form-label">CMND</label>
            <input type="text" class="form-control" id="idcard"  name="idcard" placeholder="CMND" required>
        </div>
        <div class="col-md-12">
            <label for="phone" class="form-label">Số điện thoại </label>
            <input type="text" class="form-control" id="phone"  name="phone" placeholder="số điện thoại" required >
        </div>
        <div class="col-md-12">
            <label for="email" class="form-label">email</label>
            <input type="text" class="form-control" id="email" name="email" placeholder="email" required>
        </div>
        <div class="col-md-12 ">
            <label for="address" class="form-label">Địa chỉ </label>
            <input type="text" class="form-control" id="address" name="address" placeholder="địa chỉ" required>
        </div>

        <button type="submit" class="btn btn-primary">Gửi</button>

    </form>
</div>


<%@include file="/view/include/foot.jsp"%>


<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>