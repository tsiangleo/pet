<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>
<%
 int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 6; 
int CountRow = 0; 
%>

<body>

<%
if(session.getAttribute("uname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%
 
	try{

        Statement   stmt=conn.createStatement();

     
String StrPage = request.getParameter("Page"); 
            if (StrPage == null || StrPage=="") 
            { 
            CurrPage = 1; 
            } 
            else 
            { 
            CurrPage = Integer.parseInt(StrPage); 
            } 
 

   String name=(String)session.getAttribute("uname");

     String sql = "select * from petinfo,usertable where uaccountid=saccountid and account='"+name+"'";
        ResultSet Rs = stmt.executeQuery(sql);
	  
%>
	<table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
  <td width="40%">宠物名称</td>
      
      <td width="20%">市场价</td>
      
      <td width="30%">产地</td>
      
      <td width="10%">操作</td>
  </tr>
 


<%
   Rs.last(); 
            int i = 0; 
            CountRow = Rs.getRow(); 
            CountPage = (CountRow/PageSize); 
            if (CountRow%PageSize>0) 
            CountPage++; 
            Rs.first(); 
            if (CountRow>0) 
            { 
            Rs.absolute(CurrPage*PageSize-PageSize+1); 
            while (i<PageSize && !Rs.isAfterLast()) 
            { 
            	
       
        String rsid=Rs.getString("petid");
      int petid =Integer.parseInt(rsid);//转换成int型
      
      String petname=Rs.getString("petname");

	%>
	 
  <tr align="center">
    <td align="center" width="40%"><a href=searchmore1.jsp?id=<%=petid%>><%=petname %></a></td>   

<td width="20%"><%=Rs.getString("petprice")%></td>     
<td width="30%"><%=Rs.getString("petfrom")%></td>   
 
     
    <td width="10%"><a href=dodeletepet.jsp?nextpagetid=<%=petid%>>删除</a></td>   

  </tr>
 
 <%
Rs.next(); 
            i++; 
	   }

%> 
    
   <%     Rs.close();                                
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
          %>  <%if (CurrPage<CountPage){%>
            <a href="deletePet.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div>
</table>
</body>

</html>