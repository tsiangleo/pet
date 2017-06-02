<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<html>
<head><title>用户注册</title>
</head>

<script language="javascript">

function check()
{
   if(document.registform.realname.value=="")
	{
		alert("真实姓名不能为空");
		document.registform.realname.focus();
		return false;
	}
	
	else if(document.registform.address.value=="")
	{
		alert("地址不能为空");
		document.fregistform.address.focus();
		return false;
	}
	else if(document.registform.IDcard.value=="")
	{
		alert("身份证不能为空");
		document.registform.IDycard.focus();
		return false;
	}
	else if(document.registform.email.value=="")
	{
		alert("邮箱不能为空");
		document.registform.email.focus();
		return false;
	}
		else if(document.registform.postcode.value=="")
	{
		alert("邮编不能为空");
		document.registform.postcode.focus();
		return false;
	}
		else if(document.registform.phone.value=="")
	{
		alert("电话不能为空");
		document.registform.phone.focus();
		return false;
	}
	else
	{
	//form.action="registaction";
	form.submit();
	}

}
</script>

<body>

<form id="regist" name="registform" method="post" action="dopersonalinfo.jsp" onsubmit="return check()">
 <table width="600" border="1" align="center" cellspacing="1" cellpadding="2">
  
  <tr>
   <td align="right">真实姓名：</td>
    <td align="left">  <input type="text" name="realname" id="realname" size="20"></td>
    <td align="left">输入您的真实姓名，方便为您发货</td>
  </tr>
  
  <tr>
    <td align="right">邮 箱：</td>
    <td align="left">  <input type="text" name="email" id="email" size="20"></td>
    <td align="left">您的常用电子邮箱</td>
  </tr>
  
    <tr>
    <td align="right">电 话：</td>
    <td align="left">  <input type="text" name="phone" id="phone" size="20"></td>
    <td align="left">输入您的真实电话，方便为您发货</td>
  </tr>
  
     <tr>
    <td align="right">邮 编：</td>
    <td align="left">  <input type="text" name="postcode" id="postcode" size="20"></td>
    <td align="left">输入邮编，方便为您发货</td>
  </tr>
  
  <tr>
       <td align="right"></td>
     <td align="left"><input type="radio" name="sex" value="m" id="sex"  checked="checked"/>男
                         <input type="radio" name="sex" value="f" id="sex" />女
    </td>
  </tr>
  
  <tr>
    <td align="right">身份证号码：</td>
    <td align="left">  <input type="text" name="IDcard" id="IDcard" size="20"></td>
    <td align="left">输入您的身份证号码，由数字或字母18位组成</td>
  </tr>

  <tr>
    <td align="right">地址：</td>
    <td align="left"><input type="text" name="address" id="address" /> </td>
    <td align="left">输入您的地址，方便为您发货</td>
  </tr>
  
  <tr>
     <td align="right"> </td>
     <td><input type="submit" name="submit" id="userregist" value="提交" />
        <input type="reset" name="reset" id="userreset" value="重置" /></td>
 </tr>
 </table>
 </form>
 
 
 </body>
 </html>