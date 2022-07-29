<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/27/2022
  Time: 4:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>$Title$</title>
</head>
<body>
<form action="/Discount" method="post">
  <input type="text" name="productDescription" placeholder="nhap san pham">
  <input type="text" name="price" placeholder="nhap gia ">
  <input type="text" name="discountRate" placeholder="nhap ti le chiet khau">

  <button  type="submit">Calculator</button>
</form>
</body>
</html>