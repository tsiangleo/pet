<%@ page language="java"  pageEncoding="utf-8"%>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<%
String conn_url = "jdbc:mysql://localhost:3306/db_pet?useUnicode=true&characterEncoding=UTF-8";
String conn_user = "root";
String conn_passwd = "root";
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn = null;
    try {
        conn = DriverManager.getConnection(conn_url, conn_user, conn_passwd);
    }catch (Exception e){
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
    }

%>