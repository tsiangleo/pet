<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

  <head>
  

  </head>
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
<p><p>
<table width="900"  height="604" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td   background="images/VIPcenter.gif"width="140" height="45">&nbsp;</td>
    <td width="10" rowspan="13">&nbsp;</td>
    <td width="750" rowspan="13"><iframe    scrolling="no" src="子框架中默认的网页.html" name="ifram_name" width="750"  height="600" align="middle" frameborder="0"></iframe></td>
  </tr>
  <tr>
    <td width="140" align="center" valign="middle">&nbsp;</td>
  </tr>
  <tr>
    <td width="140" height="39" align="center" valign="middle"><h2>我是买家</h2></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="shoppingcar.html" target="ifram_name">我的购物车</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="lookorder.jsp" target="ifram_name">我的订单</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="receiveaddr.jsp" target="ifram_name">收货地址</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="changepwd.jsp" target="ifram_name">修改密码</a></td>
  </tr>
   <tr>
    <td width="140"   align="center"><a href="changepwd.jsp" target="ifram_name">我的积分</a></td>
  </tr>
  <tr>
    <td width="140" align="center">&nbsp;</td>
  </tr>
  <tr>
    <td width="140" height="39" align="center"><h2>我是卖家</h2></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="onloadinfo.jsp" target="ifram_name">发布宠物信息</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="modifypet.html" target="ifram_name">修改宠物信息</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="modifypet.html" target="ifram_name">删除宠物信息</a></td>
  </tr>
  <tr>
    <td width="140" height="30" align="center"><a href="dealorder.jsp" target="ifram_name">处理订单</a></td>
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
