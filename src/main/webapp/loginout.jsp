<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*" errorPage="" %>
<%
session.removeValue("uname");
//out.print("<script language=javascript>alert('���ѳɹ�ע��!');");>
%>
      <script language="javascript">
		alert("���ѳɹ�ע����");
      </script>
<%
response.sendRedirect("shouye.jsp");//��Ϊ�������תҳ�棬�����������俴������ִ���ٶ�̫����
%>