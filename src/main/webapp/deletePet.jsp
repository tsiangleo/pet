<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>
<%
 int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 6; 
int CountRow = 0; 
%>

<body>

<%if(session.getAttribute("adname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%
 
	try{


           Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
      String StrPage = request.getParameter("Page"); 
            if (StrPage == null || StrPage=="") 
            { 
            CurrPage = 1; 
            } 
            else 
            { 
            CurrPage = Integer.parseInt(StrPage); 
            } 
     String sql = "select * from petinfo";
        ResultSet rs = stmt.executeQuery(sql);
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
            %>
	
   <table  align="center" width="600" border="1" cellspacing="0" cellpadding="0">
  <tr align="center">
   <td width="20%">宠物ID</td>
    <td width="20%">宠物名称</td>
    <td width="20%">宠物价格</td>
    <td width="20%">查看详情</td>
     <td width="20%">操作</td>
</tr>

<%	
            while (i<PageSize && !rs.isAfterLast()) 
            { 

       
      
	%>
    <tr align="center"> 
              <td width="20%"><%=rs.getString("petID")%></td> 
              <td width="20%"><%=rs.getString("petname")%></td> 
              <td width="20%"><%=rs.getString("petprice")%></td> 
              <td width="20%"><a href="searchmore_nohead.jsp?id=<%=rs.getString("petID")%>">详细</a></td> 
              <td width="20%"><a href=dodeletepet.jsp?nextpagetid=<%=rs.getString("petID")%>>删除</a></td>   
            </tr><% 
 rs.next(); 
            i++; 
	   }
}
%> 
    
   <%     rs.close();                                
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
     <center>你还没有登陆，无法访问.</a>
     </center>
<%}%> 
</table>
<table>
         <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页6条 共<%=CountRow%>条记录 
 <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="deletePet.jsp?Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="deletePet.jsp?Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="deletePet.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div>
</body>

</html>