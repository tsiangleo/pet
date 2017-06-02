<%@ page language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html " language="java"  %>
<html>

<body>
    <%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");

 String addr=request.getParameter("addr");

 Statement stmt=null;
	try{

        stmt=conn.createStatement();
          
       String sql1="select uaccountid from usertable where account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql1); 
       if(rs.next())
       {
       
       int id=rs.getInt("uaccountid"); 
         
      String sql2="update userinfo set address='"+addr+"' where accountid="+id+"";
     int update=stmt.executeUpdate(sql2); 
       if(update!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      
     <center><p><p><p> 收货地址更新成功！</center>
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      
     <center><p><p><p> 收货地址更新错误！</center>
      <%   
       
      }
      }
 }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }

 %>
</body>
</html>