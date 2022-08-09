<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 8/4/2022
  Time: 4:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Danh sách khách hàng</title>
    <link rel="stylesheet" href="/other/bootstrap/css/bootstrap.min.css">
    <style>
        body {
            background-image: url("https://images.freeimages.com/images/large-previews/a3b/website-rays-background-pattern-1637863.png");
        }

    </style>
</head>
<body>

<%@include file="/view/include/head2.jsp" %>
<a href="/FuramaCustomer?action=displayAddCustomer"><button type="button" class="btn btn-primary">Thêm mới</button></a>
<div class="row container-fluid m-0">
    <div class="col-lg-12 ">
        <table class="table table-striped table-hover   ">
            <tr>
                <th>STT</th>
                <th>Loại khách</th>
                <th>Tên</th>
                <th>Ngày sinh</th>
                <th>Giới tính</th>
                <th>CMND</th>
                <th>Số điện thoại</th>
                <th>Email</th>
                <th> Địa chỉ</th>
                <th colspan="2"></th>
            </tr>

            <c:forEach var="customer" items="${customerList}" varStatus="status">
                <tr>

<%--                    <td>${status.count}</td>--%>
                    <td>${customer.customerId}</td>

                    <td>
                        <c:forEach items="${customerTypeList}" var="customerTypeList">
                            <c:if test="${customer.typeCustomerId==customerTypeList.typeCustomerId}">
                                ${customerTypeList.customerTypeName}
                            </c:if>
                        </c:forEach>
                    </td>
                    <td>${customer.name}</td>
                    <td>${customer.dayOfBirth}</td>
                    <td>${customer.gender}</td>
                    <td>${customer.idCard}</td>
                    <td>${customer.phoneNumber}</td>
                    <td>${customer.email}</td>
                    <td>${customer.address}</td>
                    <td class="d-flex">
                        <button type="button" class="btn btn-primary me-2" data-bs-toggle="modal"
                                data-bs-target="#deleteModal"
                                onclick="deleteById(${customer.customerId}">
                            Delete
                        </button>
                        <a href="/FuramaCustomer?action=displayedit&customerId=${customer.customerId}" name="id">
                            <button type="button" class="btn btn-primary">
                            Edit</button>
                        </a>
                    </td>
                </tr>
            </c:forEach>

        </table>

    </div>
</div>
</div>

<!-- Modal -->
<form action="/FuramaCustomer?action=deleteCustomer" method="post">
    <div class="modal fade" id="deleteModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Delete warning</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" name="deleteId" id="id" >
                    <span> do you want to delete this user?</span> <span id="deleteName"></span>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-primary">Save changes</button>
                </div>
            </div>
        </div>
    </div>
</form>

<script>
    function deleteById(id) {
        document.getElementById("deleteId").value = id;

    }
</script>
<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>
