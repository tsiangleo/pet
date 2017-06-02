
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" language="java" import="java.sql.*,java.io.*,javax.servlet.http.*,java.util.*" %>

<%@include file="connection.jsp"%>
<%
try{
        request.setCharacterEncoding("gb2312");


        Statement stmt=conn.createStatement();
    
       
      String account=request.getParameter("account");
      String realname=request.getParameter("realname");
      String password=request.getParameter("password");
      String email=request.getParameter("email");
      String address=request.getParameter("address");
      String IDcard=request.getParameter("IDcard");
      String phone=request.getParameter("phone");
      String postcode=request.getParameter("postcode");
      String sex=request.getParameter("sex");
      
      
      account=new String(account.getBytes("iso-8859-1"));
      realname=new String(realname.getBytes("iso-8859-1"));
      password=new String(password.getBytes("iso-8859-1"));
      email=new String(email.getBytes("iso-8859-1"));
      address=new String(address.getBytes("iso-8859-1"),"utf-8");
      IDcard=new String(IDcard.getBytes("iso-8859-1"));
      phone=new String(phone.getBytes("iso-8859-1"));
      postcode=new String(postcode.getBytes("iso-8859-1"));
      sex=new String(sex.getBytes("iso-8859-1"));
        
      
      
    if(account.equals("") | realname.equals("")|password.equals("")|IDcard.equals(""))
        {response.sendRedirect("regist.jsp");}
    else
    {
      //String sql1="insert into personalinfo (perid,paccountid,email,realname,address,IDcard,phone,postcode,sex) values(perid.nextval,paccountid.nextval,'"+email+"','"+realname+"','"+address+"','"+IDcard+"','"+phone+"','"+postcode+"','"+sex+"')";
      String sql1="insert into personalinfo (perid,paccountid,email,realname,address,IDcard,phone,postcode,sex) values(1,1,'"+email+"','"+realname+"','"+address+"','"+IDcard+"','"+phone+"','"+postcode+"','"+sex+"')";
      stmt.executeUpdate(sql1);  //注意是scott.usertable,不是 test.usertable
      
     // String sql2="insert into userinfo (account,password,accountid) values('"+account+"','"+password+"',accountid.nextval)";
     String sql2="insert into userinfo (account,password,accountid) values('"+account+"','"+password+"',1)";
      stmt.executeUpdate(sql2);  //注意是scott.usertable,不是 test.usertable
      
      out.print("数据添加成功");
      
      stmt.close();
      conn.close();    
    }
 }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
    }

 %>