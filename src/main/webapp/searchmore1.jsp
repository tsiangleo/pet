<%@ page language="java" import="java.util.*"  pageEncoding="gb2312"%>
<%@ page contentType="text/html"  import="java.sql.*" autoFlush="false" buffer="64kb"%>
<html>
<head>
</head>
<%
request.setCharacterEncoding("gb2312");
String id=request.getParameter("id");
int id1=Integer.parseInt(id);
%>
<body>

<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">

 <tr><td><left><a href="userdeletepet.jsp"> ����</a>
</left>

 </td> </tr> 
 
</table>
<%@include file="connection.jsp"%>
<%

Statement stmt=null;
ResultSet rs=null;
	try{

        stmt=conn.createStatement();
 
        String sql ="select * from usertable u,petinfo p where p.petid= '"+id1+"' and p.Saccountid=u.uaccountid";
         rs = stmt.executeQuery(sql); 
         
         while(rs.next()){
String path=rs.getString("picturepath");
String salid=rs.getString("Saccountid");//��ȡ����ID
int sid=Integer.parseInt(salid);
String price=rs.getString("VIPprice");//��ȡ�۸�
int Vprice=Integer.parseInt(price);
  String petsize="";
  String psize=rs.getString("petsize");
  if(psize.equals("a"))
       {petsize="С��Ȯ";}
 else if(psize.equals("b"))
       {petsize="����Ȯ";}
 else if(psize.equals("c"))
       {petsize="����Ȯ";}
  
 %>
 <table width="900" border="0" align="center" cellpadding="0" cellspacing="0">

   
 <tr>
    <td width="400"><table height="400" width="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td><img width="400" height="400"  border=0 src="<%=path%>" /></td>
      </tr>
    </table></td>
    <td width="10">&nbsp;</td>
    <td width="490"><table width="490" height="400" border="0" cellspacing="0" cellpadding="0">
      <tr>
        <td width="80" align="center">�������ƣ�</td>
        <td><%=rs.getString("petname")%></td>
      </tr>
      <tr>
        <td width="80" align="center">��&nbsp; &nbsp;&nbsp; �أ�</td>
        <td><%=rs.getString("petweight")%>kg</td>
      </tr>
      <tr>
        <td width="80" align="center">��&nbsp; &nbsp;&nbsp; С��</td>
        <td><%=petsize%></td>
      </tr>
      <tr>
        <td width="80" align="center">��&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;�أ�</td>
        <td><%=rs.getString("petfrom")%></td>
      </tr>
      <tr>
        <td width="80" align="center">��&nbsp; ��&nbsp;�ۣ�</td>
        <td><%=rs.getString("petprice")%>��</td>
      </tr>
      <tr>
        <td width="80" align="center">��&nbsp; Ա&nbsp;�ۣ�</td>
        <td><font color="#FF3300"><%=rs.getString("VIPprice")%>��</font></td>
      </tr>
      <tr>
        <td width="80" align="center">����������</td>
        <td><%=rs.getString("account")%></td>
      </tr>
    </table></td>
  </tr>
</table>

<br><hr  width="900" align="center" color="FF6600" >
<center><font color="#FF3300" size="+2" face="����"><br>��������:</font></center><br>
<center>
<br><%=rs.getString("petdescription")%>
</center>
<br><br>

<%
}
if(rs!=null)
rs.close();


        }
		catch(Exception e)
		{
			System.out.println("���ݿ����Ӵ���"+e.getMessage());
		}
 
%>


</body>
</html>