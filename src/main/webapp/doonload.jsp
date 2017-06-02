<%@ page language="java" import="java.util.*,java.text.SimpleDateFormat"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=utf-8" language="java"  %>
<html>

<body>
<%@include file="connection.jsp"%>
<%
String name=(String)session.getAttribute("uname");

String petname=request.getParameter("petname");
String petpric=request.getParameter("petprice");
int petprice =Integer.parseInt(petpric);
String petfrom=request.getParameter("petfrom");
String size=request.getParameter("size");
String VIPpric=request.getParameter("VIPprice");
int VIPprice =Integer.parseInt(VIPpric);
String description=request.getParameter("description");
String weight=request.getParameter("weight");
String picturepath=request.getParameter("picture");




 Statement stmt=null;
	try{
        stmt=conn.createStatement();
      
      String sql="select accountid from userinfo,usertable where uaccountid=accountid and usertable.account='"+name+"'";
        ResultSet rs = stmt.executeQuery(sql); 
        if(rs.next())  
      {
      String rsid=rs.getString("accountid");
      int id =Integer.parseInt(rsid);//转换成int型
      
            
     String sql2="insert into petinfo (Saccountid,petname,petprice,petfrom,petsize,VIPPrice,petdescription,petweight) values("+id+",'"+petname+"',"+petprice+",'"+petfrom+"','"+size+"',"+VIPprice+",'"+description+"','"+weight+"')";


          int result=stmt.executeUpdate(sql2);
       if(result!=0)  
      {
   
      stmt.close();
      conn.close(); %> 
      <script language="javascript">
		alert("宠物信息已成功发布！");
      </script>
     <center><p><p><p>  <a href=dosearchonload.jsp?id=2>查看我上传的宠物信息</a></center>
      <% }
      
     else{
       stmt.close();
       conn.close(); %> 
      <script language="javascript">
		alert("宠物信息发布失败！");
      </script>
     <center><p><p><p>  <a href=userCenter.jsp>返回重新删除</a></center>
      <%   
       
      }
      
      }
      
 }   
   catch(Exception e)
    {
        out.print("数据库连接错误！,错误信息如下：<br>");
        out.print(e.getMessage());
        
    }

 %>
</body>
</html>