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

try{

        Statement   stmt=conn.createStatement();
      
        String sql="select accountid from userinfo,usertable where uaccountid=accountid and usertable.account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())//1  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
     
        int updtnum=0;
        int totalpetnum=0;
        
      String sql2="select * from carinfo where caraccountid="+bid+"";
      Statement   stmt2=conn.createStatement();
       ResultSet  rs2 = stmt2.executeQuery(sql2);
      if(rs2.next()) //2
      {
        int i=0;
        
        while(i<6)
        {  i=i+1;
        String petid00=rs2.getString(i);
        int ppetid=Integer.parseInt(petid00);
        if(ppetid!=0) 
        {  totalpetnum++;           
        String sql3="select * from petinfo where petid="+ppetid+"";      
        Statement stmt3=conn.createStatement();
        ResultSet rs3 = stmt3.executeQuery(sql3);
        if(rs3.next()) 
        {
        int saleid=rs3.getInt("saccountid");
        int totalmoney=rs3.getInt("VIPprice");
        
       String sql4="insert into orderinfo (Baccountid,Saccountid,petid,totalmoney) values("+bid+","+saleid+","+ppetid+","+totalmoney+")";
       Statement  stmt4=conn.createStatement();
       int result=stmt4.executeUpdate(sql4); 
       if(result==1)  
      { updtnum++;  }
        }
       }
       }//while        
       }//2
       int state=0;
      String sql5="update carinfo set petid0=0,petid1=0,petid2=0,petid3=0,petid4=0,petid5=0,totalmoney=0,num=0 where caraccountid="+bid+"";
       Statement  stmt5=conn.createStatement();
       int result2=stmt5.executeUpdate(sql5); 
       if(result2==1)
       {state=1;}            
        
        if(updtnum==totalpetnum&&state==1)
       { %> 
      <script language="javascript">
		alert("已经加入订单列表，等待卖家发货！");
      </script>
     <center><p><p><p>  <font size="+2" face="黑体">
         继续逛一会儿吧！<br></font></a></center>
      <% 
      }
      else
      {%> 
      <script language="javascript">
		alert("购买失败！");
      </script>
     <center><p><p><p>  <a href=search.jsp>返回</a></center>
      <%   }
      
      
       }//1
      stmt.close();
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
<%@ include file="bottom.jsp" %>
</body>
</html>