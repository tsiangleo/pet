<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>


<body>

<%if(session.getAttribute("adname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%
       String nextpagetid=request.getParameter("nextpagetid");
       int msgid =Integer.parseInt(nextpagetid);
	try{

           Statement stmt=conn.createStatement();
      
     String sql = "select * from messageinfo where messageid="+msgid+"";
        ResultSet rs = stmt.executeQuery(sql);
        
	 
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
 <%
	   }

%> 
    
   <%     rs.close();                                
        stmt.close();                              
        conn.close(); 
        %>                            
 <center><p><p><p>
<a href=deleteMessage.jsp> 返回到留言列表</a>
<p><p><p></center>
<%
}
catch(Exception e)
{
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
}

 %>
 <%}
  else
  { %>
	 <p><p>
     <center>你还没有登陆，无法访问.</a>
     </center>
<%}%> 

</body>


</html>