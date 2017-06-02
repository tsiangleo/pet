<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>


<body>
<%if(session.getAttribute("adname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%
       String newsid1=request.getParameter("newsid");
       int newsid =Integer.parseInt(newsid1);

try{

    Statement stmt=conn.createStatement();
      
        
	   String sql="delete from newsinfo where newsid="+newsid+"";
       int update=stmt.executeUpdate(sql); 
       if(update!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
     
      <script language="javascript">
		alert("该条留言已删除！");
<%
response.sendRedirect("deletenews.jsp");//因为有这个跳转页面，所以上面的语句看不到，执行速度太快了
%>
     </script>
      
      <% }
      
     else
     {
       stmt.close();
       conn.close(); %> 
      
     <script language="javascript">
		alert("该条留言未能成功删除！");
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