<%@ page language="java" import="java.util.*"  pageEncoding="gb2312"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%
request.setCharacterEncoding("gb2312");
String id=request.getParameter("id");
int id1=Integer.parseInt(id);
%>
<body>

<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">

 <tr><td><left><a href="userdeletepet.jsp"> 返回</a>
</left>

 </td> </tr> 
 
</table>
<%@include file="connection.jsp"%>
<%

Statement stmt=null;
ResultSet rs=null;
	try{

        stmt=conn.createStatement();
 
        String sql ="select * from usertable u,petinfo p where p.petid= '"+id1+"' and p.Saccountid=u.uaccountid";
         rs = stmt.executeQuery(sql); 
         
         while(rs.next()){
String path=rs.getString("picturepath");
String salid=rs.getString("Saccountid");//获取卖家ID
int sid=Integer.parseInt(salid);
String price=rs.getString("VIPprice");//获取价格
int Vprice=Integer.parseInt(price);
  String petsize="";
  String psize=rs.getString("petsize");
  if(psize.equals("a"))
       {petsize="小型犬";}
 else if(psize.equals("b"))
       {petsize="中型犬";}
 else if(psize.equals("c"))
       {petsize="大型犬";}
  
 %>
 <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">

   
 <tr>
    <td width="400"><table height="400" width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img width="400" height="400"  border=0 src="<%=path%>" /></td>
      </tr>
    </table></td>
    <td width="10">&nbsp;</td>
    <td width="490"><table width="490" height="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="80" align="center">宠物名称：</td>
        <td><%=rs.getString("petname")%></td>
      </tr>
      <tr>
        <td width="80" align="center">体&nbsp; &nbsp;&nbsp; 重：</td>
        <td><%=rs.getString("petweight")%>kg</td>
      </tr>
      <tr>
        <td width="80" align="center">大&nbsp; &nbsp;&nbsp; 小：</td>
        <td><%=petsize%></td>
      </tr>
      <tr>
        <td width="80" align="center">产&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;地：</td>
        <td><%=rs.getString("petfrom")%></td>
      </tr>
      <tr>
        <td width="80" align="center">市&nbsp; 场&nbsp;价：</td>
        <td><%=rs.getString("petprice")%>￥</td>
      </tr>
      <tr>
        <td width="80" align="center">会&nbsp; 员&nbsp;价：</td>
        <td><font color="#FF3300"><%=rs.getString("VIPprice")%>￥</font></td>
      </tr>
      <tr>
        <td width="80" align="center">卖家姓名：</td>
        <td><%=rs.getString("account")%></td>
      </tr>
    </table></td>
  </tr>
</table>

<br><hr  width="900" align="center" color="FF6600" >
<center><font color="#FF3300" size="+2" face="黑体"><br>宠物描述:</font></center><br>
<center>
<br><%=rs.getString("petdescription")%>
</center>
<br><br>

<%
}
if(rs!=null)
rs.close();


        }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
 
%>


</body>
</html>