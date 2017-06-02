<%@ page language="java" import="java.sql.*,java.lang.*,java.util.*" pageEncoding="utf-8"%> 
<%@ page contentType="text/html; charset=gb2312" language="java"  %>

<%! 
int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 5; 
int CountRow = 0;
%> 
<html> 
  <head> 
  <title>宠物查询结果</title>
     
  </head> 
  
<body>
<%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="search.jsp">买宠物</a>&gt;&gt;查询结果:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

 
    <div align="center" class="style1"> 
      <h1> 查询结果列表</h1> 
      <%

String petname="";
String petfrom="";
int petsize=-1;
int price=-1;

%>
 <form>
   <table  align="center" width="900" border="1" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="400">宠物名称</td>
    <td width="400">宠物价格</td>

 
  </tr>
  
            <!--获取表记录--> 
            <% 

            //17:43/06/03request.setCharacterEncoding("utf-8");
 String StrPage = request.getParameter("Page"); 
            if (StrPage == null || StrPage=="") 
            { 
            CurrPage = 1; 
            } 
            else 
            { 
            CurrPage = Integer.parseInt(StrPage); 
            }
                %>
       <%@include file="connection.jsp"%>
       <%
            Statement Smt; 
            ResultSet Rs=null; 
 String SQL="";
 
petname=request.getParameter("petname");
petname=new String(petname.getBytes("iso-8859-1"),"utf-8");
out.println(petname);
SQL="select * from petinfo where petname like '%"+petname+"%'";


            if (conn != null)
            { 
            try 
            { 
                 
            
            Smt = conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

            Rs = Smt.executeQuery(SQL);


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
            %><tr align="center"> 
              <td width="400"><a href="searchmore.jsp?id=<%=Rs.getString("petID")%>"><%=Rs.getString("petname")%></a></td> 
              <td width="400"><a href="searchmore.jsp?id=<%=Rs.getString("petID")%>"><%=Rs.getString("petprice")%></a></td> 
              
            </tr><% 
            Rs.next(); 
            i++; 
            } 
            } 
            } 
            catch (SQLException e) 
            { 
            out.println(e.getMessage()); 
            } 
            finally 
            {
                conn.close();
            } 
            } 
            %> 
          </table>
 </form> 
<form id="searchresult" name="searchresult" method="post" action="dogo.jsp?petname=<%=petname%>&size=<%=petsize%>&petfrom=<%=petfrom%>&petprice=<%=price%>">
<table>
        <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage%>] 每页<%=PageSize%>条 共<%=CountRow%>条记录  
<%if(CountPage>1){%>           
<input name="pagenum" type="text" size="4"> 请输入页次
  <input type="submit" name="Submit" value="Go" />
<%}%>
     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="dosearch.jsp?Page=<%=CurrPage-1%>&petname=<%=petname%>&size=<%=petsize%>&petfrom=<%=petfrom%>&petprice=<%=price%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="dosearch.jsp?Page=<%=CurrPage+1%>&petname=<%=petname%>&size=<%=petsize%>&petfrom=<%=petfrom%>&petprice=<%=price%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage<CountPage){%>
            <a href="dosearch.jsp?Page=<%=CountPage%>&petname=<%=petname%>&size=<%=petsize%>&petfrom=<%=petfrom%>&petprice=<%=price%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
      </form> 
     <h1 align="center">&nbsp;      </h1> 
</div> 

</body> 

<%@ include file="bottom.jsp" %>
</html> 
