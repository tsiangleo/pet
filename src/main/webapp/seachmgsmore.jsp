<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%
request.setCharacterEncoding("gb2312");
String id=request.getParameter("id");
//petname=new String(petname.getBytes("iso-8859-1"),"gb2312");
int id1=Integer.parseInt(id);
%>
<body>
<form id="searchresult" name="searchresult" method="post" action="">
  <table width="600" border="1" cellspacing="0" cellpadding="0" align="center">
    <tr align="center">
      <td width="30%">留言题目</td>
      <td width="30%">留言时间</td>
      <td width="40%">留言内容</td>
      
     
    </tr>

      <%@include file="connection.jsp"%>
<%

    Statement stmt=null;
ResultSet rs=null;
	try{

        
           stmt=conn.createStatement();
 
 String sql ="select * from messageinfo where MESSAGEID='"+id1+"'";
       rs = stmt.executeQuery(sql); 
}
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
 
while(rs.next()){


 %>
<tr align="center">

<td width="30%"><%=rs.getString("TITLE")%></td>
<td width="30%"><%=rs.getString("TIME")%></td>
<td width="30%"><%=rs.getString("CONTENT")%></td>
<%
}
if(rs!=null)
rs.close();
if(stmt!=null)
stmt.close();
if(conn!=null)
conn.close();
%>
</table>
</form>
</body>
</html>