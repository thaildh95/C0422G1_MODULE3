<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/28/2022
  Time: 9:16 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Currency Converter</title>
  <link rel="stylesheet" type="text/css" href="css/style.css">
  <style>
    body{
      margin-left: 250px;
      width: 200px;
      height:250px;
      border: solid 2px gainsboro;
      border-radius: 14px;
      background: azure;
      box-shadow: 1px 3px 3px 3px;
    }
    h2{
      text-align: center;
    }
    #form{
      text-align: center;
    }
    input{
      padding-top: 5px;
    }
    h1{
      text-align: center;
    }
  </style>
</head>
<body>
<h2>Currency Converter</h2>
<form action="calculate.jsp" method="post" id="form">
  <label>Rate: </label><br/>
  <input type="text" name="rate" placeholder="RATE" value="22000"/><br/>
  <label>USD: </label><br/>
  <input type="text" name="usd" placeholder="USD" value="0"/><br/>
  <input type = "submit" id = "submit" value = "Converter"/>

</form>
</body>
</html>
