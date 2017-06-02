<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
<%
int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 3; 
int CountRow = 0; 
%>
</head>

<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");

 String StrPage = request.getParameter("Page"); 
            if (StrPage == null || StrPage=="") 
            { 
            CurrPage = 1; 
            } 
            else 
            { 
            CurrPage = Integer.parseInt(StrPage); 
            } 
try{


    Statement   stmt=conn.createStatement();

      
        String sql="select accountid from userinfo,usertable where usertable.account='"+name+"' and usertable.uaccountid=userinfo.accountid";
        ResultSet rs = stmt.executeQuery(sql); 
      if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取卖家ID
      int sid =Integer.parseInt(rsid);   //转换成int型
             
        String sql22="select orderid,baccountid,petid,ordertime,totalmoney from orderinfo where saccountid="+sid+" and issend=0 order by ordertime desc";
       ResultSet rs22 = stmt.executeQuery(sql22);  //测试是否没有没处理的订单
       boolean flag=rs22.next();
   if(!flag) 
   {
   %>
    <center><p><p><p><p> 你没有要处理的订单！</center>
    <%
    rs22.close();
   }
   else
  {  %>
  <br><br><br>       
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
   <tr align="center">
    <td width="20%">买家id</td>
    <td width="20%">宠物id</td>
    <td width="20%">交易金额</td>
    <td width="20%">下单时间</t>
    <td width="20%">查看详细</td>
  </tr> 
  <%
      String sql2="select orderid,baccountid,petid,ordertime,totalmoney from orderinfo where saccountid="+sid+" and issend=0 order by ordertime desc";
      Statement Smt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
       ResultSet rs2 = Smt.executeQuery(sql2);  
        rs2.last(); 
            int i = 0; 
            CountRow = rs2.getRow(); 
            CountPage = (CountRow/PageSize); 
            if (CountRow%PageSize>0) 
            CountPage++; 
           rs2.first(); 
            if (CountRow>0) 
            { 
            rs2.absolute(CurrPage*PageSize-PageSize+1); 
            while (i<PageSize && !rs2.isAfterLast()) 
            { 
       String ordid=rs2.getString("orderid");//订单Id
       String bid=rs2.getString("baccountid");//买家Id
      String pid=rs2.getString("petid");   //宠物ID
      String totalmoney=rs2.getString("totalmoney");
      String ordertime=rs2.getString("ordertime");
	%>
 <tr align="center">
    <td width="20%"><%=rs2.getString("baccountid") %></td>
    <td width="20%"><%=rs2.getString("petid") %></td>
    <td width="20%"><%=rs2.getString("totalmoney") %></td>
    <td width="20%"><%=rs2.getString("ordertime") %></td>
    <td width="20%"><a href="dealdetailorder.jsp?bid=<%=bid%>&&pid=<%=pid %>&&orderid=<%=ordid %>">详细</a></td>
  </tr> 	 
 <%
      rs2.next(); 
            i++;   }//while
      %>
  </table>
      <%
    }//%if(rs2.next()) 

  }//if
     } 
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
     <center>你还没有登陆，<a target="_blank" href=login.jsp>请登陆.</a>
     </center>
<%}%>
<table>
         <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页3条 共<%=CountRow%>条记录  

     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="dealorder.jsp?Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="dealorder.jsp?Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="dealorder.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
</body>
</html>