<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html"  import="java.sql.*"%>
<html>
<head>
<title>宠物查询-我要淘宠网</title>

</head>
<body>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">买宠物</a>:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<center><font color="#FF3300" size="+2" face="黑体">条件查询宠物</font></center><br>
<form id="search" name="search" method="post" action="dosearch.jsp?pageid=1">
<table width="300" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td align="right">宠物名称：</td>
    <td align="left">  <input type="text" name="petname" id="petname" size="20"></td>
  </tr>
  <tr>
    <td align="right">宠物价格：</td>
    <td align="left"><label>
      <select name="petprice">
        <option value="1" selected>&lt;100</option>
        <option value="2">100-1000</option>
        <option value="3">1000-2000</option>
        <option value="4">&gt;2000</option>
      </select>
    </label></td>
  </tr>
  <tr>
    <td align="right">宠物产地：</td>
    <td align="left"><label>
      <input name="petfrom" id="petfrom" type="text" size="20">
    </label></td>
  </tr>
  <tr>
    <td align="right">宠物大小：</td>
    <td align="left"><label>
      <select name="size">
        <option value="1" selected>大型犬</option>
        <option value="2">中型犬</option>
        <option value="3">小型犬</option>
                  </select>
    </label></td>
  </tr>
  <tr>
    <td colspan="2" align="center"><input  type="submit"  value="查询"> &nbsp; &nbsp; <input  type="reset"  value="取消">    </td>
  </tr>
</table>
<br><br>
<hr  width="900" align="center" color="#FF0000" >
<center><font color="#FF3300" size="+2" face="黑体">最新宠物</font></center><br>
<table align="center" width="900" border="1" cellspacing="0" cellpadding="0">
  <tr align="center" height="50">
  
    <td width="20%">宠物图片</td>
    <td width="30%">宠物名称</td>
    <td width="20%">宠物价格</td>
    <td width="15%">宠物产地</td>
    <td width="15%">查看详情</td>
 </tr>
  <%@include file="connection.jsp"%>
  <%
Statement stmt=null;
ResultSet rs=null;
	try{

     stmt=conn.createStatement();
			 
           String sql ="select * from PetINFO where Baccountid=0 and petID<50";
           rs = stmt.executeQuery(sql); 

       }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
             
while(rs.next()){
int a=rs.getInt("petID");
String path=rs.getString("picturepath");
%>
<tr align="center">
<td width="20%"><a href="searchmore.jsp?id=<%=a%>"><img width="100" height="100"  border=0 src="<%=path%>" /></a></td>
<td width="30%"><a href="searchmore.jsp?id=<%=a%>"><%=rs.getString("petname")%></a></td>
<td width="20%"><font color="#FF3300"><%=rs.getString("VIPPRICE")%>￥</font></td>
<td width="15%"><%=rs.getString("petfrom")%></td>
<td width="15%"><a href="searchmore.jsp?id=<%=a%>">去看看</a></td>
</tr>
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

<p>&nbsp;</p>
<p>
<%@ include file="bottom.jsp" %>
</p>

</body>
</html>
