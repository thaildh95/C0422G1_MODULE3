<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/31/2022
  Time: 4:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form  method="get">
  <fieldset style="width: 400px;margin: auto;text-align: center;box-shadow: 0px 1px 2px 3px #b6d4fe">
    <legend style="text-align: center">Thông tin sản phẩm</legend>
      <table>
          <tr>
              <td>Product Id:${product.productId} </td>

          </tr>
          <tr>
              <td>Product Name:${product.productName} </td>

          </tr>
          <tr>
              <td>Product Price:${product.productPrice} </td>

          </tr>
          <tr>
              <td>Product Description:${product.productDescription}</td>

          </tr>
          <tr>
              <td>Product Producer:${product.producerName} </td>

          </tr>
          <tr>
      </table>
      <img src="https://cdn.tgdd.vn/Products/Images/42/153856/iphone-xi-xanhla-200x200.jpg" width="230px" height="300px" alt=""><br>
     <p><a class="btn btn-light" href="/Product"><button>Back To Mainpage</button></a></p>
  </fieldset>

</form>
</body>
</html>
