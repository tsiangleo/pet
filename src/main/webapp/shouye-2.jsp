<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>无标题文档</title>
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
<body>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="230"><table  height="300" width="100%" border="1" cellpadding="0" cellspacing="0"  bordercolor="#FFFFFF">
      <tr bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+3" face="黑体"> 本站公告</td>
      </tr>
      <tr bordercolor="#FF9900" height="80%">
        <td  align="center" width="230" ><marquee direction="up"> 本站正式成立了！<br> 各位用户请诚实交易！</marquee></td>
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
        <td  align="center"><font color="#FF3300" size="+3" face="黑体"> 推荐宠物</td>
      </tr>
      <tr height="80%" bordercolor="#FF9900" height="100">
        <td  width="230" >  推荐宠物信息 </td>
      </tr>
    </table></td>
  </tr>
</table>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td width="230"></td>
    <td width="10"></td>
    <td width="660"></td>
  </tr>
  <tr>
    <td width="230">
    <table width="230"  height="300"  border="1" cellpadding="0" cellspacing="0"  bordercolor="#FFFFFF">
      <tr height="30" bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+3" face="黑体"> 快速导航</td>
      </tr>
      <tr height="45"  bordercolor="#FFCC33" height="100">
        <td   align="center" width="230" > <form name="form" id="form">
          <select name="jumpMenu" id="jumpMenu" onchange="MM_jumpMenu('parent',this,0)">
            <option value="userCenter.jsp">用户中心</option>
            <option value="search.jsp">买宠物</option>
            <option value="userGetMessage.jsp">留言板</option>
          </select>
        </form></td>
  </tr>
  
       <tr height="30" bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+3" face="黑体"> 友情链接</td>
      </tr>
      <tr height="45"  bordercolor="#FFCC33" height="100">
          <td   align="center" width="230" > <form name="form2" id="form2">
            <select name="jumpMenu2" id="jumpMenu2" onchange="MM_jumpMenu('parent',this,0)">
              <option value="http://www.chinapet.com/">宠物中国</option>
              <option value="http://www.chinapet.com/">中国宠物网</option>
              <option value="http://www.aigou.com/">爱狗网</option>
              <option value="http://www.dog126.com/">淘狗网</option>
            </select>
          </form></td>
  </tr>
  
        <br><br><tr height="30" bordercolor="#FFFFFF">
        <td  align="center"><font color="#FF3300" size="+3" face="黑体"> 在线调查</td>
      </tr>
      <tr align="center" height="120" bordercolor="#FF9900" height="100">
        <td "width="230" ><p>您认为本站的服务水平如何：</p>
      <input type="radio" name="radio" id="radio" value="radio" />太好了！
      <p>
      <input type="radio" name="radio" id="radio" value="radio" />一般！
      <p>
    <input type="radio" name="radio" id="radio" value="radio" />太差了！
    </td>
      </tr>
    </table>
    
    </td>
    <td>&nbsp;</td>
    <td>
    <table  height="300" width="100%" bordercolor="#FFFFFF" border="1" cellspacing="0" cellpadding="0">
      <tr bordercolor="#FFFFFF">
        <td align="center"><font color="#FF6600" s size="+3"  face="隶书">小型犬</td>
      </tr>
      <tr bordercolor="#FFCC33">
        <td><br>
       <a href="search.jsp">贵宾犬</a> &nbsp;&nbsp; <a href="search.jsp">泰迪犬</a>&nbsp;&nbsp; <a href="search.jsp">博美犬</a>&nbsp;&nbsp; <a href="search.jsp">吉娃娃</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">雪纳瑞</a>&nbsp;&nbsp; <a href="search.jsp">迷你杜宾犬</a>&nbsp;&nbsp; <a href="search.jsp">柯基犬</a>&nbsp;&nbsp; <a href="search.jsp">腊肠犬</a>&nbsp; <a href="search.jsp">比熊犬</a><br />
       <a href="search.jsp">巴哥犬</a>&nbsp;&nbsp; <a href="search.jsp">京巴犬</a>&nbsp;&nbsp; <a href="search.jsp">蝴蝶犬</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">西施犬</a>&nbsp;&nbsp; <a href="search.jsp">约克夏</a>&nbsp; &nbsp;<a href="search.jsp">冠毛犬</a>&nbsp;&nbsp; <a href="search.jsp">斗牛犬</a>&nbsp;&nbsp; <a href="search.jsp">查理王</a>&nbsp;&nbsp; <a href="search.jsp">马尔济斯</a>&nbsp;&nbsp; <a href="search.jsp">柯基犬</a><br />
    </p></td>
      </tr>
     <tr bordercolor="#FFFFFF">
        <td align="center"><font color="#FF6600" s size="+3"  face="隶书">中型犬</td>
      </tr>
      <tr bordercolor="#FFCC33">
        <td><br />
     <a href="search.jsp">金毛犬</a>&nbsp;&nbsp; <a href="search.jsp">>松狮犬</a&nbsp;&nbsp; <a href="search.jsp">哈士奇</a>&nbsp;&nbsp; <a href="search.jsp">喜乐蒂</a>&nbsp;&nbsp; <a href="search.jsp">拉布拉多犬</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">银狐犬</a>&nbsp;&nbsp; <a href="search.jsp">柴犬</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">牛头梗</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">斗牛犬</a> <a href="search.jsp">比格犬</a>&nbsp; <a href="search.jsp">沙皮犬</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">巴吉度</a>&nbsp;&nbsp; <a href="search.jsp">边境牧羊犬</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">万能梗</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">德国牧羊犬</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">苏格兰牧羊犬</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">可卡犬</a>&nbsp;&nbsp; <a href="search.jsp">灵缇犬</a>&nbsp;&nbsp; <a href="search.jsp">萨摩耶犬</a>&nbsp;&nbsp; <a href="search.jsp">卷毛巡回犬</a>&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">拳师犬</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">爱尔兰犬</a></p></td>
      </tr>
     <tr bordercolor="#FFFFFF">
        <td align="center"><font color="#FF6600" s size="+3"  face="隶书">大型犬</td>
      </tr>
      <tr bordercolor="#FFCC33">
        <td><br />
  <p>   <a href="search.jsp">大白熊</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">罗威纳</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.jsp">高加索</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">圣伯纳</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.jsp">藏獒</a>&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.jsp">古牧</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">大丹犬</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">阿拉斯加雪橇犬</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  &nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">秋田犬</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="search.jsp">杜高犬</a>&nbsp;&nbsp;<a href="search.jsp">伯恩山犬</a>&nbsp;&nbsp;&nbsp; <a href="search.jsp">杜宾</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="search.jsp">凯利蓝梗</a></p> <br/>
      </td>
      </tr>
    </table></td>
  </tr>
</table>
<p>&nbsp;</p>
</body>
<%@ include file="bottom.jsp" %>
</html>
