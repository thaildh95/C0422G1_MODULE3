<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 7/28/2022
  Time: 3:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Calculator</title>
</head>
<body>
<h1>Simple Calculator</h1>
<div style="width: 400px">
<form method="get" action="/Calculate">
  <fieldset>
    <legend>Calculator</legend>
    <table style="height: 250px">
      <tr>
        <td>First operand: </td>
        <td><input name="firstOperand" type="text"/></td>
      </tr>
      <tr>
        <td>Operator: </td>
        <td>
          <select name="operator">
            <option value="+">+</option>
            <option value="-">-</option>
            <option value="*">*</option>
            <option value="/">/</option>
          </select>
        </td>
      </tr>
      <tr>
        <td>Second operand: </td>
        <td><input name="secondOperand" type="text"/></td>
      </tr>
      <tr>
        <td></td>
        <input  type="button" id="btnNo" value="  Calculate  " onmouseover="noHover()" style="position:absolute; margin-left: 113px;margin-top: 206px;margin-left: 240px;width: 105px"/>

        <td><input type="submit" value="Dont Click"/></td>
      </tr>
    </table>
  </fieldset>
</form>
</div>
</body>
<script type="text/javascript">
  function noHover()
  {
    var x = Math.round(Math.random() * window.innerWidth);
    var y = Math.round(Math.random() * window.innerHeight);
    document.getElementById('btnNo').style.left = x + 'px';
    document.getElementById('btnNo').style.top = y + 'px';
  }
</script>
</html>