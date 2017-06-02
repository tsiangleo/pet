
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" language="java" import="java.sql.*,java.io.*,javax.servlet.http.*,java.util.*" %>

<%@include file="connection.jsp"%>
<%
try{
        //request.setCharacterEncoding("gb2312");

    Statement stmt=conn.createStatement();

       
      String account=request.getParameter("account");
      
      String password=request.getParameter("password");
     
      
      
      account=new String(account.getBytes("iso-8859-1"),"utf-8");
     
      password=new String(password.getBytes("iso-8859-1"),"utf-8");
     
      String sql="select account from usertable where account='"+account+"'";
      ResultSet rs = stmt.executeQuery(sql); 
       if(rs.next())  //用户名已存在
      {
      %>
        <script language="javascript">
		alert("对不起，注册失败！用户名已存在！");
        </script>
      
       <%response.setHeader("refresh","0.5;URL=regist.jsp");
       //response.sendRedirect("registfail.jsp");
      }
      
     else{
     
      String sql2="insert into usertable(account,password) values('"+account+"','"+password+"')";
      stmt.executeUpdate(sql2); 
      stmt.close();
      
       
      Statement stmt2=conn.createStatement();
      String sql3="select uaccountid from usertable where account='"+account+"'";
      ResultSet rs2 = stmt2.executeQuery(sql3); 
       if(rs2.next()) 
      {
      int newuid=rs2.getInt("uaccountid");
      
      String sql4="insert into userinfo(accountid) values("+newuid+")";
     int resul=stmt2.executeUpdate(sql4); 
     
     String sql5="insert into carinfo(caraccountid) values("+newuid+")";
     int resul2=stmt2.executeUpdate(sql5);
     if(resul==1&&resul2==1)
     {
     %>
        <script language="javascript">
		alert("恭喜你，注册成功！");
        </script>
    
    
     <% response.setHeader("refresh","0.5;URL=shouye.jsp");
     }
     }
      stmt2.close();
       
      }
      
     conn.close(); 
 }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }

 %>
