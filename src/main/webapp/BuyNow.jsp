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
    <td width="800"><img src="images/lc2.gif" width="800" height="30" /></td>
  </tr>
</table>

<%@include file="connection.jsp"%>

<%

String name=(String)session.getAttribute("uname");

String ssid=request.getParameter("snid");//卖家ID
int sid =Integer.parseInt(ssid);
String ppid=request.getParameter("pid");//宠物ID
int pid =Integer.parseInt(ppid);
String VIPprice=request.getParameter("total");//交易金额
int totalmoney =Integer.parseInt(VIPprice);

try{

    Statement   stmt=conn.createStatement();
      
        String sql="select * from usertable,userinfo where uaccountid=accountid and account='"+name+"'";
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
      
      <%response.setHeader("refresh","0.5;URL=search.jsp");
      }
      else
      {
       String rname=rs.getString("realname"); //获取买家姓名
       String phon=rs.getString("phone");
       String addr=rs.getString("address");
       String pscd=rs.getString("postcode");%>
   <br><br><br>  <center> 系统检测到您的基本信息如下: </center>
  <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="40%">收货人姓名</td>
    <td width="60%"><%=rs.getString("realname") %></td>
</tr>
  <tr align="center">
    <td width="40%">收货人电话</td>
    <td width="60%"><%=rs.getString("phone") %></td>
</tr>
  <tr align="center">
    <td width="40%">邮政编码</td>
    <td width="60%"><%=rs.getString("postcode") %></td>
</tr>
<tr align="center">
    <td width="20%">收货地址</t>
    <td width="40%"><%=rs.getString("address") %></td>
  </tr> 	 
</table><br>
 <center> 
 <font size="+2" face="黑体"> 信息不对?</font><font color="#FF3300" size="+2" face="黑体"><a href="newReceiver.jsp">点这儿</a><br><br><br><br>
 <a href="tijiaoorder.jsp?pid=<%=pid%>&&snid=<%=sid %>&&total=<%=totalmoney %>">确认收货信息</a>
  </font>
 <br>

 </center>
     <%}
    }
 }
catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
%>

<%@ include file="bottom.jsp" %>
<%}
 else
  { %>
<center><a href="login.jsp">你还没有登陆，请登陆!</a></center>     
 <%//response.setHeader("refresh","0.2;URL=login.jsp");
 
  }%>


</body>
</html>