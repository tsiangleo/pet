<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html" import="java.sql.*"%>
<html>
<head>

</head>
<body>
<%



int page1=Integer.valueOf(request.getParameter("pagenum")).intValue();

%>
<script  LANGUAGE="JavaScript"> 
location="searchallpet.jsp?Page=<%=page1%>"
</script>
</body>
</html>