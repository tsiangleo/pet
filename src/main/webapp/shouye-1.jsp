<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
  <style type="text/css">
<html>
<head>
<title>留言板-我要淘宠网</title>

<style type="text/css">
body 
.ys01 {
	font-family: "宋体";
	font-size: 12px;
	font-style: normal;
	font-weight: normal;
	font-variant: normal;
	margin-right: 2px;
	padding-right: 2px;
}
</style>
</head>
<body>
<%@ include file="head.jsp" %>
<table  width="900" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td  style="border:thick" width="159" colspan="2" rowspan="2" >
    
    </td>
    <td width="9" rowspan="2">&nbsp;</td>
    <td width="395" height="300" rowspan="2">
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
    <td width="9" rowspan="2">&nbsp;</td>
    <td width="256" height="300">宠物推荐</td>
  </tr>
  <tr>
    <td>&nbsp;</td>
  </tr>
</table>
<table width="900" border="1" align="center" cellpadding="0" cellspacing="0">
  <tr>
    <td colspan="3">&nbsp;</td>
  </tr>
  <tr>
    <td width="645"><p>小型犬<br />
      贵宾犬&nbsp;&nbsp; 泰迪犬&nbsp;&nbsp; 博美犬&nbsp;&nbsp; 吉娃娃&nbsp;&nbsp; 雪纳瑞&nbsp;&nbsp;&nbsp; 迷你杜宾犬&nbsp;&nbsp; 柯基犬&nbsp;&nbsp; 腊肠犬&nbsp;&nbsp; 比熊犬&nbsp; 巴哥犬<br />
       京巴犬&nbsp;&nbsp; 蝴蝶犬&nbsp;&nbsp; 西施犬&nbsp;&nbsp;&nbsp; 约克夏&nbsp;&nbsp; 冠毛犬&nbsp; &nbsp;斗牛犬&nbsp;&nbsp; 查理王&nbsp;&nbsp; 马尔济斯&nbsp;&nbsp; 柯基犬&nbsp;&nbsp; 丝毛梗<br />
    </p></td>
    <td width="11" rowspan="3">&nbsp;</td>
    <td width="236" rowspan="3"><p>您认为本站的服务水平如何：</p>
      <input type="radio" name="radio" id="radio" value="radio" />太好了！<br />
      <br>
      <input type="radio" name="radio" id="radio" value="radio" />一般！<br />
      <br>
    <input type="radio" name="radio" id="radio" value="radio" />太差了！</p></td>
  </tr>
  <tr>
    <td><p>中型犬<br />
      金毛犬&nbsp;&nbsp; 松狮犬&nbsp;&nbsp; 哈士奇&nbsp;&nbsp; 喜乐蒂&nbsp;&nbsp; 拉布拉多犬&nbsp;&nbsp;&nbsp;&nbsp; 银狐犬&nbsp;&nbsp; 贝灵顿梗 柴犬&nbsp;&nbsp;&nbsp; 牛头梗&nbsp;&nbsp;&nbsp; 斗牛犬 比格犬&nbsp; 沙皮犬&nbsp;&nbsp;&nbsp; 巴吉度&nbsp;&nbsp; 边境牧羊犬&nbsp;&nbsp;&nbsp;&nbsp; 万能梗&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 德国牧羊犬&nbsp;&nbsp;&nbsp;&nbsp; 苏格兰牧羊犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 斑点狗 可卡犬&nbsp;&nbsp; 灵缇犬&nbsp;&nbsp; 萨摩耶犬&nbsp;&nbsp; 卷毛巡回犬&nbsp;&nbsp;&nbsp;&nbsp; 拳师犬&nbsp;&nbsp;&nbsp; 爱尔兰</p></td>
  </tr>
  <tr>
    <td><p>大型犬<br />
      大白熊&nbsp;&nbsp;&nbsp; 罗威纳&nbsp;&nbsp;&nbsp;&nbsp; 高加索&nbsp;&nbsp;&nbsp;&nbsp; 圣伯纳&nbsp;&nbsp;&nbsp;&nbsp; 藏獒&nbsp;&nbsp;&nbsp;&nbsp; 古牧&nbsp;&nbsp;&nbsp;&nbsp; 大丹犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 阿拉斯加雪橇犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 秋田犬  比特犬&nbsp;&nbsp;&nbsp;&nbsp; 杜高犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 杜宾&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 伯恩山犬&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 凯利蓝梗 <br />
    </p></td>
  </tr>
</table>
</body>
<%@ include file="bottom.jsp" %>
</html>
