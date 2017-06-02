<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="utf-8"%>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我要淘宠网</title>
<style type="text/css">
#apDiv1 {
	position:absolute;
	left:200px;
	top:10px;
	width:900px;
	height:200px;
	z-index:1;
	background-color: #FF6600;
}
#apDiv2 {
	position:absolute;
	left:300px;
	top:232px;
	width:220px;
	height:250px;
	z-index:2;
	background-color: #FFCCFF;
}
#apDiv3 {
	position:absolute;
	left:880px;
	top:232px;
	width:220px;
	height:250px;
	z-index:2;
	background-color: #FFCCFF;
}
#apDiv4 {
	position:absolute;
	left:202px;
	top:230px;
	width:220px;
	height:39px;
	z-index:3;
	background-color: #CCFF33;
}
#apDiv5 {
	position:absolute;
	left:440px;
	top:230px;
	width:660px;
	height:250px;
	z-index:4;
	background-color: #0099CC;
}
#apDiv6 {
	position:absolute;
	left:434px;
	top:496px;
	width:666px;
	height:284px;
	z-index:5;
	background-color: #FF6699;
}
#apDiv7 {
	position:absolute;
	left:200px;
	top:799px;
	width:900px;
	height:100px;
	z-index:6;
	background-color: #99CCFF;
}
#apDiv8 {
	position:absolute;
	left:200px;
	top:1002px;
	width:900px;
	height:278px;
	z-index:7;
}
#apDiv9 {
	position:absolute;
	left:202px;
	top:271px;
	width:220px;
	height:330px;
	z-index:8;
	background-color: #FF9966;
}
#apDiv10 {
	position:absolute;
	left:200px;
	top:625px;
	width:220px;
	height:155px;
	z-index:9;
	background-color: #FF9966;
}
#apDiv11 {
	position:absolute;
	left:435px;
	top:269px;
	width:429px;
	height:213px;
	z-index:10;
	background-color: #FF0033;
}
#apDiv12 {
	position:absolute;
	left:435px;
	top:230px;
	width:430px;
	height:39px;
	z-index:11;
	background-color: #CC0066;
}
.ys01 {
	text-align: center;
}
#apDiv14 {
	position:absolute;
	left:6px;
	top:12px;
	width:900px;
	height:30px;
	z-index:2;
	color: #CCC;
	background-color: #CCCCCC;
}
#apDiv15 {
	position:absolute;
	left:12px;
	top:49px;
	width:250px;
	height:103px;
	z-index:3;
	background-image: url(images/logo.gif);
}
.ys02 {
	font-family: "宋体";
	font-size: 12px;
	font-style: normal;
	line-height: normal;
}
a:link {
	text-decoration: none;
	color: #F30;
}
a:visited {
	text-decoration: none;
	color: #F60;
}
a:hover {
	text-decoration: underline;
}
a:active {
	text-decoration: none;
}
.ys03 {
	text-align: center;
}
</style>
<script type="text/javascript">
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}
</script>
</head>

