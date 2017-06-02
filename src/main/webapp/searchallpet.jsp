<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html"  import="java.sql.*"%>
<html>
<head>
<title>宠物查询-我要淘宠网</title>
<%int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 3; 
int CountRow = 0;  %>
</head>
<body>
<center><font color="#FF3300" size="+2" face="黑体">所有宠物</font></center><br>
<table align="center" width="700" border="1" cellspacing="0" cellpadding="0">
  <tr align="center" height="50">
  
    <td width="20%">宠物图片</td>
    <td width="30%">宠物名称</td>
    <td width="20%">宠物价格</td>
    <td width="30%">宠物产地</td>
 </tr>
    <%@include file="connection.jsp"%>
  <%
Statement stmt=null;
ResultSet rs=null;
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

        stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);
			 
           String sql ="select * from PetINFO ";
           rs = stmt.executeQuery(sql); 

       }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
             
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
int a=rs.getInt("petID");
String path=rs.getString("picturepath");
%>
<tr align="center">
<td width="20%"><a href="searchmore_nohead.jsp?id=<%=a%>"><img width="100" height="100"  border=0 src="<%=path%>" /></a></td>
<td width="30%"><a href="searchmore_nohead.jsp?id=<%=a%>"><%=rs.getString("petname")%></a></td>
<td width="20%"><font color="#FF3300"><%=rs.getString("petprice")%>￥</font></td>
<td width="30%"><%=rs.getString("petfrom")%></td>
</tr>
<%
   rs.next(); 
            i++; 
}
}
if(rs!=null)
rs.close();
if(stmt!=null)
stmt.close();
if(conn!=null)
conn.close();
%>
</table>
</form>
<form id="searchresult" name="searchresult" method="post" action="dogo1.jsp?">
<table>
        <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage%>] 每页<%=PageSize%>条 共<%=CountRow%>条记录  
<%if(CountPage>1){%>           
<input name="pagenum" type="text" size="4"> 请输入页次
<input type="submit" name="Submit" value="Go" />
<%}%>
     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="searchallpet.jsp?Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="searchallpet.jsp?Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage<CountPage){%>
            <a href="searchallpet.jsp?Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
</form>
</body>
</html>
