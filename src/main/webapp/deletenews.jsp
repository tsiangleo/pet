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
     String sql = "select * from newsinfo";
        ResultSet Rs = stmt.executeQuery(sql);
	  
%>
	<table  align="center" width="600" border="1"  id="userinfotable" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="10%">����id</td>
    <td width="10%">��Ŀ</td>
    <td width="10%">����</td>
<td width="20%">������Դ</td>
<td width="40%">����ʱ��</td>
    <td width="10%">����</td>
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
            	
       
        String rsid=Rs.getString("newsid");
      int newsid =Integer.parseInt(rsid);//ת����int��
      
      String title=Rs.getString("title");

	%>
	 
  <tr align="center">
    <td align="center" width="10%"><%=Rs.getString("newsid") %></td>   

    <td width="5%"><a href=lookdetailnews.jsp?nwstid=<%=newsid%>><%=title%></a></td>   
<td width="10%"><%=Rs.getString("author")%></td>     
<td width="5%"><%=Rs.getString("newsfrom")%></td>   
<td width="20%"><%=Rs.getString("updatetime")%></td>  
     
    <td width="10%"><a href=dodeletenews.jsp?newsid=<%=newsid%>>ɾ��</a></td>   

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
        out.print("���ݿ����Ӵ���,������Ϣ���£�<br>");
        out.print(e.getMessage());
}

 %>
<%}
  else
  { %>
	 <p><p>
     <center>�㻹û�е�½���޷�����.</a>
     </center>
<%}%> 
</table>
<table>
         <tr> 
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] ÿҳ6�� ��<%=CountRow%>����¼ 
 <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="deleteMessage.jsp?Page=<%=CurrPage-1%>">��һҳ</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="deleteMessage.jsp?Page=<%=CurrPage+1%>">��һҳ</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="deleteMessage.jsp?Page=<%=CountPage%>">���һҳ</a> 
<%}%>
            </div>
</table>
</body>

</html>