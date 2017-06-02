
<%@ page contentType="text/html; charset=utf-8" language="java" import="java.sql.*,java.io.*,javax.servlet.http.*" %>

<%@include file="connection.jsp"%>
<%
try{

        Statement stmt=conn.createStatement();
   
       // String sql = "select * from userinfo";
        
        
       // ResultSet rs = stmt.executeQuery(sql);
        
        request.setCharacterEncoding("gb2312");
       // response.setContentType("text/html;charset=gb2312");
        
      String username=request.getParameter("username");
      
    //  String realname=request.getParameter("realname");
      String userpwd=request.getParameter("userpwd");
      String usermail=request.getParameter("usermail");
     String useraddress=request.getParameter("useraddress");
     // String IDcard=request.getParameter("IDcard");
    //  integer userid=1010;
      
       username=new String(username.getBytes("iso-8859-1"),"gb2312");
      //realname=new String(realname.getBytes("iso-8859-1"));
      userpwd=new String(userpwd.getBytes("iso-8859-1"));
      usermail=new String(usermail.getBytes("iso-8859-1"));
      useraddress=new String(useraddress.getBytes("iso-8859-1"),"gb2312");
      //IDcard=new String(IDcard.getBytes("iso-8859-1"));
    
      
      
    if(username.equals("") |userpwd.equals(""))
        {response.sendRedirect("regist.jsp");}
    else
    {
      String sql="insert into userinfo (userid,username,usermail,userpwd) values('1026','"+username+"','"+usermail+"','"+userpwd+"')";
      stmt.executeUpdate(sql);  //注意是scott.usertable,不是 test.usertable
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
 

 
 
<%--

String trans(String chi)
{
   String result = null;
   byte temp [];
   try
  {

   temp=chi.getBytes("gb2312");
   result = new String(temp);
  }
  catch(java.io.UnsupportedEncodingException e)
  {
         System.out.println(e,toString());
  }
  return result;
}
String trans(Object chi)
{
return trans(chi.toString());
}
 --%>
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 