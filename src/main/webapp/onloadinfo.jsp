<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
//String path = request.getContextPath();
//String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>


 <head>

<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<title>宠物信息上传</title>

</head>
<body>

<form action="doonload.jsp" method="post" name="petinfo">
  <table align="center" width="900" border="1" cellspacing="0" cellpadding="0">
  <tr>
      <td colspan="2"><div align="center" class="STYLE1">请输入您需交易的宠物的相关信息</div></td>
    </tr>
    <tr>
      <td align="center"width="200">宠物名称</td>
      <td width="835"><label>
        <input name="petname" type="text" size="20" />
      </label></td>
    </tr>
    <tr>
      <td align="center" width="200">体重(kg)</td>
      <td><label>
        <input name="weight" type="text" size="20" />
      </label></td>
    </tr>
    <tr>
      <td align="center">大小</td>
      <td><label>
        <select name="size">
          <option value="c" selected="selected">小型犬</option>
          <option value="b">大型犬</option>
          <option value="a">中型犬</option>
        </select>
      </label></td>
    </tr>
    <tr>
      <td align="center">产地</td>
      <td><label>
        <input name="petfrom" type="text" size="20" />
      </label></td>
    </tr>
    <tr>
      <td align="center">市场价(￥)</td>
      <td><label>
        <input name="petprice" type="text" size="10" />
      </label></td>
    </tr>
    <tr>
      <td align="center">会员价(￥)</td>
      <td><label>
        <input name="VIPprice" type="text" size="10" />
      </label></td>
    </tr>
<tr>
    <td align="center">图片上传</td>
      <td><label>
        <input type="file" name="picture" />
      </label></td>
</tr>   
 <tr>
      <td align="center">描述</td>
      <td><label>
        <textarea name="description" cols="80" rows="5"></textarea>
      </label></td>
    </tr>
	<tr>
	<td width="450"><label></label>   </td>
	<td><label>
	  <input type="submit" name="Submit" value="提交" />
	  <input type="reset" name="Reset" value="清除" />
	</label></td>
	</tr>
  </table>
</form>

