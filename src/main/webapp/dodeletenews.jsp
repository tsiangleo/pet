<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat,java.sql.*" pageEncoding="gb2312"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>


<body>
<%if(session.getAttribute("adname")!=null)
{ 
%>
<%@include file="connection.jsp"%>
<%
       String newsid1=request.getParameter("newsid");
       int newsid =Integer.parseInt(newsid1);

try{

    Statement stmt=conn.createStatement();
      
        
	   String sql="delete from newsinfo where newsid="+newsid+"";
       int update=stmt.executeUpdate(sql); 
       if(update!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
     
      <script language="javascript">
		alert("����������ɾ����");
<%
response.sendRedirect("deletenews.jsp");//��Ϊ�������תҳ�棬�����������俴������ִ���ٶ�̫����
%>
     </script>
      
      <% }
      
     else
     {
       stmt.close();
       conn.close(); %> 
      
     <script language="javascript">
		alert("��������δ�ܳɹ�ɾ����");
      </script>                   
     <%}
     }
 catch(Exception e)
{
        out.print("���ݿ����Ӵ���,������Ϣ���£�<br>");
        out.print(e.getMessage());
}
 %>

</body>
<%}
  else
  { %>
	 <p><p>
     <center>�㻹û�е�½���޷�����.</a>
     </center>
<%}%>

</html>