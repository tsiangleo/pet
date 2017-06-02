<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

<head><title>用户中心-我要淘宠网</title></head>

<%if(session.getAttribute("uname")!=null)
{ 
%>
 <style type="text/css">
a:link {
	text-decoration: none;
	color: #F90;
}
a:visited {
	text-decoration: none;
}
a:hover {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
</style>
</head>

<body>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="usercenter.jsp">用户中心</a>:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<table width="900"  height="604" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td   background="images/VIPcenter.gif"width="140" height="45">&nbsp;</td>
    <td width="10" rowspan="3">&nbsp;</td>
    <td width="750" rowspan="3"><iframe    scrolling="no" src="ucenterfirst.html" name="ifram_name" width="750"  height="600" align="middle" frameborder="0"></iframe></td>
  </tr>
  <tr>
    <td width="140" align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td width="140" align="center" valign="middle">
    <h2>我是买家</h2>      
    <p><a href="lookcarusercneter.jsp" target="ifram_name">我的购物车</a></p>
      <p><a href="lookorder.jsp" target="ifram_name">我的订单</a></p>
      <p><a href="receiveaddr.jsp" target="ifram_name">收货地址</a></p>
      <p><a href="changepwd.jsp" target="ifram_name">修改密码</a></p>
      <p><a href="myintegral.jsp"target="ifram_name">我的积分</a></p>
      <p><a href="dosearchbuy.jsp?id=2"target="ifram_name">购宠记录</a></p>
      <p><a href="dosearchmes.jsp?id=2" target="ifram_name" >留言记录</a></p>
     <h2>我是卖家</h2>
     <p><a href="personalinfo.jsp" target="ifram_name">完善个人信息</a></p>      
     <p><a href="onloadinfo.jsp" target="ifram_name">发布宠物信息</a></p>
    <p><a href="userdeletepet.jsp" target="ifram_name">删除宠物信息</a></p>
    <p><a href="dealorder.jsp" target="ifram_name">处理订单</a></p>
    <p><a href="dosearchonload.jsp?id=2" target="ifram_name">上传记录</a></p>
    </td>
  </tr>
</table>
<%@ include file="bottom.jsp" %>
<%}
  else
  { %>

	 <p><p>
     <center>你还没有登陆，<a href=login.jsp>请登陆.</a>
     </center>
<%}%>

</body>

</html>
