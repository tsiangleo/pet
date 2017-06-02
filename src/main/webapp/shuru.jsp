<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head><title>输入</title>
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
	else if(document.registform.realname.value=="")
	{
		alert("真实姓名不能为空");
		document.registform.realname.focus();
		return false;
	}
	else
	{
	//form.action="registaction";
	form.submit();
	}

}
</script>
<%
String choos=request.getParameter("choose"); 
int choose =Integer.parseInt(choos);
 %>
<body>
<%if(choose==1)
{%>
<form id="regist" name="registform" method="post" action="dodongjie.jsp?id=1">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">请输入要冻结的账户的用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
  </tr>
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="确认" />
     </td>
 </tr>
 </form>
<% }
   else if(choose==2)
   {%>
   <form id="regist" name="registform" method="post" action="dodongjie.jsp?id=2">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">请输入要解冻的账户的用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
  </tr>
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="确认" />
     </td>
 </tr>
 </form>
   
   <%}  
      else if(choose==3)//查看用户上传记录
   {%>
   <form id="regist" name="registform" method="post" action="dosearchonload.jsp?id=1">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">请输入用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
  </tr>
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="确认" />
     </td>
 </tr>
 </form>
   
   <%}
     else if(choose==4)//查看用户留言
   {%>
   <form id="regist" name="registform" method="post" action="dosearchmes.jsp?id=1">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">请输入用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
  </tr>
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="确认" />
     </td>
 </tr>
 </form>
    
   <%}
  else if(choose==5)//查看用户购宠记录
   {%>
   <form id="regist" name="registform" method="post" action="dosearchbuy.jsp?id=1">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  <tr>
   <td align="right">请输入用户名：</td>
    <td align="left">  <input type="text" name="account" id="account" size="20"></td>
  </tr>
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="确认" />
     </td>
 </tr>
 </form>
    
   <%}%>
 </body>
 </html>