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


      
        String sql ="select address from userinfo,usertable where account='"+name+"' and uaccountid=accountid";
        ResultSet rs = stmt.executeQuery(sql); 
	
        if(rs.next())
        {%>
	 <center><p><p><p>您目前的收货地址如下：<br>
	
       <%=rs.getString("address")%>
       
      <p> <a href=addaddr.jsp>修改收货地址</a>
     </center>  
      <%
	   }
	   else
	   {%>
	   <center><p><p><p>您还没有填写收货地址。<br></center>
	   <center><p> <a href=addaddr.jsp>添加收货地址</a><br></center>
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