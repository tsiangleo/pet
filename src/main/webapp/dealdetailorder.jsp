<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*"%>
<html>
<head>
</head>
<center><h2>本条订单详细情况</h2></center><br>
<%if(session.getAttribute("uname")!=null)
{ 
%>
<%!int orderstate; %>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");

String bbid=request.getParameter("bid");//买家ID
int bid =Integer.parseInt(bbid);
String ppid=request.getParameter("pid");//宠物ID
int pid =Integer.parseInt(ppid);
String oorderid=request.getParameter("orderid");//订单ID
int orderid =Integer.parseInt(oorderid);
/*
String VIPprice=request.getParameter("total");//交易金额
int totalmoney =Integer.parseInt(VIPprice);
*/
try{

        Statement   stmt=conn.createStatement();
      
        String sql="select * from usertable,userinfo where uaccountid=accountid and accountid="+bid+""; //查询买家的信息
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {%> 
      <br><center> 买家基本信息 </center><br>
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="20%">真实姓名</td>
    <td width="20%">电话</td>
    <td width="20%">邮编</td>
    <td width="40%">地址</td>
  </tr> 
  
 <tr align="center">
    <td width="20%"><%=rs.getString("realname") %></td>
    <td width="20%"><%=rs.getString("phone") %></td>
    <td width="20%"><%=rs.getString("postcode") %></td>
    <td width="40%"><%=rs.getString("address") %></td>
  </tr> 	 
</table><br><br><br>
      <% 
      rs.close();
      }
      else
      {%>
      <center>买家信息查询失败！</center>
      <%
      rs.close();
      }
       
       
       
     String sql2="select * from petinfo where petid="+pid+""; //查询宠物信息
        ResultSet rs2 = stmt.executeQuery(sql2); 
        if(rs2.next())  
      {%> 
      <br><center> 宠物基本信息 </center><br>
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="25%">宠物名称</td>
    <td width="15%">体重</td>
    <td width="15%">大小</td>
    <td width="15%">产地</td>
    <td width="15%">市场价</td>
    <td width="15%">会员价</td>
  </tr> 
  
 <tr align="center">
    <td width="25%"><%=rs2.getString("petname") %></td>
    <td width="15%"><%=rs2.getString("petweight") %></td>
    <td width="15%"><%=rs2.getString("petsize") %></td>
    <td width="15%"><%=rs2.getString("petfrom") %></td>
    <td width="15%"><%=rs2.getString("petprice") %></td>
    <td width="15%"><%=rs2.getString("VIPprice") %></td>
  </tr> 	 
</table><br><br><br>
      <% 
      rs2.close();
      }
      else
      {%>
      <center>宠物信息查询失败！</center>
      <%
      rs2.close();
      }
      
           String sql3="select * from orderinfo where orderid="+orderid+""; //查询订单信息
        ResultSet rs3 = stmt.executeQuery(sql3); 
        if(rs3.next())  
      {%> 
      <br><center> 订单基本信息 </center><br>
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="30%">交易金额</td>
    <td width="40%">下单时间</td>
    <td width="30%">订单状态</td>
  </tr> 
  
 <tr align="center">
    <td width="30%"><%=rs3.getString("totalmoney") %></td>
    <td width="40%"><%=rs3.getString("ordertime") %></td>
    <% String s="";
       String ordste=rs3.getString("issend");
       orderstate =Integer.parseInt(ordste);
       if(orderstate==0)
       {  s="等待您发货！";}
       else if(orderstate==1)
       {s="已发货，待买家确认收货！";}
       else if(orderstate==2)
       {s="买家已收到货，交易成功！";}
    %>
    <td width="30%"><font color=FF6600><%=s %></td>
  </tr> 	 
</table><br>
      <%

          if(rs3.getInt("issend") == 0){
%>
<center><a href="confirmSend.jsp?ordid=<%=orderid%>">确认发货</a></center>
              <%
          }

                  rs3.close();
      }
      else
      {%>
      <center>订单信息查询失败！</center>
      <%
      rs2.close();
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
</body>
</html>