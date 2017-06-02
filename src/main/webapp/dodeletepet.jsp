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
       int petid =Integer.parseInt(nextpagetid);
try{

    Statement stmt=conn.createStatement();
      
        
	   String sql="delete from petinfo where petid="+petid+"";
       int update=stmt.executeUpdate(sql); 
       if(update!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
     
      <script language="javascript">
		alert("该条宠物信息已删除！");
      </script>
      
      <% }
      
     else
     {
       stmt.close();
       conn.close(); %> 
      
     <script language="javascript">
		alert("该条宠物信息未能成功删除！");
      </script>                   
     <%}
     }
 catch(Exception e)
{
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
}
 %>

</body>
<%}
  else
  { %>
	 <p><p>
     <center>你还没有登陆，无法访问.</a>
     </center>
<%}%>

</html>