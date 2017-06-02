<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%if(session.getAttribute("uname")!=null)
{ //说明：确认收货这个操作会涉及到三个表，1是petinfo中的Baccountid属性要改为买家的Id,2是orderinfo中的issend要改为2；
 // 3是userinfo中的积分属性integral要更新,即加上本次交易的金额
%>

<%@include file="connection.jsp"%>

<%

String name=(String)session.getAttribute("uname");

String oorderid=request.getParameter("ordid");//订单ID
int orderid =Integer.parseInt(oorderid);

String VIPprice=request.getParameter("total");//交易金额,用于积分
int totalmoney =Integer.parseInt(VIPprice);

String ppid=request.getParameter("ptid");//宠物ID,用于处理已卖出的宠物
int pid =Integer.parseInt(ppid);

try{

        Statement   stmt=conn.createStatement();
      
        String sql3 ="select uaccountid from usertable where account='"+name+"'";
        ResultSet rs3 = stmt.executeQuery(sql3); 
        if(rs3.next())
        {//1
        String buyerid=rs3.getString("uaccountid");
        int  bid =Integer.parseInt(buyerid);  
        String sql4="update petinfo set Baccountid="+bid+" where petid="+pid+" ";//更改petinfo中的baccountid
        int rs4 = stmt.executeUpdate(sql4);
          if(rs4 == 1)
          {//2
        String sql="update orderinfo set issend=2 where orderid="+orderid+" and issend=1"; //更改订单状态
        int rs = stmt.executeUpdate(sql); 
        if(rs==1)  
      { //3   
         String sql2="update userinfo set integral=integral+"+totalmoney+"  where accountid="+bid+" "; //更改积分
        int rs2 = stmt.executeUpdate(sql2); 
        if(rs2==1) 
            {%> <center><br><br>操作成功！</center><%       }
       
    }//3
      else
      {//4 %>
      <ceter><br><br>操作失败！</center>  
      <%
      }//4
      }//2
      }//1
      conn.close(); 
  } //try    
    
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