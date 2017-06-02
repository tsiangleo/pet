<%@ page contentType="text/html" language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>

<html>
<head>
<% 
String uuid=request.getParameter("uid"); 
int uid =Integer.parseInt(uuid); 
if(uid==1)//用户发表留言
{ 
if(session.getAttribute("uname")!=null)
{ 
%>
</head>
<body>
  <%@ include file="head.jsp" %>
<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页</a>&gt;&gt;<a href="userGetMessage.jsp">留言板</a>&gt;&gt;用户留言:</td>
  </tr>
</table>
<hr  width="900" align="center" color="FF6600" >

<form id="message" name="message" method="post" action="doaddmessage.jsp?uid=1">
  <table width="700" border="0" align="center" cellpadding="1" cellspacing="0">
    <tr>
      <td width="200" align="center" bgcolor="#FFCC33">主题：</td>
     <td><label for="content"></label>
      <textarea name="title" id="title" cols="60" rows="1"></textarea></td>
      <td width="200" align="center" >*主题不能为空</td>
    </tr>
    </tr>
    <tr>
      <td width="200" align="center" bgcolor="#FFFFCC">内容：</td>
      <td><label for="content"></label>
      <textarea name="content" id="content" cols="60" rows="10"></textarea></td>
      <td width="200" align="center" >*内容不能为空</td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" id="submit" value="提交" />
        &nbsp; &nbsp;&nbsp; &nbsp;
        <input type="reset" name="reset" id="reset" value="重置" /></td>
    </tr>
  </table>
</form>
<%@ include file="bottom.jsp" %>
<%}
 else
  { %>
	 <p><p>
     <center>你还没有登陆，<a target="_blank" href=login.jsp>请登陆.</a>
     </center>
<%}
}
 if(uid==0)//管理员发布留言
{ %>
<form id="message" name="message" method="post" action="doaddmessage.jsp?uid=0">
  <table width="700" border="0" align="center" cellpadding="1" cellspacing="0">
    <tr>
      <td width="200" align="center" bgcolor="#FFCC33">主题：</td>
     <td><label for="content"></label>
      <textarea name="title" id="title" cols="60" rows="1"></textarea></td>
      
    </tr>
    </tr>
    <tr>
      <td width="200" align="center" bgcolor="#FFFFCC">内容：</td>
      <td><label for="content"></label>
      <textarea name="content" id="content" cols="60" rows="10"></textarea></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" id="submit" value="提交" />
        &nbsp; &nbsp;&nbsp; &nbsp;
        <input type="reset" name="reset" id="reset" value="重置" /></td>
    </tr>
  </table>
</form>
<%} %>
</body>
</html>
