<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html" language="java"  %>
<html>
<head><title>新闻-我要淘宠网</title></head>
<body>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="looknews.jsp">新闻</a>:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >
<%@include file="connection.jsp"%>
<%
  String newid=request.getParameter("nwstid");
  int newsid =Integer.parseInt(newid);
	try{

        
           Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      
     String sql = "select * from newsinfo where newsid="+newsid+"";
        ResultSet rs = stmt.executeQuery(sql);
        if(rs.next())
        {
	  
%>
   <table bordercolor="#ffffff" width="800" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3" align="center"><h2><%=rs.getString("title") %></h2></td>
  </tr>
  <tr>
    <td width="30%" align="center">作者：<%=rs.getString("author") %></td>
    <td width="40%" align="center">更新时间：<%=rs.getString("updatetime") %></td>
    <td width="30%" align="center">来源：<%=rs.getString("newsfrom") %></td>
  </tr>
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td colspan="3"><table width="800" bordercolor="#3366FF" border="1" cellspacing="0" cellpadding="5">
      <tr>
        <td><%=rs.getString("content") %></td>
      </tr>
    </table></td>
  </tr>
</table>
<%
  }
                              
        conn.close();
  }

catch(Exception e)
{
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
}

 %>
</body><br><br>
<%@ include file="bottom.jsp" %>
</html>