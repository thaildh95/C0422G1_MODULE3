<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/28/2022
  Time: 9:29 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<html>
<head>
    <title>Converter</title>
    <style>
        .table{
            height: 300px;
            width: 300px;
            text-align: center;
            margin: auto;
            background: darkslategray;
            border: solid 2px black;
            color: whitesmoke;
            box-shadow: 1px 2px 2px 2px;
            padding-top: 10px;
            border-radius: 23px;

        }
    </style>
</head>
<body>

<%
    float rate = Float.parseFloat(request.getParameter("rate"));
    float usd = Float.parseFloat(request.getParameter("usd"));
    float vnd = rate * usd;
%>
<div class="table">
    <h1>Rate: <%=rate%></h1>
    <h1>USD: <%=usd%></h1>
    <h1>VND: <%=vnd%></h1>

</div>

</body>
</html>
</body>
</html>
