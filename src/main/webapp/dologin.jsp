<%@ page language="java" import="javax.*" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>

<%@include file="connection.jsp"%>
<%
request.setCharacterEncoding("gb2312");
String account=request.getParameter("account");
account=new String(account.getBytes("iso-8859-1"),"utf-8");

String pwd=request.getParameter("password");
pwd=new String(pwd.getBytes("iso-8859-1"),"utf-8");

  ResultSet  rs=null;
 Statement stmt=null;
 
	try{

        stmt=conn.createStatement();
      
        String sql ="select * from usertable where account='"+account+"'and password='"+pwd+"'";
        rs = stmt.executeQuery(sql);
             
       if(rs.next())       
      { int uid=rs.getInt("uaccountid");
      
      String sql2 ="select * from userinfo where accountid='"+uid+"'";
        ResultSet rs2 = stmt.executeQuery(sql2);
         if(rs2.next())       
      { 
       String state=rs2.getString("accountstate");
       int accountstate =Integer.parseInt(state);
       if(accountstate==1)
       {
         session.setAttribute("uname", account);
         String befurl=(String)session.getAttribute("url");
         session.removeValue("url");
       %>
        <script language="javascript">
		alert(" 欢迎你，<%=session.getAttribute("uname") %>！现在您可以开始您的宠物之旅了！");
        </script>
        
        <%   //response.setHeader("refresh","0.5;URL=shouye.jsp");
      response.sendRedirect(befurl);//实现网页跳转
      }
      else if(accountstate==0)
      {
        %>
        <script language="javascript">
		alert("对不起，该账户已被冻结！");
        </script>
        <%   response.setHeader("refresh","0.5;URL=login.jsp");
      }
      }
      }
       else
        {
        %>
        <script language="javascript">
		alert("用户名或密码错误，登陆失败！");
        </script>
      
          <%response.setHeader("refresh","0.5;URL=login.jsp");
          //response.sendRedirect("loginfail.jsp");
         }

		
	   }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
%>
