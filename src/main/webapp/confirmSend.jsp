<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>

<%
String oorderid=request.getParameter("ordid");//订单ID
int orderid =Integer.parseInt(oorderid);

try{

        Statement   stmt=conn.createStatement();
      
        String sql="update orderinfo set issend=1 where orderid="+orderid+" and issend=0"; //更改订单状态
        int rs = stmt.executeUpdate(sql); 
        if(rs==1)  
      {%> 
      
		<center><br><br>操作成功！</center>     

      <%}
      else
      {%>
      <center><br><br>操作失败！</center>  
      <%

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
 else
  { %>
	 <p><p>
     <center>你还没有登陆，<a href=login.jsp>请登陆.</a>
     </center>
<%}%>
<body><br></body>
</html>