<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html" language="java"  %>
<html>
<head><title>留言板-我要淘宠网</title></head>
<%@ include file="head.jsp" %>
<body>
<%
int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 10; 
int CountRow = 0; 
%>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="userGetMessage.jsp">留言板</a>:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >
<%@include file="connection.jsp"%>
<%
 
	try{


         String StrPage = request.getParameter("Page");
            if (StrPage == null || StrPage=="") 
            { 
            CurrPage = 1; 
            } 
            else 
            { 
            CurrPage = Integer.parseInt(StrPage); 
            } 
           Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      
     String sql = "select * from messageinfo order by time desc";
        ResultSet rs = stmt.executeQuery(sql);
	  
%>

   <center><p><p><p><a href="userAddMessage.jsp?uid=1"><h2>我要留言</h2></a></center><p><p><p>    
 <table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="10%">作者id</td>
    <td width="20%">时间</td>
    <td width="70%">主题</td>
  </tr>
<%	
        rs.last(); 
            int i = 0; 
            CountRow = rs.getRow(); 
            CountPage = (CountRow/PageSize); 
            if (CountRow%PageSize>0) 
            CountPage++; 
            rs.first(); 
            if (CountRow>0) 
            { 
            rs.absolute(CurrPage*PageSize-PageSize+1); 
            while (i<PageSize && !rs.isAfterLast()) 
            { 
        String rsid=rs.getString("messageid");
      int msgid =Integer.parseInt(rsid);//转换成int型
      
      String title=rs.getString("title");

	%>
	 
  <tr align="center">
    <td align="center" width="10%"><%=rs.getString("accountid") %></td>   

    <td width="20%"><%=rs.getString("time")%></td>   

    <td width="70%"><a href=userDetailMessage.jsp?nextpagetid=<%=msgid%>><%=title%></a></td>  

  </tr>
 
 <%
	   rs.next(); 
            i++;   }

%> 
    </table>
<table align="center">
         <tr> 
          <td nowrap><br>[<%=CurrPage%>/<%=CountPage %>] 每页<%=PageSize%>条 共<%=CountRow%>条记录  

     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="userGetMessage.jsp?Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="userGetMessage.jsp?Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="userGetMessage.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
  
     <h1 align="center">&nbsp;      </h1> 
</div> 
    
   <%     rs.close();                                
        stmt.close();                              
        conn.close();                             
 }
}
catch(Exception e)
{
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
}

 %>
</body><br><br>
<%@ include file="bottom.jsp" %>
</html>