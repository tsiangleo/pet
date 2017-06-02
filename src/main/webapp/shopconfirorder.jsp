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
    <td width="800"><img src="images/lc1.gif" width="800" height="30" /></td>
  </tr>
</table>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");
request.setCharacterEncoding("gb2312");
String ssid=request.getParameter("snid");//卖家ID
int sid =Integer.parseInt(ssid);
String ppid=request.getParameter("pid");//宠物ID
int pid =Integer.parseInt(ppid);
String VIPprice=request.getParameter("total");//交易金额
int totalmoney =Integer.parseInt(VIPprice);

try{

       Statement   stmt=conn.createStatement();
      
         String sql="select * from userinfo,usertable where account='"+name+"' and uaccountid=accountid";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
      if(bid==sid)//买卖家是同一人
      {%>
       <script language="javascript">
		alert("不能买自己的宠物！");
        </script>
        <SCRIPT language=javascript>
 function go()
 {
 window.history.go(-1);
 }
 setTimeout("go()",10);
 
</SCRIPT>
        
     <%}
      else
      {
       String sql2="select * from petinfo where petid="+pid+"";
        ResultSet rs2 = stmt.executeQuery(sql2); 
        if(rs2.next()) 
        {
        String path=rs2.getString("picturepath");
    %>
   <br><br><br>  <center> 确认订单信息 </center>
  <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
   <tr align="center" height="50">
    <td width="20%">宠物图片</td>
    <td width="20%">宠物名称</td>
    <td width="20%">宠物价格</td>
    <td width="20%">宠物产地</td>
    <td width="20%">宠物体重</td>
 </tr>
 <tr align="center">
<td width="20%"><img width="100" height="100"  border=0 src="<%=path%>" /></td>
<td width="20%"><%=rs2.getString("petname")%></td>
<td width="20%"><font color="#FF3300"><%=rs2.getString("VIPprice")%>￥</font></td>
<td width="20" ><%=rs2.getString("petfrom")%></td>
<td width="20" ><%=rs2.getString("petweight")%>kg</td>
</tr>
</table>
<% }
 }
 }
 }
 catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
 %>   
<br>
 <center>
 
 <a href="BuyNow.jsp?pid=<%=pid%>&&snid=<%=sid %>&&total=<%=totalmoney %>"><font color="#FF3300" size="+2" face="黑体"> 确认无误</font></a>
 
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