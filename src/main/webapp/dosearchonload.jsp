<%@ page language="java" import="java.sql.*,java.lang.*,java.util.*" pageEncoding="GB2312"%> 
<%! 
int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 3; 
int CountRow = 0;
%> 
<html> 
  <head> 
    <title>您上传的宠物</title> 
     </head> 
<body> 
    <div align="center" class="style1"> 
      
    <form id="searchresult" name="searchresult" method="post" action="">
 
   <table  align="center" width="600" border="1" cellspacing="0" cellpadding="0">
  <tr align="center">
   <td width="25%">宠物ID</td>
    <td width="25%">宠物名称</td>
    <td width="25%">宠物价格</td>
    <td width="25%">查看详情</td>

 
  </tr>
  
            <!--获取表记录--> 
            <%String username=""; 
            String choos=request.getParameter("id"); 
            int id=Integer.parseInt(choos);
            if(id==1)
            {username=request.getParameter("account");
            username=new String(username.getBytes("iso-8859-1"),"utf-8");
             }
            else if(id==2)
            {username=(String)session.getAttribute("uname");}
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
            ResultSet Rs; 
            if (conn != null)
            { 
            try 
            { 

            String SQL ="select petID,petname,petprice from usertable,petinfo where account='"+username+"' and uaccountID=SaccountID";
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
              <td width="25%"><%=Rs.getString("petID")%></td> 
              <td width="25%"><%=Rs.getString("petname")%></td> 
              <td width="25%"><%=Rs.getString("petprice")%></td> 
              <td width="25%"><a href="searchmore_nohead.jsp?id=<%=Rs.getString("petID")%>">详细</a></td> 
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
<table>
        <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页<%=PageSize%>条 共<%=CountRow%>条记录 请输入页次 
 
     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="dosearchonload.jsp?Page=<%=CurrPage-1%>&account=<%=username%>&id=<%=id%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="dosearchonload.jsp?Page=<%=CurrPage+1%>&account=<%=username%>&id=<%=id%>">下一页</a> 
            <% 
          
          } 
          %> 
            <a href="dosearchonload.jsp?Page=<%=CountPage%>&account=<%=username%>&id=<%=id%>">最后一页</a> 
            </div></td> 
        </tr> 
      </table> 
      </form> 
      <h1 align="center"><br> 
      </h1> 
     
</div> 
</body> 
</html> 
  </body>
</html>
