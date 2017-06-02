<%@ page language="java" import="java.util.*,java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>

<body>
<%
request.setCharacterEncoding("gb2312");

 String admname=request.getParameter("admname");
   admname=new String(admname.getBytes("iso-8859-1"),"utf-8");
   
String admpwd=request.getParameter("admpwd");
  admpwd=new String(admpwd.getBytes("iso-8859-1"),"utf-8");
 
  if(admname.equals("admin")&& admpwd.equals("admin"))  
    {
        session.setAttribute("adname",admname);
        response.sendRedirect("adminCenter.jsp");//实现网页跳转 
    }
    
 else
 {%>
 <script language="javascript">
		alert("用户名或密码错误！");
      </script>
      <center><a href=admin.jsp>返回</a></center>
     
 <%}%>
</body>
</html>