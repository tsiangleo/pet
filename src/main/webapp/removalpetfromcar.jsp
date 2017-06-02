<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>

<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">买宠物</a>&gt;&gt;宠物详细信息&gt;&gt;确认收货人信息:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<br><table width="800" height="30" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="800"><img src="images/lc1.gif" width="800" height="30" /></td>
  </tr>
</table>

<%

String name=(String)session.getAttribute("uname");
request.setCharacterEncoding("gb2312");

String ppid=request.getParameter("cpid");//宠物ID
int pid =Integer.parseInt(ppid);
String VIPprice=request.getParameter("total");//交易金额
int totalmoney =Integer.parseInt(VIPprice);
%>
<%@include file="connection.jsp"%>
<%
try{

        Statement   stmt=conn.createStatement();
      
         String sql="select * from userinfo,usertable where account='"+name+"' and uaccountid=accountid";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
     
       String sql2="select * from carinfo where caraccountid="+bid+"";
        ResultSet rs2 = stmt.executeQuery(sql2); 
        if(rs2.next())//2 
        {     
          int petidd0=rs2.getInt(1);
          int petidd1=rs2.getInt(2);
          int petidd2=rs2.getInt(3);
          int petidd3=rs2.getInt(4);
          int petidd4=rs2.getInt(5);
          int petidd5=rs2.getInt(6);
          
          int flag=1;
          if(petidd0==pid&&flag==1)
          {
             String sql3="update carinfo set petid0=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             {
               flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>  
              
       <%
             }
          }
          if(petidd1==pid&&flag==1)
          {
             String sql3="update carinfo set petid1=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
               </script>
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>
       <%
             }
          }
          if(petidd2==pid&&flag==1)
          {
             String sql3="update carinfo set petid2=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
       
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>
               
       <%
             }
          }
          if(petidd3==pid&&flag==1)
          {
             String sql3="update carinfo set petid3=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
              
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>
                  
       <%
             }
          }
          if(petidd4==pid&&flag==1)
          { 
             String sql3="update carinfo set petid4=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
           
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>
              
       <%
             }
          }
          if(petidd5==pid&&flag==1)
          {
             String sql3="update carinfo set petid5=0,num=num-1,totalmoney=totalmoney-"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经从购物车中移除！");
               </script>
              
               <SCRIPT language=javascript>
               location.replace(document.referrer);
               </SCRIPT>
        
       <%
             }
          }
          }
         
          
        
        } 
       
        
        
  
    /*    else if(numofpet==0)
        {
         String sql3="update carinfo set totalmoney=totalmoney+"+totalmoney+",num=num+1,petid0="+pid+" where caraccountid="+bid+"";
        int rs3 = stmt.executeUpdate(sql3); 
        if(rs3==1)
        {
      
        }     
*/

 }
 catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }
 %>   

 <%@ include file="bottom.jsp" %>
 <%}
else
  { %>
<center><a href="login.jsp">你还没有登陆，请登陆!</a></center>     
 <%//response.setHeader("refresh","0.2;URL=login.jsp");
 
  }%>


<body><br><br><br></body>
</html>