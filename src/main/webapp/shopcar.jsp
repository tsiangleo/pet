
<%@ page contentType="text/html; charset=gb2312" language="java" import="java.sql.*,java.util.*,com.Bean.*,java.lang.*" errorPage="" %>
<link rel="stylesheet" href="css/code43.css" type="text/css">
<html>
<head>
<title><%=session.getAttribute("user")%>--您的购物车:</title>



<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="img/code43.css" type=text/css rel=stylesheet>
<meta name="Robots" content="index,follow">
</head>
<BODY style=scrollbar-arrow-color:#227776;scrollbar-base-color:#C6DCDE text=#000000 bgColor=#ffffff leftMargin=0 topMargin=0 background="img/bg.gif" marginwidth="0" marginheight="0" >

<table width="600" border="0" cellspacing="0" cellpadding="0" align="center">
<tr> 
    <td><br>&nbsp;&nbsp;<font color="#FF3333"><b>以下是您购物车中的商品信息，请核对，非注册用户请牢记你的订单号以便日后查询！<br> &nbsp; </b></font></td>
 </tr>

<tr> 
<td>
<%//if(session.getAttribute("user")!=null)
//{ 
%>
<form action="buystock.jsp" method="POST" name="check">
        <table width="622" height="398" border="0" align="center" cellpadding="4" cellspacing="1">
          <tr height="25" align="center"> 
            <td width="55">编 号</td>
            <td width="107" >商 品 名 称</td>
            <td width="41" >数量</td>
			 <td width="47" >市场价</td>
			 <td width="47" >会员价</td>
			 <td width="38" >邮费</td>
            <td width="101" >商品地</td>
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
                <input type="submit" name="order" value="更新商品数量"> &nbsp;&nbsp;&nbsp;
                <input type="submit" name="payment" value="去收银台"> &nbsp;&nbsp;&nbsp; 
                <input type="button" value="继续购物" language=javascript onClick="javascript:window.close()" name="button">
                
            </td>
<td colspan="4" height="25">
您现在是：<font color="#FF6600">VIP用户</font><br>
价格总计：<font color="#FF6600"><%=sum%></font>&nbsp;元<br>
            </td>
          </tr>
		  
      </table>
      </form>
	  <%}
	  //else
	  //{%>
     <input type="button" value="你还没有登陆，请关闭" language=javascript onClick="javascript:window.close()" name="button">
<%//}%>
 </td>
</tr>
      </table>
</body>
</html>

