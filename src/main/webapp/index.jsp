<%@ page pageEncoding="UTF-8"%>
<script type="text/javascript" src="/NEWS/fckeditor/fckeditor.js"></script>
<body>
 <p align="center">请您输入留言</p>
 
<form id="form1" name="form1" method="post" action="" > 
  <table width="600" height="400" border="0" align="center">
    <tr>
      <td width="100">姓名：</td>
      <td width="500">
        <input name="name" type="text" id="name" size="40" maxlength="20" />
      </td>
    </tr>
    <tr>
      <td>E-Mail：</td>
      <td>
        <input name="email" type="text" id="email" size="40" maxlength="40" />
      </td>
    </tr>
    <tr>
      <td>电话：</td>
      <td>
        <input name="phone" type="text" id="phone" size="40" maxlength="20" />
      </td>
    </tr>
    <tr>
      <td>主题：</td>
      <td>
        <input name="title" type="text" id="title" size="80" maxlength="80" />
      </td>
    </tr>
    <tr>
      <td valign="top">内容：</td>
      <td>
		<script type="text/javascript">
		    var oFCKeditor = new FCKeditor("content");    
		    oFCKeditor.BasePath	= '/NEWS/fckeditor/' ;
		    oFCKeditor.Height	= 900 ;
		    oFCKeditor.Width	= 600 ;
			oFCKeditor.ToolbarSet = 'Default';
			oFCKeditor.Create() ;
		</script>
	</td>
    </tr>
    <tr>
      <td></td>
      <td>
         <input type="submit" name="Submit" value="提交" />
         <input type="reset" name="Reset" value="重置" /> 
      </td>
    </tr>   
  </table>
</form>