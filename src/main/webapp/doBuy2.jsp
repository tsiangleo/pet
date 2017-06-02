<%@ page language="java" import="java.util.*"  pageEncoding="UTF-8"%>
<%@ page contentType="text/html; charset=gb2312" import="java.sql.*" %>

<%if(session.getAttribute("uname")!=null)
{ 

String befurl=(String)session.getAttribute("url2");

%>
<%@include file="connection.jsp"%>
<%

String name=(String)session.getAttribute("uname");
String realname=request.getParameter("realname");
String phone=request.getParameter("phone");
String postcode=request.getParameter("postcode");
String address=request.getParameter("address");

try{

         Statement   stmt=conn.createStatement();
      
        String sql="select accountid from userinfo,usertable where uaccountid=accountid and account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid"); //获取买家ID
      int bid =Integer.parseInt(rsid);   //转换成int型
      rs.close();
      
      String sql2="update userinfo set realname='"+realname+"',postcode='"+postcode+"',phone='"+phone+"',address='"+address+"' where accountid='"+bid+"'";
        int rs12 = stmt.executeUpdate(sql2); 
       if(rs12!=0)  
       {  
           
       %> 
       <script language="javascript">
		alert(" 个人信息修改成功！");
        </script>
      <%  response.sendRedirect(befurl);
      }   
     else{
         %> 
      <script language="javascript">
		alert("个人信息修改失败！");
      </script>
      <%    response.sendRedirect(befurl);       
         }
     }
     stmt.close();
      conn.close();
}
catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }    
%>
<%
}
else//判断是否登录
{ %>
	 <p><p>
     <center>你还没有登陆，<a href=login.jsp>请登陆.</a>
     </center>
<%}
%>
