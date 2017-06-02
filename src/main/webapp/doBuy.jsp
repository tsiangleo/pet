<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%@ include file="head.jsp" %>
<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");
request.setCharacterEncoding("gb2312");
String ssid=request.getParameter("snid");//卖家ID
int sid =Integer.parseInt(ssid);
String ppid=request.getParameter("pid");//宠物ID
int pid =Integer.parseInt(ppid);
String VIPprice=request.getParameter("total");//交易金额
int totalmoney =Integer.parseInt(VIPprice);

try{

        Statement   stmt=conn.createStatement();
      
        String sql="select accountid from userinfo,usertable where uaccountid=accountid and usertable.account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
      if(bid==sid)//买卖家是同一人
      {%>
       <script language="javascript">
		alert("不能买自己的宠物！");
        </script>
      
          <%response.setHeader("refresh","0.5;URL=search.jsp");
      }
      else
      {
      
            
      String sql2="insert into orderinfo (Baccountid,Saccountid,petid,totalmoney) values("+bid+","+sid+","+pid+","+totalmoney+")";
       int result=stmt.executeUpdate(sql2); 
       if(result!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      <script language="javascript">
		alert("已经加入订单列表，等待卖家发货！");
      </script>
     <center><p><p><p>  <font size="+2" face="黑体">
         继续逛一会儿吧！<br></font></a></center>
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      <script language="javascript">
		alert("购买失败！");
      </script>
     <center><p><p><p>  <a href=search.jsp>返回</a></center>
      <%   
       
      }
      
      }
    }//bid==sid
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
<%@ include file="bottom.jsp" %>
</body>
</html>