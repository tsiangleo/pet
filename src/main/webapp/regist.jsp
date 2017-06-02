<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head><title>用户注册</title>
</head>

<script language="javascript">

function check()
{
	if(document.registform.account.value=="")
	{
		alert("用户名不能为空");
		document.registform.account.focus();
		return false;
	}
	
	else if(document.registform.password.value=="")
	{
		alert("密码不能为空");
		document.registform.password.focus();
		return false;
	}
		else if(document.registform.password.value!=document.registform.repassword.value)
	{
		alert("两次输入的密码不一致！");
		document.registform.password.focus();
		return false;
	}
	

	else
	{
	//form.action="registaction";
	form.submit();
	}

}
</script>

<body>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="regist.jsp">用户注册</a>:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<form id="regist" name="registform" method="post" action="doregist.jsp" onsubmit="return check()">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
    <td align="left">5到20个字符，数字和英文字母组成</td>
  </tr>
  
  <tr>
    <td align="right">密 码：</td>
    <td align="left">  <input type="password" name="password" id="password" size="20"></td>
    <td align="left">5到20个字符，数字和英文字母组成</td>
  </tr>
  
    <tr>
    <td align="right">确认密码：</td>
    <td align="left">  <input type="password" name="repassword" id="repassword" size="20"></td>
    <td align="left">确认上面输入的密码</td>
  </tr>
  
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="提交" />
        <input type="reset" name="reset" id="userreset" value="重置" /></td>
 </tr>
 </table>
 </form>
 
 <%@ include file="bottom.jsp" %>
 
 </body>
 </html>