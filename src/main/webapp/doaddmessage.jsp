<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; " language="java"  %>
<html>

<body>
<%
    String uuid=request.getParameter("uid"); 
int uid =Integer.parseInt(uuid); 
String name=(String)session.getAttribute("uname");
//SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");

String title = request.getParameter("title");
String content = request.getParameter("content");
if(uid==1)//用户发表留言
{ 
if(title.equals(""))
{ %>
<script language="javascript">
		alert("主题不能为空！");
        </script>
      
           <center><p><p><p>  <a href=userAddMessage.jsp?uid=1>返回</a></center>
<% }
else if(content.equals(""))
{%>
<script language="javascript">
		alert("内容不能为空！");
        </script>
      
         <center><p><p><p>  <a href=userAddMessage.jsp?uid=1>返回</a></center>
<%}
else
{
    %>
<%@include file="connection.jsp"%>
<%

 Statement stmt=null;
	try{

        stmt=conn.createStatement();
      
      String sql="select uaccountid from userinfo,usertable where accountid=uaccountid and account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("uaccountid");
      int id =Integer.parseInt(rsid);//转换成int型
      
            
      String sql2="insert into messageinfo (accountid,content,title)  values("+id+",'"+content+"','"+title+"')";
       int result=stmt.executeUpdate(sql2); 
       if(result!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      <script language="javascript">
		alert("留言添加成功！");
      </script>
        
      <%  response.setHeader("refresh","0.5;URL=userGetMessage.jsp");
      }
      
     else{
       stmt.close();
       conn.close(); %> 
      <script language="javascript">
		alert("留言添加失败，返回重新添加吧！");
      </script>
      <%    response.setHeader("refresh","0.5;URL=userAddMessage.jsp");
       
      }
      
      }
      
   } //try  
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
    }
}
   else if(uid==0)
{
    if(title.equals(""))
{ %>
<script language="javascript">
		alert("主题不能为空！");
        </script>
      
           <center><p><p><p>  <a href=userAddMessage.jsp?uid=0>返回</a></center>
<% }
else if(content.equals(""))
{%>
<script language="javascript">
		alert("内容不能为空！");
        </script>
      
         <center><p><p><p>  <a href=userAddMessage.jsp?uid=0>返回</a></center>
<%}
else
{
    %>
<%@include file="connection.jsp"%>
<%
 Statement stmt=null;
	try{

        stmt=conn.createStatement();
            
      String sql2="insert into messageinfo (accountid,content,title)  values(-1,'"+content+"','"+title+"')";
       int result=stmt.executeUpdate(sql2); 
       if(result!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      <script language="javascript">
		alert("留言添加成功！");
      </script>
      
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      <script language="javascript">
		alert("留言添加失败！");
      </script>
        
       <%}
  }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
    
  }
}
 %>
</body>
</html>