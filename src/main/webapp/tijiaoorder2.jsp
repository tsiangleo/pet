<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>

<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">买宠物</a>&gt;&gt;宠物详细信息&gt;&gt;确认收货人信息:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<br><table width="800" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800"><img src="images/lc33.gif" width="800" height="30" /></td>
  </tr>
</table>

<%

String name=(String)session.getAttribute("uname");
request.setCharacterEncoding("gb2312");

%>
<br><br> <center><font size="+2" face="黑体">
 亲，以上信息您都正确填写了吗？那就提交吧！<br></font>
 
 <font color="#FF3300" size="+2" face="黑体">
 <a href="doBuycar.jsp?"><br><br>提交订单</a>
 </font>
 </center>
  

<%@ include file="bottom.jsp" %>
<%}
 else
  { %>
<center><a href="login.jsp">你还没有登陆，请登陆!</a></center>     
 <%//response.setHeader("refresh","0.2;URL=login.jsp");
 
  }%>


</body>
</html>