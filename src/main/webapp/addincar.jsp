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
String ssid=request.getParameter("snid");//卖家ID
int sid =Integer.parseInt(ssid);
String ppid=request.getParameter("pid");//宠物ID
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
      if(bid==sid)//买卖家是同一人
      {%>
       <script language="javascript">
		alert("不能买自己的宠物！");
        </script>
        <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>
        
     <%}
      else//1
      {
       String sql2="select * from carinfo where caraccountid="+bid+"";
        ResultSet rs2 = stmt.executeQuery(sql2); 
        if(rs2.next())//2 
        {
        String numb=rs2.getString("num");
        int numofpet =Integer.parseInt(numb);
      
        if(numofpet>=6)
        {
         %>
       <script language="javascript">
		alert("购物车已经满了，先去结账吧！");
        </script>     
       <%
        }
        else
        {
          int falgrepeat=1; //1表示购物车中还没有即将加入的宠物；0表示已经有了。
          
          int ppetidd0=rs2.getInt("petid0");
          int ppetidd1=rs2.getInt("petid1");
          int ppetidd2=rs2.getInt("petid2");
          int ppetidd3=rs2.getInt("petid3");
          int ppetidd4=rs2.getInt("petid4");
          int ppetidd5=rs2.getInt("petid5");
        if(ppetidd0==pid||ppetidd1==pid||ppetidd2==pid||ppetidd3==pid||ppetidd4==pid||ppetidd5==pid) {falgrepeat=0;}//判断购物车中是否有相同的宠物
        if(falgrepeat==0)
        { %>
       <script language="javascript">
		alert("该宠物已经加入购物车了，不能重复加入！");
        </script>
        <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%}
       
         if(falgrepeat==1)
        {
          int petidd0=rs2.getInt("petid0");
          int petidd1=rs2.getInt("petid1");
          int petidd2=rs2.getInt("petid2");
          int petidd3=rs2.getInt("petid3");
          int petidd4=rs2.getInt("petid4");
          int petidd5=rs2.getInt("petid5");

          
          int flag=1;
          if(petidd0==0&&flag==1)
          {
             String sql3="update carinfo set petid0="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             {
               flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
               <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          if(petidd1==0&&flag==1)
          {
             String sql3="update carinfo set petid1="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
               <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          if(petidd2==0&&flag==1)
          {
             String sql3="update carinfo set petid2="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
               <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          if(petidd3==0&&flag==1)
          {
             String sql3="update carinfo set petid3="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
              <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          if(petidd4==0&&flag==1)
          { 
             String sql3="update carinfo set petid4="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
               <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          if(petidd5==0&&flag==1)
          {
             String sql3="update carinfo set petid5="+pid+",num=num+1,totalmoney=totalmoney+"+totalmoney+" where caraccountid="+bid+"";
             int rs3 = stmt.executeUpdate(sql3); 
             if(rs3==1)
             { flag=0;
                %>
               <script language="javascript">
	         	alert("该宠物已经加入购物车！");
               </script>
               <SCRIPT language=javascript>
        function go()
         {
        window.history.go(-1);
         }
         setTimeout("go()",1);
        </SCRIPT>      
       <%
             }
          }
          }
         
          
        
        }//unmofpet<6
        }//2
        }//1
        
     }   
  


 }
 catch(Exception e)
    {
        out.print("异常："+e);
        
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