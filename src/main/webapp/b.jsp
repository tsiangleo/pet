<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
<title>宠物查询-我要淘宠网</title>

</head>
<body>
<%@ include file="head.jsp" %>
<%@include file="connection.jsp"%>
  <%
Statement stmt=null;
ResultSet rs=null;
	try{

            stmt=conn.createStatement();
			 
           String sql ="select * from PetINFO where Baccountid=0 and petID<50 ";
           rs = stmt.executeQuery(sql); 

       }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
%>
<%! int h=0; //用于记录有多少行%>
<table width="900"  bordercolor="#FFFFFF" border="1" align="center" cellpadding="0" cellspacing="0">
<tr height="200" align="center">
<% 
int j=0;        
while(rs.next()){
int a=rs.getInt("petID");
String path=rs.getString("picturepath");
j++;%>
<% if(j%6!=0)//每行显示5条信息
{%>
 <td align="center" bordercolor="#FF3300" width="170">
      
      <table  width="170">
         <tr align="center">
          <td><a href="searchmore.jsp?id=<%=a%>"><img width="160" height="180"  border=0 src="<%=path%>" /></a></td>
        </tr>
        <tr align="center">
          <td>名称：<%=rs.getString("petname")%></td>          
        </tr>
        <tr align="center">
          <td>价格：<font color="#FF3300"><%=rs.getString("petprice")%>￥</font></td>        
        </tr>
      </table>
    </td >
    <td align="center" width="10">
    </td>

<%}
else if(j%6==0)
{
h++;//记录一共加了多少个<tr>;方便后面加等个数的</tr>
%>
<tr height="20"><td></td></tr> <%//行间距设为20px %>
<tr height="200" align="center">
<%
}
%>

<%} 
for(int c=0;c<h;c++)
{
%>
</tr> <%//补上等个数对的</tr> %>
<%
}
%>
</tr>
</table>
<% 
if(rs!=null) 
rs.close(); 
if(stmt!=null) 
stmt.close(); 
if(conn!=null) 
conn.close();
%> 
 
<%@ include file="bottom.jsp" %>
</p>

</body>
</html>
