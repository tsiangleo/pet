<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%if(session.getAttribute("adname")!=null)
{ 
String choos=request.getParameter("id"); 
int id=Integer.parseInt(choos);
%>
<%@include file="connection.jsp"%>
<%
if(id==1)
{
String account=request.getParameter("account"); 
account=new String(account.getBytes("iso-8859-1"),"utf-8");
try{

    Statement   stmt=conn.createStatement();
       
      String sql2="select uaccountid from usertable where account='"+account+"'";
        ResultSet rs2 = stmt.executeQuery(sql2); 
       if(rs2.next())
       {
       
       int uid=rs2.getInt("uaccountid"); 
       
        String sql="update userinfo set accountstate=0 where accountid="+uid+" and accountstate=1"; 
        int rs = stmt.executeUpdate(sql); 
        if(rs==1)  
      {%> 
      
		<center><br><br>操作成功！该账户已被冻结</center>     

      <%}
      else
      {%>
      <center><br><br>操作失败！</center>  
      <%

      }
      }
      conn.close(); 
  }     
    
catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
%>
<% }
   else if(id==2)
   {
   String account=request.getParameter("account"); 
   account=new String(account.getBytes("iso-8859-1"),"utf-8");
try{
%>
<%
       Statement   stmt=conn.createStatement();
      
      String sql2="select uaccountid from usertable where account='"+account+"'";
        ResultSet rs2 = stmt.executeQuery(sql2); 
       if(rs2.next())
       {
       
       int uid=rs2.getInt("uaccountid"); 
       
        String sql="update userinfo set accountstate=1 where accountid='"+uid+"' and accountstate=0"; 
        int rs = stmt.executeUpdate(sql); 
        if(rs==1)  
      {%> 
      
		<center><br><br>操作成功！该账户已解冻</center>     

      <%}
      else
      {%>
      <center><br><br>操作失败！</center>  
      <%

      }
      }
      conn.close(); 
  }     
    
catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
%>
<%}
}


 else
  { %>
	  <p><p>
     <center>你还没有登陆，无法访问.</a>
     </center>
<%}%>
<body><br></body>
</html>