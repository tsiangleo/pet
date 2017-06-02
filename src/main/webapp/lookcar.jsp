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
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">用户中心</a>&gt;&gt;我的购物车:</td>
  </tr>
<hr  width="900" align="center" color="FF6600" >
</table>
<%

String name=(String)session.getAttribute("uname");

%>
<%@include file="connection.jsp"%>
<%
int numofpet=0; 

try{
    Statement   stmt1=conn.createStatement();
      
         String sql="select * from userinfo,usertable where account='"+name+"' and uaccountid=accountid";
        ResultSet rs = stmt1.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
      
       Statement stmt2=conn.createStatement();
       String sql2="select * from carinfo where caraccountid="+bid+"";
       ResultSet  rs2 = stmt2.executeQuery(sql2);
         
        if(rs2.next()) 
        { 
         
        %>
    <br>  <center><font color="#FF3300" size="+2" face="黑体"> 以下是您购物车中的宠物 </font>  </center><br>
  <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
   <tr align="center" height="50">
    <td width="25%">宠物图片</td>
    <td width="25%">宠物名称</td>
    <td width="25%">宠物价格</td>
    <td width="25%">操作</td>
 </tr><%
       int i=0;
       while(i<6)
       {

        int ppetid=rs2.getInt("petid" + i);
           i=i+1;
        if(ppetid!=0)
        {
               
        String sql3="select * from petinfo where petid="+ppetid+"";
        Statement stmt3=conn.createStatement();
        ResultSet rs3 = stmt3.executeQuery(sql3);
        if(rs3.next()) 
        { numofpet=1;
  %>  
<tr align="center">
<td width="25%"><a href="searchmore_nohead.jsp?id=<%=rs3.getString("petid")%>"><img width="100" height="100"  border=0 src="<%=rs3.getString("picturepath")%>" /></a></td>
<td width="25%"><%=rs3.getString("petname")%></td>
<td width="25%"><font color="#FF3300"><%=rs3.getString("VIPprice")%>￥</font></td>
<td width="25%"><a href="removalpetfromcar.jsp?cpid=<%=rs3.getString("petid")%>&&total=<%=rs3.getString("VIPprice") %>">移除</a></td>
</tr>


<%  
}
   rs3.close();
    stmt3.close();
    }
  } //while
  %>
</table>
<%
 }
 if(numofpet==1)
 {%>
 <center><a href="shopconfirorder2.jsp"><font color="#FF3300" size="+1" face="黑体"><br><br>去结算</font></a></center>
 <%}
}
 }
 catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下："+e);
    }
 %>   
<br>
 
 <%@ include file="bottom.jsp" %>
 <%}
else
  { %>
<center><a href="login.jsp">你还没有登陆，请登陆!</a></center>     
 <%//response.setHeader("refresh","0.2;URL=login.jsp");
 
  }%>

 
</html>