<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/28/2022
  Time: 9:44 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<head>
  <title>Simple Dictionary</title>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <script type="text/javascript">
      function yesClick()
      {
        alert("Yes. you are right ");
      }
      function noHover()
      {
        var x = Math.round(Math.random() * window.innerWidth);
        var y = Math.round(Math.random() * window.innerHeight);
        document.getElementById('btnNo').style.left = x + 'px';
        document.getElementById('btnNo').style.top = y + 'px';
      }
    </script>
  </head>
<body>
<!--<h1 style="position:absolute; left:220px; top:175px;">Do you love me?</h1>-->
<h2>Vietnamese Dictionary</h2>
<form action="dictionary.jsp" method="post">
  <input type="text" name="search" placeholder="Enter your word: "/>
  <input type="button" id="btnNo" value="  Dịch  " onmouseover="noHover()" style="position:absolute;"/>
  <input style="margin-left: 60px" type = "submit" id = "submit" value = "Đừng bấm"/>

</form>
</body>
</html>