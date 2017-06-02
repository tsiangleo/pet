<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; " language="java"  %>
<html>

<body>
<%
String name=(String)session.getAttribute("uname");

String title=request.getParameter("title"); 
String author=request.getParameter("author"); 
String newsfrom=request.getParameter("newsfrom"); 
String content=request.getParameter("content"); 

//title=new String(title.getBytes("iso-8859-1"),"utf-8");
//author=new String(author.getBytes("iso-8859-1"),"utf-8");
//newsfrom=new String(newsfrom.getBytes("iso-8859-1"),"utf-8");
//content=new String(content.getBytes("iso-8859-1"),"utf-8");

    %>
<%@include file="connection.jsp"%>
<%
 Statement stmt=null;
	try{

           stmt=conn.createStatement();
              
      String sql2="insert into newsinfo (title,author,newsfrom,content)  values('"+title+"','"+author+"','"+newsfrom+"','"+content+"')";
       int result=stmt.executeUpdate(sql2); 
       if(result!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      <script language="javascript">
		alert("新闻加成功！");
      </script>
     
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      <script language="javascript">
		alert("新闻添加失败！");
      </script>
   
      <% }       
   } //try  
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }

 
  
 %>
</body>
</html>