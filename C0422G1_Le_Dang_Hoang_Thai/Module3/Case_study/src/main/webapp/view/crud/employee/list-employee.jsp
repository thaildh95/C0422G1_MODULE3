<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2022
  Time: 11:07 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Danh sách nhân viên</title>
    <link rel="stylesheet" href="/other/bootstrap/css/bootstrap.min.css">
    <style>
        body {
            background-image: url("https://img.freepik.com/free-vector/white-elegant-texture-background-style_23-2148432200.jpg?w=2000");
        }

    </style>
</head>
<body>
<%@include file="/view/include/head2.jsp" %>
<button class="btn btn-outline-primary" data-bs-toggle="modal" data-bs-target="#addModal">Thêm mới Nhân viên</button>
<div class="row container-fluid m-0">
    <div class="col-lg-12 ">
        <table class="table table-striped table-hover">
            <tr>
                <th>STT</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>CMND</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th>Trình độ</th>
                <th>Vị trí</th>
                <th>Lương</th>
                <th>Bộ phận</th>
                <th></th>
                <th colspan="2"></th>
            </tr>
            <tr>
                <td>1</td>
                <td>Dương Tiêu</td>
                <td>11/05/1998</td>
                <td>2287593842</td>
                <td>0905596195</td>
                <td>TieuDuong@gmail.com</td>
                <td>Đại học</td>
                <td>Lễ tân</td>
                <td>5.000.000 </td>
                <td>Phục vụ</td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                        Edit
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel">Sửa thông tin</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn sửa không
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không
                                    </button>
                                    <button type="button" class="btn btn-primary">Có</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
                <td>
                    <!-- Button trigger modal -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal"
                            data-bs-target="#exampleModal1">
                        Delete
                    </button>

                    <!-- Modal -->
                    <div class="modal fade" id="exampleModal1" tabindex="-1" aria-labelledby="exampleModalLabel1"
                         aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="exampleModalLabel1">Sửa thông tin</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal"
                                            aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    Bạn có muốn xóa không ?
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Không
                                    </button>
                                    <button type="button" class="btn btn-primary">Có</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </td>
            </tr>
        </table>
    </div>
</div>

<!-- Button trigger modal -->


<!-- Modal -->
<div class="modal fade" id="addModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="addModalLabel">Modal title</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <div class="modal-body">
                <div class="container w-100 mt-2 p-2" style="border: 1px solid grey; border-radius: 15px">
                    <h3 align="center">THÊM MỚI NHÂN VIÊN</h3>
                    <form action="" method="post">

                        <div class="col-md-12">
                            <label for="name" class="form-label">Tên nhân viên</label>
                            <input type="text" class="form-control" id="name" name="name" placeholder="Họ và tên"
                                   required>
                        </div>
                        <div class="col-md-12">
                            <label for="dateOfBirth" class="form-label">Ngày sinh</label>
                            <input type="date" class="form-control" id="dateOfBirth" name="dateOfBirth"
                                   placeholder="Ngày sinh" required>
                        </div>
                        <div class="col-md-12">
                            <label for="CMND" class="form-label">CMND</label>
                            <input type="text" class="form-control" id="CMND" name="CMND" placeholder="CMND" required>
                        </div>

                        <div class="col-md-12 ">
                            <label for="email" class="form-label">Email </label>
                            <input type="text" class="form-control" id="email" name="email" placeholder="email"
                                   required>
                        </div>


                        <div class="col-md-12">
                            <label class="form-label">Trình độ</label>
                            <select name="" class="form-select">
                                <option value="None">Chọn trình độ</option>
                                <option value="">Trung cấp</option>
                                <option value="">Cao đẳng</option>
                                <option value="">Đại học</option>
                                <option value="">Sau đại học</option>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label class="form-label">Vị Trí</label>
                            <select name="" class="form-select">
                                <option value="None">Chọn trình vị trí</option>
                                <option >Lễ tân</option>
                                <option >Phục vụ</option>
                                <option >Chuyên viên</option>
                                <option >Giám sát</option>
                                <option >Quản lí</option>
                                <option >Giám đốc</option>
                            </select>
                        </div>
                        <div class="col-md-12">
                            <label class="form-label">Bộ phận</label>
                            <select name="" class="form-select">
                                <option value="None">Chọn bộ phận</option>
                                <option value="">Sale-marketing</option>
                                <option value="">Hành chính</option>
                                <option value="">Phục vụ</option>
                                <option value="">Quản lí</option>
                            </select>
                        </div>

                        <div class="col-md-12">
                            <label for="salary" class="form-label">Lương </label>
                            <input type="text" class="form-control" id="salary" name="salary" placeholder="lương"
                                   required>
                        </div>
                    </form>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
            </div>
        </div>
    </div>
</div>

<%@include file="/view/include/foot.jsp" %>
<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>