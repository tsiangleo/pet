<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html" import="java.sql.*"%>
<html>
<head>

</head>
<body>
<%
String pageid=request.getParameter("pageid");
String petname=request.getParameter("petname");
petname=new String(petname.getBytes("iso-8859-1"),"utf-8");

int price=Integer.valueOf(request.getParameter("petprice")).intValue();

String petfrom=request.getParameter("petfrom");
petfrom=new String(petfrom.getBytes("iso-8859-1"),"utf-8");

int petsize=Integer.valueOf(request.getParameter("size")).intValue();
int page1=Integer.valueOf(request.getParameter("pagenum")).intValue();
%>
<script  LANGUAGE="JavaScript"> 
location="dosearch.jsp?pageid=<%=pageid%>&Page=<%=page1%>&petname=<%=petname%>&size=<%=petsize%>&petfrom=<%=petfrom%>&petprice=<%=price%>"
</script>
</body>
</html>