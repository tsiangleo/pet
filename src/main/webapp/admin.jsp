<%@ page contentType="text/html; charset=gb2312" language="java" pageEncoding="utf-8"%>
<html>

<body>

<form id="admin" name="admin" method="post" action="doadmin.jsp">
<table width="748"   border="0" height="300" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td height="100" colspan="3"  ></td>
    </tr>
    <tr>
      <td width="250" height="150" background="images/adminlogo.gif"></td>
      <td  bordercolor="#FF9900"   style="border:thin" width="75" align="center"><p>&nbsp;</p>
        <p>&nbsp;</p></td>
      <td width="425" align="center"  bordercolor="#FF9900" bgcolor="#FFCC66"   style="border:thin"><p>用户名：
        <label for="admname"></label>
        <input type="text" name="admname" id="admname" />
      </p>
        <p> 密&nbsp;&nbsp; 码：
          <label for="admpwd"></label>
          <input type="password" name="admpwd" id="admpwd" />
        </p>
        <p>
          <input type="submit" name="button" id="button" value="登陆" />
        </p></td>
    </tr>
  </table>

</form>
<p>&nbsp;</p>
</body>

</html>
