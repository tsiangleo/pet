<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
session.removeValue("uname");
//out.print("<script language=javascript>alert('您已成功注销!');");>
%>
      <script language="javascript">
		alert("您已成功注销！");
      </script>
<%
response.sendRedirect("shouye.jsp");//因为有这个跳转页面，所以上面的语句看不到，执行速度太快了
%>