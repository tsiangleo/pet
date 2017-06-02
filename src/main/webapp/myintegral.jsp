<%@ page language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
 <html>
<body>
<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
  <%
    try{
        String name=(String)session.getAttribute("uname");


        Statement   stmt=conn.createStatement();


        String sql ="select integral from userinfo,usertable where account='"+name+"' and uaccountid=accountid";
        ResultSet rs = stmt.executeQuery(sql); 
	
        if(rs.next())
        {%>
	 <center>
	 <br><br><br>您目前的积分是：<font color=FF6600><%=rs.getString("integral")%></font> 
     </center>  
      <%
	   }
	   else
	   {%>
	   <center><p><p><p>系统没有查询到你的积分。<br></center>
	  
	   <%}
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