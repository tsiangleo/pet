<%@ page language="java" import="java.util.*"import="java.sql.*" pageEncoding="utf-8"%>
<%@ page contentType="text/html; charset=gb2312" language="java"  %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>用户登陆</title>
</head>

<% String s=request.getHeader("referer");//获取登陆页面前的地址
out.println(s);
 session.setAttribute("url", s );%>

<script type="text/javascript">
function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
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

<body onload="MM_preloadImages('images/zhuce12.gif','images/denglu12.gif')">
<table width="900" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td  background="images/logo.gif"width="250" height="100"> </td>
    <td>&nbsp;</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="1" cellspacing="0">
  <tr>
    <td align="center" width="500" height="204">
    
    <script>
var widths=250;
var heights=204;
var counts=5;
img1=new Image ();img1.src='images_PetShow/pet01.gif';
img2=new Image ();img2.src='images_PetShow/pet02.gif';
img3=new Image ();img3.src='images_PetShow/pet03.gif';
img4=new Image ();img4.src='images_PetShow/pet04.gif';
img5=new Image ();img5.src='images_PetShow/pet05.gif';

url1=new Image ();url1.src='http://localhost:8080/PET/shouye.jsp';
url2=new Image ();url2.src='http://localhost:8080/PET/shouye.jsp';
url3=new Image ();url3.src='http://localhost:8080/PET/shouye.jsp';
url4=new Image ();url4.src='http://localhost:8080/PET/shouye.jsp';
url5=new Image ();url5.src='http://localhost:8080/PET/shouye.jsp';


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
tt=setTimeout('change_img()',2000);}
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
    <td width="350"><form id="loginfo" name="loginfo" method="post" action="dologin.jsp" >
      <table background="images/userlogin.gif" width="350" height="160" border="0" align="center" cellpadding="1" cellspacing="0">
        <tr>
          <td width="100">&nbsp;</td>
          <td width="250" height="40">&nbsp;</td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td height="40"><label for="password"></label>
            <input type="text" name="account" id="textfield2" /></td>
        </tr>
        <tr>
          <td>&nbsp;</td>
          <td height="40"><label for="textfield3"></label>
            <input type="password" name="password" id="textfield3" /></td>
        </tr>
        <tr >
        <td> </td>
          <td height="30"><a href="javascript:;" onclick="document.loginfo.submit();" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('login','','images/denglu12.gif',1)"><img src="images/denglu11.gif" name="login" width="60" height="30" border="0" id="login" /></a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="regist.jsp" onmouseout="MM_swapImgRestore()" onmouseover="MM_swapImage('Image2','','images/zhuce12.gif',1)"><img src="images/zhuce11.gif" name="Image2" width="60" height="30" border="0" id="Image2" /></a></td>
        </tr>
      </table>
    </form></td>
  </tr>
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<%@ include file="bottom.jsp" %>
</body>
</html>
