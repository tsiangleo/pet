<%@ page language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>

<body>
<%@include file="connection.jsp"%>
<%
 request.setCharacterEncoding("gb2312");
String name=(String)session.getAttribute("uname");

// pwd=session.getAttribute("password");
 String oldpwd=request.getParameter("oldpwd");
 String newpwd=request.getParameter("newpwd");
 
   oldpwd=new String(oldpwd.getBytes("iso-8859-1"),"utf-8");
     newpwd=new String(newpwd.getBytes("iso-8859-1"),"utf-8");

      


 ResultSet  rs=null;
 Statement stmt=null;
	try{

           stmt=conn.createStatement();
      
       String sql ="select * from usertable where account='"+name+"'and password='"+oldpwd+"'";
       rs = stmt.executeQuery(sql); 
       if(rs.next())  
      {
      
      String sql2="update usertable set password='"+newpwd+"' where account='"+name+"'";
      stmt.executeUpdate(sql2); 
      stmt.close();
      conn.close(); %> 
      
     <center><p><p><p> 密码修改成功！</center>
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      
     <center><p><p><p> 原始密码错误！</center>
      <%   
       
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