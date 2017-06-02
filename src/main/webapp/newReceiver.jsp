<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
</head>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">买宠物</a>&gt;&gt;宠物详细信息&gt;&gt;确认收货人信息&gt;&gt;修改收货人信息:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >
<br><table width="800" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800"><img src="images/lc2.gif" width="800" height="30" /></td>
  </tr>
</table>

<% String s=request.getHeader("referer");//获取登陆页面前的地址
 session.setAttribute("url2",s );%>
<%if(session.getAttribute("uname")!=null)
{ 
%><% 
String ssid=request.getParameter("snid");//卖家ID

String ppid=request.getParameter("pid");//宠物ID

String VIPprice=request.getParameter("total");//交易金额

%>
<script language="javascript">

function check()
{
 if(document.newReceiver.realname.value=="")
	{
		alert("收货人姓名不能为空");
		document.newReceiver.realname.focus();
		return false;
	}
	
	else if(document.newReceiver.address.value=="")
	{
		alert("地址不能为空");
		document.newReceiver.address.focus();
		return false;
	}
	else if(document.newReceiver.phone.value=="")
	{
		alert("电话不能为空");
		document.newReceiver.phone.focus();
		return false;
	}
	
else if(document.newReceiver.postcode.value=="")
	{
		alert("邮编不能为空");
		document.newReceiver.postcode.focus();
		return false;
	}
	
	else
	{
	form.submit();
	}

}
</script>
   <br><br><br>  <center> 修改收件人基本信息 </center>
 <form id="newReceiver" name="newReceiver" method="post" action="doBuy2.jsp" onsubmit="return check()">
  <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  
  <tr align="center">
    <td width="40%" align="center">收货人姓名</td>
    <td width="60%" align="left">  <input type="text" name="realname" id="realname" size="20"></td>
</tr>

  <tr align="center">
   <td width="40%" align="center">收货人电话</td>
    <td width="60%" align="left">  <input type="text" name="phone" id="phone" size="20"></td>
</tr>

  <tr align="center">
   <td width="40%" align="center">邮政编码</td>
    <td width="60%" align="left">  <input type="text" name="postcode" id="postcode" size="20"></td>
</tr>

  <tr align="center">
   <td width="40%" align="center">收货地址</td>
    <td width="60%" align="left">  <input type="text" name="address" id="address" size="20"></td>
</tr>
<tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="提交" />
        <input type="reset" name="reset" id="userreset" value="重置" /></td>
 </tr>	 
</table>
</form>
<br>


<%

}
 else
  { %>
	 <p><p>
     <center>你还没有登陆，<a href=login.jsp>请登陆.</a>
     </center>
<%}%>

<%@ include file="bottom.jsp" %>
<body><br><br></body>
</html>