<%@ page contentType="text/html; charset=gb2312" language="java" pageEncoding="utf-8"%>

<html>
  
<body>
<table width="900"  bordercolor="#FFFFFF" border="1" align="center" cellpadding="0" cellspacing="0">
<%
int i=0;

while(i<=10)
{int j=0;
%>
  <tr height="200" align="center">
<% for(;j<5;j++)//每行显示5条信息
{%>
 <td align="center" bordercolor="#FF3300" width="170">
      <table  width="170" class="table">
        <tr align="center">
          <td><img width="100" height="100"  border=0 src="images/lc2.gif" /></td>
        </tr>
        <tr align="center">
          <td>名称：</td>          
        </tr>
        <tr align="center">
          <td>价格：</td>        
        </tr>
      </table>
    </td >
    <td align="center" width="10">
    </td>

<%}
i++;
%>
</tr>

<tr height="20">
<td></td>
</tr>
<%} %>
</table>
</body>
</html>
