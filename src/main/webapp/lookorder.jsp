<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html"  import="java.sql.*"%>
<html>
<head>
<%int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 5; 
int CountRow = 0; %>
</head>

<%if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");
request.setCharacterEncoding("gb2312");
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


    String sql="select * from usertable,userinfo where uaccountid=accountid and account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
      if(rs.next())  
      {
      String bsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(bsid);   //转换成int型
             
        String sql2="select orderid,Saccountid,petid,ordertime,totalmoney from orderinfo where Baccountid="+bid+" and issend<>2 order by ordertime desc";
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
            %>
   <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
   <tr align="center">
    <td width="20%">卖家id</td>
    <td width="20%">宠物id</td>
    <td width="20%">交易金额</td>
    <td width="20%">下单时间</t>
    <td width="20%">查看详细</td>
  </tr> 
            <%
            while (i<PageSize && !rs2.isAfterLast()) 
            { 
  %>  
 
  <%     
     
       String ordid=rs2.getString("orderid");//订单Id
       String sid=rs2.getString("saccountid");//卖家Id
      String pid=rs2.getString("petid");   //宠物ID
      String totalmoney=rs2.getString("totalmoney");
      String ordertime=rs2.getString("ordertime");
	%>
 <tr  align="center">
    <td width="20%"><%=rs2.getString("saccountid") %></td>
    <td width="20%"><%=rs2.getString("petid") %></td>
    <td width="20%"><%=rs2.getString("totalmoney") %></td>
    <td width="20%"><%=rs2.getString("ordertime") %></td>
    <td width="20%"><a href="lookdetailorder.jsp?sid=<%=sid%>&&ptid=<%=pid %>&&orderid=<%=ordid %>&&total=<%=totalmoney %>">详细</a></td>
  </tr> 	 
 <%
         rs2.next(); 
            i++;  }//while
      %>
  </table>
      <%
       Smt.close();
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
<table align="center">
         <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页<%=PageSize%>条 共<%=CountRow%>条记录  

     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="lookorder.jsp?Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="lookorder.jsp?Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="lookorder.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
</body>
</html>