<body onload="MM_preloadImages('images/12.gif','images/22.gif','images/32.gif','images/42.gif','images/52.gif')">
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="900" height="30" colspan="5" valign="top" bgcolor="#CCCCCC">&nbsp;
    
       <center>
  <%if(session.getAttribute("uname")!=null)
{ 
%>
     您好<font color=FF6600><%=session.getAttribute("uname") %></font>，欢迎访问我要淘宠网！
    
   <%  
    request.setCharacterEncoding("gb2312");
    String name=(String)session.getAttribute("uname");
    %> 
     <a href=loginout.jsp>注销</a>
 <%}
  else
  { %>
	 您好，欢迎访问我要淘宠网！  <a href=login.jsp>登陆</a>   <a href=regist.jsp>注册</a></font>
<%}%>    
   </center>
    
    </td>
  </tr>
  <tr>
    <td width="6" height="7" valign="top"></td>
    <td width="250" height="7" valign="top"></td>
    <td width="78" height="7" valign="top"></td>
    <td width="500" height="7" valign="top"></td>
    <td width="66" height="7" valign="top"></td>
  </tr>
  <tr>
    <td width="6" height="23" valign="top"></td>
    <td  background="logo.gif" width="250" height="100" rowspan="2" valign="top">&nbsp;</td>
    <td width="78" height="23" valign="top"></td>
    <td width="500" height="23" valign="top"></td>
    <td width="66" height="23" valign="top"></td>
  </tr>
  <tr>
    <td width="6" height="80" valign="top"></td>
    <td width="78" height="80" valign="top"></td>
    <td   background="searchgif.gif"width="500" height="80">
      <table width="100%" border="0" cellspacing="0" cellpadding="1">
        <tr>
          <td width="50%"> </td>
          <td width="50%">&nbsp;</td>
        </tr>
        <tr>
          <td></td>          
          <td></td>
        </tr>
        <tr>
          <td>&nbsp;&nbsp; </td>
          <td>&nbsp;</td>
        </tr>
      </table>
   </td>
    <td width="66" height="80" valign="top"></td>
  </tr>
  <tr>
    <td width="6" height="1" valign="top"><img src="transparent.gif" alt="" width="6" height="1" /></td>
    <td width="250" height="1" valign="top"><img src="transparent.gif" alt="" width="250" height="1" /></td>
    <td width="78" height="1" valign="top"><img src="transparent.gif" alt="" width="78" height="1" /></td>
    <td width="500" height="1" valign="top"><img src="transparent.gif" alt="" width="500" height="1" /></td>
    <td width="66" height="1" valign="top"><img src="transparent.gif" alt="" width="66" height="1" /></td>
  </tr>
</table>

<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="112">&nbsp;</td>
    <td width="112">&nbsp;</td>
    <td width="106">&nbsp;</td>
    <td width="119">&nbsp;</td>
    <td width="138">&nbsp;</td>
    <td width="150">&nbsp;</td>
    <td width="150">&nbsp;</td>
  </tr>
  <tr  style="background:url(images/daohangbeijing.gif)">
    <td  width="75" align="center" valign="middle">&nbsp;</td>
    <td  width="150" height="50" align="center" valign="middle"><a href="shouye.jsp" target="_self" onmouseover="MM_swapImage('shouye','','images/12.gif',1)" onmouseout="MM_swapImgRestore()"><img src="images/11.gif"  alt="链接到首页" name="shouye" width="100" height="40" border="0" id="shouye" /></a></td>
    <td width="150" height="50" align="center"><a href="search.jsp" target="_self" onmouseover="MM_swapImage('buyPet','','images/22.gif',1)" onmouseout="MM_swapImgRestore()"><img src="images/21.gif" alt="链接到买宠物" name="buyPet" width="100" height="40" border="0" id="buyPet" /></a></td>
    <td width="150" height="50" align="center"><a href="usercenter.jsp" target="_self" onmouseover="MM_swapImage('userCenter','','images/32.gif',1)" onmouseout="MM_swapImgRestore()"><img src="images/31.gif" alt="链接到用户中心" name="userCenter" width="100" height="40" border="0" id="userCenter" /></a></td>
    <td width="150" height="50" align="center"><a href="#" target="_self" onmouseover="MM_swapImage('petbaike','','images/42.gif',1)" onmouseout="MM_swapImgRestore()"><img src="images/41.gif" alt="链接到宠物百科" name="petbaike" width="100" height="38" border="0" id="petbaike" /></a></td>
    <td width="150" align="center"><a href="userGetMessage.jsp" target="_self" onmouseover="MM_swapImage('message','','images/52.gif',1)" onmouseout="MM_swapImgRestore()"><img src="images/51.gif" alt="留言板" name="message" width="100" height="37" border="0" id="message" /></a></td>
    <td  width="75" align="center" valign="middle">&nbsp;</td>
  </tr>
</table>
&nbsp;

</body>
