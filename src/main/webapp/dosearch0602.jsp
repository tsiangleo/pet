

<%@ page language="java" import="java.sql.*" import="java.lang.*" import="java.util.*" pageEncoding="GB2312"%> 
<%! 
int CountPage = 0; 
int CurrPage = 1; 
int PageSize = 3; 
int CountRow = 0;
%> 
<html> 
  <head> 
  <title>宠物查询结果</title>
<style type="text/css">
body {
	background-color: #fff;<% //#FC0%>
}
</style>

    
   
    
<meta http-equiv="pragma" content="no-cache"> 
<meta http-equiv="cache-control" content="no-cache"> 
<meta http-equiv="expires" content="0">    
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3"> 
<meta http-equiv="description" content="This is my page"> 
<!-- 
<link rel="stylesheet" type="text/css" href="styles.css"> 
--> 

    
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


%>
    <form id="searchresult" name="searchresult" method="post" action="">
 
   <table  align="center" width="900" border="1" cellspacing="0" cellpadding="0">
  <tr align="center">
    <td width="50%">宠物名称</td>
    <td width="50%">宠物价格</td>

 
  </tr>
  
            <!--获取表记录--> 
            <% 
            
request.setCharacterEncoding("utf-8");
String pgid = request.getParameter("pageid");
int pageid =Integer.parseInt(pgid);


if(pageid==1){
String petname=request.getParameter("petname");
int price=Integer.valueOf(request.getParameter("petprice")).intValue();
String petfrom=request.getParameter("petfrom");

int petsize=Integer.valueOf(request.getParameter("size")).intValue();
 String size="";
String petprice="";
switch(price){
case 1:
petprice="petprice<100";
break;
case 2:
petprice="petprice<1000 and petprice>=100";
break;
case 3:
petprice="petprice<20000 and petprice>=1000";
break;
case 4:
petprice="petprice>=20000";
break;
}

switch(petsize){
case 1:
size="c";
break;
case 2:
size="b";
break;
case 3:
size="a";
break;
}
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
 String SQL="";
             if(petname=="")
                  {
                  if(petfrom==""){
            SQL = "Select * from petinfo where petsize='"+size+"' and "+petprice; 
            
            }
            else{
             SQL = "Select * from petinfo where petsize='"+size+"' and petfrom like '%"+petfrom+"%' and "+petprice; 
            
            }
            }
            else{ 
if(petfrom=="")
SQL = "select * from petinfo where petsize='"+size+"' and petname like '%"+petname+"%' and "+petprice; 
else
 SQL = "select * from petinfo where petsize='"+size+"' and petfrom like '%"+petfrom+"%'and petname like '%"+petname+"%' and "+petprice; }
            
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
              <td width="50%"><a href="searchmore.jsp?id=<%=Rs.getString("petID")%>"><%=Rs.getString("petname")%></a></td> 
              <td width="50%"><%=Rs.getString("petprice")%></td>
              
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
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页3条 共<%=CountRow%>条记录  
<%if(CountPage!=1){%>           
<input name="pagenum" type="text" size="4"> 请输入页次
<input  type="submit"  onClick="gojsp2()" value="Go"> 
<%}%>
<SCRIPT LANGUAGE="JavaScript">

function gojsp2(){

var idvalue = document.getElementById("pagenum").value;
String value=(String)idvalue;

document.location.href="dosearch.jsp?pageid=1&&page="+value;

} 
</script> 
     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="dosearch.jsp?pageid=1&&Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="dosearch.jsp?pageid=1&&Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
             <a href="dosearch.jsp?pageid=1&&Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
      </form> 
     <h1 align="center">&nbsp;      </h1> 
</div> 
<% }
      
 else if(pageid==0)
 {
 String petname=request.getParameter("petname");
     %>
<%@include file="connection.jsp"%>
<%
     Statement Smt; 
     ResultSet Rs; 
 String SQL = "select * from petinfo where petname like '%"+petname+"%'";
 
  
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
             <td width="50%"><a href="searchmore.jsp?id=<%=Rs.getString("petID")%>"><%=Rs.getString("petname")%></a></td> 
              <td width="50%"><%=Rs.getString("petprice")%></td> 
              
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
          <td nowrap>[<%=CurrPage%>/<%=CountPage %>] 每页3条 共<%=CountRow%>条记录  
<%if(CountPage!=1){%>           
<input name="pagenum" type="text" size="4"> 请输入页次
<input  type="submit"  onClick="gojsp2()" value="Go"> 
<%}%>
<SCRIPT LANGUAGE="JavaScript">

function gojsp2(){

var idvalue = document.getElementById("pagenum").value;
String value=(String)idvalue;

document.location.href="dosearch.jsp?pageid=0&&page="+value;

} 
</script> 
     <div align="right">           
  <%if (CurrPage>1){%> 
            <a href="dosearch.jsp?pageid=0&&Page=<%=CurrPage-1%>">上一页</a> 
            <% 
          
          } 
          %> 
            <%if (CurrPage<CountPage){%> 
            <a href="dosearch.jsp?pageid=0&&Page=<%=CurrPage+1%>">下一页</a> 
            <% 
          
          } 
          %>  <%if (CurrPage!=CountPage){%>
            <a href="dosearch.jsp?pageid=0&&Page=<%=CountPage%>">最后一页</a> 
<%}%>
            </div></td> 
        </tr> 
      </table> 
      </form> 
     <h1 align="center">&nbsp;      </h1> 
</div> 
<%        
 }    
 %>
<%@ include file="bottom.jsp" %>
</body> 
</html> 