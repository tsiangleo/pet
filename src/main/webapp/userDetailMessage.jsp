<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>

<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="userGetMessage.jsp">留言板</a>&gt;&gt;留言列表:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<body>

<%@include file="connection.jsp"%>
<%
       String nextpagetid=request.getParameter("nextpagetid");
       int msgid =Integer.parseInt(nextpagetid);
	try{

           Statement stmt=conn.createStatement();
      
     String sql = "select * from messageinfo where messageid="+msgid+"";
        ResultSet rs = stmt.executeQuery(sql);
        
	   %>
	    <center><p><p><p><a href=userAddMessage.jsp?uid=1><h2>我要留言</h2></a></center><p><p><p>
	    <%
        while(rs.next())
        {

	%>
	<p>
	<p><center><h3>留言详细信息</h3></center>
  <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr>
    <td align="center" width="30%">作者id</td>
    <td width="70%"><%=rs.getString("accountid")%></td>   
  </tr>
 <tr>
    <td align="center" width="30%">时间</td>
    <td width="70%"><%=rs.getString("time")%></td>   
  </tr>
  <tr>
    <td align="center" width="30%">主题</td>
    <td width="70%"><%=rs.getString("title")%></td>   
  </tr>
  <tr>
    <td align="center" width="30%">内容</td>
    <td width="70%"><%=rs.getString("content")%></td>   
  </tr>
</table> 
<center><p><p><p>
<a href=userGetMessage.jsp> 返回到留言列表</a>
<p><p><p></center>
 <%
	   }

%> 
    
   <%     rs.close();                                
        stmt.close();                              
        conn.close();                             
 
}
catch(Exception e)
{
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
}

 %>
 

</body>
<%@ include file="bottom.jsp" %>

</html>