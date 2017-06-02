<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>

  <head>
  <title>后台管理-我要淘宠网</title>

  </head>
<%if(session.getAttribute("adname")!=null)
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

<table width="900" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td width="247">&nbsp;</td>
    <td width="290">&nbsp;</td>
    <td width="357">&nbsp;</td>
  </tr>
  <tr>
    <td  background="images/adminlogo.gif"width="247" height="150">&nbsp;</td>
    <td width="290">&nbsp;</td>
    <td width="357">&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>

<table width="900"  height="900" bordercolor="#FF9900"   border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  width="120" height="900" align="center"><h2>新闻管理</h2>
      
      <p><a href="addNews.jsp" target="ifram_name" >添加新闻</a></p>
      <p><a href="deletenews.jsp" target="ifram_name">删除新闻</a> </p>
      <h2>留言管理</h2>
      <p><a href="userAddMessage.jsp?uid=0" target="ifram_name">添加留言</a></p>
      <p><a href="deleteMessage.jsp" target="ifram_name">删除留言</a></p>
      <p><a href="shuru.jsp?choose=4"  target="ifram_name" >查看用户所有留言</a> </p>
      
      
      <h2>用户管理</h2>
      <p><a href="shuru.jsp?choose=3"  target="ifram_name" >查看用户上传记录</a> </p>
        <p><a href="shuru.jsp?choose=5"  target="ifram_name" >查看用户购宠记录</a> </p>
      <p><a href="shuru.jsp?choose=1" target="ifram_name">冻结用户</a> </p>
     <p><a href="shuru.jsp?choose=2"  target="ifram_name" >解冻用户</a> </p>
      <h2>宠物管理</h2>
      
    <p><a href="deletePet.jsp" target="ifram_name">删除宠物</a></p>
    <p><a href="searchallpet.jsp" target="ifram_name">查看所有宠物</a></p>
    <p><a href="AdminLoginout.jsp"><font  size="+2" color="#FF3300" face="黑体">退出</a> </p>
    <p>
    </p></td>
    <td width="10"  height="900"></td>
    <td width="770"  height="900" align="center" valign="middle"><iframe    scrolling="no" src="shuru.jsp?choose=1" name="ifram_name" width="770" height="900"  align="middle" frameborder="0"></iframe></td>
  </tr>
</table>
</body>

<%}
  else
  { %>
	 <p><p>
     <center>你还没有登陆，无法访问.</a>
     </center>
<%}%>

</html>
