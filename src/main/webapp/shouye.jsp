<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页-我要淘宠网</title>
<script type="text/javascript">
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
<style type="text/css">
a:link {
	color: #F30;
	text-decoration: none;
}
a:visited {
	text-decoration: none;
	color: #F30;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
</style>
</head>
<%@ include file="head.jsp" %>

<table width="900" border="0" align="center" cellspacing="1" cellpadding="2">
  <tr>
    <td  >当前位置：<a href="shouye.jsp">首页:</td>
  </tr>
</table>
<hr  width="900" align="center" color="#FF0000" >

<body>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="230"><table  height="300" width="100%" border="1" cellpadding="0" cellspacing="0"  bordercolor="#FFFFFF">
      <tr bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+2" face="黑体"> 本站公告</td>
      </tr>
      <tr bordercolor="#FF9900" height="80%">
        <td  align="center" width="230" ><marquee direction="up"><center> 本站正式成立了！<br> 各位用户请诚实交易！</center></marquee></td>
      </tr>
    </table></td>
    <td width="10">&nbsp;</td>
    <td width="420">
    <table height="300" width="100%" border="0" cellspacing="0" cellpadding="0">
      <tr bordercolor="#FFFFFF">
      <tr>
  <td>
   <script>
var widths=420;
var heights=300;
var counts=5;
img1=new Image ();img1.src='images_PetShow/pet01.gif';
img2=new Image ();img2.src='images_PetShow/pet02.gif';
img3=new Image ();img3.src='images_PetShow/pet03.gif';
img4=new Image ();img4.src='images_PetShow/pet04.gif';
img5=new Image ();img5.src='images_PetShow/pet05.gif';

url1=new Image ();url1.src='http://#';
url2=new Image ();url2.src='http://#';
url3=new Image ();url3.src='http://#';
url4=new Image ();url4.src='http://#';
url5=new Image ();url5.src='http://#';


var nn=1;
var key=0;
function change_img()
{if(key==0){key=1;}
else if(document.all)
{document.getElementById("pic").filters[0].Apply();document.getElementById("pic").filters[0].Play(duration=2);}
eval('document.getElementById("pic").src=img'+nn+'.src');
eval('document.getElementById("url").href=url'+nn+'.src');
for (var i=1;i<=counts;i++){document.getElementById("xxjdjj"+i).className='axx';}
document.getElementById("xxjdjj"+nn).className='bxx';
nn++;if(nn>counts){nn=1;}
tt=setTimeout('change_img()',4000);}
function changeimg(n){nn=n;window.clearInterval(tt);change_img();}
document.write('<style>');
document.write('.axx{padding:1px 7px;border-left:#cccccc 1px solid;}');
document.write('a.axx:link,a.axx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#666;}');
document.write('a.axx:active,a.axx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#999;}');
document.write('.bxx{padding:1px 7px;border-left:#cccccc 1px solid;}');
document.write('a.bxx:link,a.bxx:visited{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
document.write('a.bxx:active,a.bxx:hover{text-decoration:none;color:#fff;line-height:12px;font:9px sans-serif;background-color:#D34600;}');
document.write('</style>');
document.write('<div style="width:'+widths+'px;height:'+heights+'px;overflow:hidden;text-overflow:clip;">');
document.write('<div><a id="url"><img id="pic" style="border:0px;filter:progid:dximagetransform.microsoft.wipe(gradientsize=1.0,wipestyle=4, motion=forward)" width='+widths+' height='+heights+' /></a></div>');
document.write('<div style="filter:alpha(style=1,opacity=10,finishOpacity=80);background: #888888;width:100%-2px;text-align:right;top:-12px;position:relative;margin:1px;height:12px;padding:0px;margin:0px;border:0px;">');
for(var i=1;i<counts+1;i++){document.write('<a href="javascript:changeimg('+i+');" id="xxjdjj'+i+'" class="axx" target="_self">'+i+'</a>');}
document.write('</div></div>');
change_img();

</script>
</td>
  </tr>
</table>
</td>
    <td width="10">&nbsp;</td>
    <td width="230">
    <table width="100%" height="300" border="1" cellpadding="0" cellspacing="0"  bordercolor="#FFFFFF">
      <tr bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+2" face="黑体"> 广告位招租</td>
      </tr>
      <tr height="80%" bordercolor="#FF9900" height="100">
        <td  width="230" ><center>联系电话********** </center> </td>
      </tr>
    </table></td>
  </tr>
</table>


<br><br><center><font color="#FF3300" size="+2" face="黑体">热门宠物</font></center><br>
<hr  width="900" align="center" color="#FF0000" ><br>

<%@include file="connection.jsp"%>

<%
    Statement stmt=null;
    ResultSet rs =null;

    try{
        stmt=conn.createStatement();
			 
       String sql ="select * from PetINFO where baccountid=0";
       rs = stmt.executeQuery(sql);

       }
		catch(Exception e)
		{
			System.out.println("数据库连接错误"+e.getMessage());
		}
%>
<%! int h=0; //用于记录有多少行%>
<table width="900"  bordercolor="#FFFFFF" border="1" align="center" cellpadding="0" cellspacing="0">
<tr height="200" align="center">
<% 
int j=0;        
while(rs.next()){
int a=rs.getInt("petID");
String path=rs.getString("picturepath");
j++;%>
<% if(j%6!=0)//每行显示5条信息
{%>
 <td align="center" bordercolor="#FF3300" width="170">
      
      <table  width="170">
         <tr align="center">
          <td><a href="searchmore.jsp?id=<%=a%>"><img width="160" height="180"  border=0 src="<%=path%>" /></a></td>
        </tr>
        <tr align="center">
          <td>名称：<%=rs.getString("petname")%></td>          
        </tr>
        <tr align="center">
          <td>价格：<font color="#FF3300"><%=rs.getString("VIPPRICE")%>￥</font></td>        
        </tr>
      </table>
    </td >
    <td align="center" width="10">
    </td>

<%}
else if(j%6==0)
{
h++;//记录一共加了多少个<tr>;方便后面加等个数的</tr>
%>
<tr height="20"><td></td></tr> <%//行间距设为20px %>
<tr height="200" align="center">
<%
}
%>

<%} 
for(int c=0;c<h;c++)
{
%>
</tr> <%//补上等个数对的</tr> %>
<%
}
%>
</tr>
</table>
<%
if(rs!=null)
rs.close();
if(stmt!=null)
stmt.close();
if(conn!=null)
conn.close();
%>


</body>
<%@ include file="bottom.jsp" %>
</html>
