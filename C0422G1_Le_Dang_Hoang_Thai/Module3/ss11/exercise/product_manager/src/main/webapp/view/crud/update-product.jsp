<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/30/2022
  Time: 3:35 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:if test="${messege!=null}">
    <p>${messsege}</p>
</c:if>
<div style="width: 400px; margin: auto; height: 500px">
    <fieldset style="box-shadow: 1px 2px 3px 3px skyblue;background: bisque">
        <legend>Product Info</legend>
        <form style="width: 400px; padding-top: 10px">
            <div class="mb-3" style="padding-top: 10px">
                <label for="id" class="form-label">Product ID</label>
                <input type="text" class="form-control" id="Id" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="name" class="form-label">Product Name</label>
                <input type="text" class="form-control" id="name" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="price" class="form-label">Product Price</label>
                <input type="text" class="form-control" id="price" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="description" class="form-label">Product Description</label>
                <input type="text" class="form-control" id="description" aria-describedby="emailHelp">
            </div>
            <div class="mb-3" style="padding-top: 10px">
                <label for="producer" class="form-label">Producer Name</label>
                <input type="text" class="form-control" id="producer" aria-describedby="emailHelp"><br>

                <button style="padding-top: 10px;margin-left: 250px;margin-top: 10px" type="submit" class="btn btn-primary">Submit</button>
            </div>
        </form>
    </fieldset>
</div>

</body>
</html>
