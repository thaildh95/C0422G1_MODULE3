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
</head>
<body>
<%@include file="/view/include/head2.jsp"%>
<div class="col-lg-3">
    <a href="/facility?action=displayAddService">
        <button class="btn btn-primary">Add new service</button>
    </a>
</div>
<div class="row container-fluid m-0">
    <div class="col-lg-12 ">
        <table class="table table-striped table-hover   ">
            <tr>
                <th>ID</th>
                <th>Tên</th>
                <th>Diện tích</th>
                <th>Giá</th>
                <th>Số người tối đa</th>
                <th>Mã Kiểu thuê</th>
                <th>Mã loại dịch vụ</th>
                <th>Loại phòng</th>
                <th>Dịch vụ khác</th>
                <th>Diện tích hồ</th>
                <th>Số tầng</th>
                <th>Dịch vụ free</th>
                <th></th>
            </tr>

            <c:forEach items="${facilityList}" var="facility">
                <tr>
                    <td>${facility.id}</td>
                    <td>${facility.name}</td>
                    <td>${facility.area}</td>
                    <td>${facility.cost}</td>
                    <td>${facility.maxPeople}</td>

                    <td><c:forEach var="rentType" items="${rentTypeList}">
                        <c:if test="${rentType.rentId == facility.rentTypeId}">
                          <span> ${rentType.rentTypeName}</span>
                        </c:if>
                    </c:forEach></td>
                    <td>
                    <c:forEach var="facilityType" items="${facilityTypeList}">
                        <c:if test="${facility.facilityTypeId == facilityType.id}">
                            <span>${facilityType.name}</span>
                        </c:if>
                    </c:forEach></td>


                    <td>${facility.standard}</td>
                    <td>${facility.otherConvenience}</td>
                    <td>${facility.poolArea}</td>
                    <td>${facility.floors}</td>
                    <td>${facility.facilityFree}</td>
                    <td class="d-flex">
                        <a href="/facility?action=displayEditService&facilityCode=${facility.id}">
                            <button style="padding: 5px" class="btn btn-primary">
                                <span class="material-symbols-outlined">edit</span>
                            </button>
                        </a>
                        <button style="padding: 5px" type="button" class="btn btn-primary"
                                data-bs-toggle="modal" data-bs-target="#exampleModal"
                                onclick="getInfoToModal('${facility.id}','${facility.name}')">
                            <span class="material-symbols-outlined">delete</span>
                        </button>
                    </td>
                </tr>
            </c:forEach>

        </table>
    </div>
</div>

<form action="/facility" method="post">
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-lg-3">Service Code:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly name="facilityCode" id="code" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-lg-3">Service Name:</div>
                        <div class="col-lg-9">
                            <input type="text" readonly id="name" class="form-control">
                        </div>
                    </div>
                    <div class="row">
                        <h5>Are you sure that you want to delete this service?</h5>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="submit" name="action" value="delete" class="btn btn-primary">Yes</button>
                </div>
            </div>
        </div>
    </div>
</form>
</div>

<script>
    function getInfoToModal(code, name) {
        document.getElementById("code").value = code;
        document.getElementById("name").value = name;
    }
</script>
<%--<%@include file="/view/include/foot.jsp"%>--%>
<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>