<%@ page language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
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
	
	if(document.changepwd.oldpwd.value=="")
	{
		alert("原始密码不能为空");
		document.changepwd.oldpwd.focus();
		return false;
	}
	else if(document.changepwd.newpwd.value!=document.changepwd.newpwdconfirm.value)
	{
		alert("两次输入的新密码不一致！");
		document.changepwd.newpwd.focus();
		return false;
	}	
	else
	{
	form.submit();
	}

}
</script>
  
  <body>

<form id="changepwd" name="changepwd" method="post" action="dochangepwd.jsp" onsubmit="return check()">
  <table width="700" border="1" align="center" cellpadding="0" cellspacing="0">
    <tr>
      <td colspan="3" valign="middle"><h2><br></h2><h2>修改密码</h2></td>
    </tr>
    <tr>
      <td width="219" align="right">原始密码：</td>
      <td width="199"><label for="oldpwd"></label>
      <input name="oldpwd" type="password" id="oldpwd" maxlength="20" /></td>
      <td width="282">数字或英文，6-20位</td>
    </tr>
    <tr>
      <td align="right">新密码：</td>
      <td><label for="newpwd"></label>
      <input name="newpwd" type="password" id="newpwd" maxlength="20" /></td>
      <td>数字或英文，6-20位</td>
    </tr>
    <tr>
      <td align="right">确认密码：</td>
      <td><label for="newpwdconfirm"></label>
      <input name="newpwdconfirm" type="password" id="newpwdconfirm" maxlength="20" /></td>
      <td>重复上面的密码</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="button" id="button" value="修改密码" />
      </td>
      <td>&nbsp;</td>
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
