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
<%@include file="/view/include/head.jsp" %>
<div class="container-fluid position-relative">
    <div class="row">
        <div class="col-lg-10 d-flex justify-content-center  position-absolute" style="top: 7%">
            <div class="row" style="width: 95%">
                <div class="col-lg-12 text-center"><h2>EDIT SERVICE</h2></div>
                <div class="col-lg-12">
                    <form class="row" action="/facility?action=updateFacility&facilityCode=${facility.id}" method="post">
                        <div class="col-lg-2 ps-5">
                            <div class="form-check" onclick="showInput(roomInput.value)">
                                <input type="hidden" value="${facility.facilityTypeId}" id="onload">
                                <input class="form-check-input" type="radio" value="3" name="id" id="roomInput"
                                       checked>
                                <label class="form-check-label" for="roomInput">
                                    Room
                                </label>
                            </div>
                            <div class="form-check" onclick="showInput(villaInput.value)">
                                <input class="form-check-input" value="1" type="radio" name="id" id="villaInput">
                                <label class="form-check-label" for="villaInput">
                                    Villa
                                </label>
                            </div>
                            <div class="form-check" onclick="showInput(houseInput.value)">
                                <input class="form-check-input" value="2" type="radio" name="id" id="houseInput">
                                <label class="form-check-label" for="houseInput">
                                    House
                                </label>
                            </div>
                        </div>
                        <div class="col-lg-10 fw-bold text-dark">
                            <div class="row">
                                <div class="col-lg-6 ps-5 pe-5">
                                    <div class="row pb-4">
                                        <span>Name:</span><span class="text-danger">${nameErr}</span>
                                        <input type="text" name="name" class="form-control" placeholder="Service name"
                                               aria-label="Service name" value="${facility.name}">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Area:</span><span class="text-danger">${areaErr}</span>
                                        <input type="number" name="area" class="form-control" placeholder="Area"
                                               aria-label="Area" value="${facility.area}">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Cost:</span><span class="text-danger">${costErr}</span>
                                        <input type="number" name="cost" class="form-control" placeholder="Cost"
                                               aria-label="Cost" value="${facility.cost}">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Max people</span><span class="text-danger">${maxPeopleErr}</span>
                                        <input type="number" name="people" class="form-control" placeholder="Max people"
                                               aria-label="Max people" value="${facility.maxPeople}">
                                    </div>
                                    <div class="row pb-4">
                                        <span>Rental type</span>
                                        <select class="form-control" name="rentalType">
                                            <%--                                            <c:forEach items="${rentTypeList}" var="rentType">--%>
                                            <%--                                                <option value="${rentType.rentId}">${rentType.rentTypeName}</option>--%>
                                            <%-- option                                       </c:forEach>--%>

                                            <option value="1">Thuê theo năm</option>
                                            <option value="2">Thuê theo tháng</option>
                                            <option value="3">Thuê theo ngày</option>
                                            <option value="4">Thuê theo giờ</option>
                                        </select>
                                    </div>
                                    <div class="row">
                                        <button type="submit" class="btn btn-primary">Add
                                        </button>
                                    </div>
                                </div>
                                <div class="col-lg-6 ps-5 pe-5">
                                    <div class="row pb-4" style="display: none" id="standard">
                                        <span>Room standard</span>
                                        <input id="standardInput" type="text" name="standard" class="form-control"
                                               placeholder="Room standard"
                                               aria-label="Room standard">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="convenience">
                                        <span>Other convenience</span>
                                        <input id="convenienceInput" type="text" name="convenience" class="form-control"
                                               placeholder="Other convenience"
                                               aria-label="Other convenience">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="floors">
                                        <span>Number of floors</span><span class="text-danger">${floorErr}</span>
                                        <input id="floorsInput" type="number" name="floors" class="form-control"
                                               placeholder="Number of floors" aria-label="Number of floor"
                                               value="${facility.floors}">
                                    </div>
                                    <div class="row pb-4" style="display: block" id="free">
                                        <span>Facility free</span>
                                        <input id="freeInput" type="text" name="free" class="form-control"
                                               placeholder="Facility free"
                                               aria-label="Facility free">
                                    </div>
                                    <div class="row pb-4" style="display: none" id="poolArea">
                                        <span>Pool area:</span><span class="text-danger">${poolErr}</span>
                                        <input id="poolAreaInput" type="number" name="Pool" class="form-control"
                                               placeholder="Pool area" aria-label="Pool area"
                                               value="${facility.poolArea}">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<script>
    let code = document.getElementById("onload").value;
    window.onload = showInput(code);

    function showInput(value) {
        console.log(value)
        switch (value) {
            case "2":
                console.log(value);
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("poolArea").style.display = "none";
                document.getElementById("poolAreaInput").value = "0";
                document.getElementById("freeInput").value = "";
                break;
            case "1":
                document.getElementById("standard").style.display = "block";
                document.getElementById("floors").style.display = "block";
                document.getElementById("convenience").style.display = "block";
                document.getElementById("free").style.display = "none";
                document.getElementById("poolArea").style.display = "block";
                document.getElementById("freeInput").value = "";
                break;
            case "3":
                document.getElementById("standard").style.display = "none";
                document.getElementById("floors").style.display = "none";
                document.getElementById("convenience").style.display = "none";
                document.getElementById("free").style.display = "block";
                document.getElementById("poolArea").style.display = "none";
                document.getElementById("standardInput").value = "";
                document.getElementById("floorsInput").value = "0";
                document.getElementById("convenienceInput").value = "";
                document.getElementById("poolAreaInput").value = "0";
                break;
        }
    }
</script>
<script src="/other/bootstrap/js/bootstrap.min.js"></script>
<script src="/other/bootstrap/jquery/jquery-3.6.0.min.js"></script>
</body>
</html>