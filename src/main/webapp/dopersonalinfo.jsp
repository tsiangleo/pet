
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" language="java" import="java.sql.*,java.io.*,javax.servlet.http.*,java.util.*" %>

<%@include file="connection.jsp"%>
<%
try{
       String name=(String)session.getAttribute("uname");

        Statement stmt;

     stmt=conn.createStatement();
     
      String realname=request.getParameter("realname");
      
      String email=request.getParameter("email");
      String address=request.getParameter("address");
      String IDcard=request.getParameter("IDcard");
      String phone=request.getParameter("phone");
      String postcode=request.getParameter("postcode");
      String sex=request.getParameter("sex");
      
      
//
//      realname=new String(realname.getBytes("iso-8859-1"),"utf-8");
//      email=new String(email.getBytes("iso-8859-1"),"utf-8");
//      address=new String(address.getBytes("iso-8859-1"),"utf-8");
//      IDcard=new String(IDcard.getBytes("iso-8859-1"),"utf-8");
//      phone=new String(phone.getBytes("iso-8859-1"),"utf-8");
//      postcode=new String(postcode.getBytes("iso-8859-1"),"utf-8");
//      sex=new String(sex.getBytes("iso-8859-1"),"utf-8");

  
      String sql="select uaccountid from usertable where account='"+name+"'";
      ResultSet rs = stmt.executeQuery(sql); 
       if(rs.next())  
      {
      int id=rs.getInt("uaccountid");
      
      String sql2="update userinfo set email='"+email+"',realname='"+realname+"',address='"+address+"',IDcard='"+IDcard+"',phone='"+phone+"',postcode='"+postcode+"',sex='"+sex+"' where accountid="+id+"";
      stmt.executeUpdate(sql2); 
      stmt.close();
      conn.close();  
       %>
        <center><br>操作成功！</center>
      
       
     <% }
      
     else{
      %>
         <center><br>操作失败！</center>
       <%
      }
 }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }

 %>
