<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html " language="java"  %>
 <html>
  <head>
    <title> 修改密码</title>
  </head>
  <%if(session.getAttribute("uname")!=null)
{ 
%>
  <script language="javascript">
  function check()
{
	
	if(document.addaddr.addr.value=="")
	{
		alert("收货地址不能为空！");
		document.addaddr.addr.focus();
		return false;
	}
	else
	{
	form.submit();
	}

}
</script>
  
  <body>

<form id="addaddr" name="addaddr" method="post" action="doaddr.jsp" onsubmit="return check()">
  <table width="700" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td width="300" align="right">收货地址：</td>
      <td width="400">
      <input name="addr" type="text" id="addr"  /></td>
    </tr>
     <tr>
     <td width="300" align="right"> </td>
      <td><input type="submit" name="button" id="button" value="确认" /></td>
    </tr>
  </table>
</form>
</body>
<%}
 else
  { %>
	 <p><p>
     <center>你还没有登陆，<a href=login.jsp>请登陆.</a>
     </center>
<%}%>
</html>
