
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.Bean.*,java.lang.*" errorPage="" %>
<link rel="stylesheet" href="css/code43.css" type="text/css">
<html>
<head>
<title><%=session.getAttribute("user")%>--���Ĺ��ﳵ:</title>



<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="img/code43.css" type=text/css rel=stylesheet>
<meta name="Robots" content="index,follow">
</head>
<BODY style=scrollbar-arrow-color:#227776;scrollbar-base-color:#C6DCDE text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 background="img/bg.gif" marginwidth="0" marginheight="0" >

<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
    <td><br>&nbsp;&nbsp;<font color="#FF3333"><b>�����������ﳵ�е���Ʒ��Ϣ����˶ԣ���ע���û����μ���Ķ������Ա��պ��ѯ��<br> &nbsp; </b></font></td>
 </tr>

<tr> 
<td>
<%//if(session.getAttribute("user")!=null)
//{ 
%>
<form action="buystock.jsp" method="POST" name="check">
        <table width="622" height="398" border="0" align="center" cellpadding="4" cellspacing="1">
          <tr height="25" align="center"> 
            <td width="55">�� ��</td>
            <td width="107" >�� Ʒ �� ��</td>
            <td width="41" >����</td>
			 <td width="47" >�г���</td>
			 <td width="47" >��Ա��</td>
			 <td width="38" >�ʷ�</td>
            <td width="101" >��Ʒ��</td>
          </tr>
<%


ArrayList id=(ArrayList)session.getAttribute("buylist");
ArrayList showlist;
float sum=0;
for(int i=0;i<id.size();i++)
{
	String sid=id.get(i).toString();
		if(sid!=null)
		{
			dbconn db=new dbconn();
			showlist=db.executeQuery("select * from goodsInfo where gdbID="+sid);
			Hashtable goodsHash=(Hashtable)showlist.get(0);
			db.destory();
			if(goodsHash==null)
			{
				out.println("there is no data");
			}
float viprice=Float.parseFloat(goodsHash.get("gprice").toString());

%>

          <tr height="25"align="center"> 
            <td><input type="CheckBox" name="ProdId" value="<%=id.get(i)%>" Checked></td>
			 
            <td align="left"><%=goodsHash.get("gname")%></td>
            <td><input type="Text" name=""  size="2" class="form"></td>
			<td><%=goodsHash.get("gprice") %></td>
			<td><%out.print(viprice);%></td>
			<td><%=30%></td>
			<td><%=goodsHash.get("gmaker") %></td>
			
			
          </tr>
 <%
 sum=sum+viprice;
 }
 
 }
 
  session.setAttribute("sum",sum);

 %>       
<tr> 
 <td colspan="5" align="center" valign="middle">             
                <input type="submit" name="order" value="������Ʒ����"> &nbsp;&nbsp;&nbsp;
                <input type="submit" name="payment" value="ȥ����̨"> &nbsp;&nbsp;&nbsp; 
                <input type="button" value="��������" language=javascript onClick="javascript:window.close()" name="button">
                
            </td>
<td colspan="4" height="25">
�������ǣ�<font color="#FF6600">VIP�û�</font><br>
�۸��ܼƣ�<font color="#FF6600"><%=sum%></font>&nbsp;Ԫ<br>
            </td>
          </tr>
		  
      </table>
      </form>
	  <%}
	  //else
	  //{%>
     <input type="button" value="�㻹û�е�½����ر�" language=javascript onClick="javascript:window.close()" name="button">
<%//}%>
 </td>
</tr>
      </table>
</body>
</html>

