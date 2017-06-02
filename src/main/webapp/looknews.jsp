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
<br><br>
<%@include file="connection.jsp"%>
<%
 
	try{

         Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      
        String sql = "select * from newsinfo order by updatetime desc";
        ResultSet rs = stmt.executeQuery(sql);	  
%>
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">  
<%	
  while(rs.next())
  {
      String title=rs.getString("title");
      
       String rsid=rs.getString("newsid");
      int newsid =Integer.parseInt(rsid);//转换成int型    
	%>	 
    <tr align="center">
    <td ><a href="lookdetailnews.jsp?nwstid=<%=newsid%>"><%= title%></a></td>  
    </tr>
 <%
  }
%> 
</table>
<%  rs.close();                                
    stmt.close();                              
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