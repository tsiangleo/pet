<%@ page pageEncoding="UTF-8"%>
<script type="text/javascript" src="fckeditor/fckeditor.js"></script>
<form id="addnews" name="addnews" method="post" action="doaddNews.jsp" > 
  <table width="700"  border="0" align="center">
    <tr >
      <td align="center" width="50">标题</td>
      <td align="left" width="650">
        <input name="title" type="text" id="title" size="40" maxlength="20" />
      </td>
    </tr>
    <tr>
      <td align="center" width="50">作者</td>
      <td align="left" width="650">
        <input name="author" type="text" id="author" size="40" maxlength="40" />
      </td>
    </tr>
    <tr>
      <td align="center" width="50">来源</td>
      <td align="left" width="650">
        <input name="newsfrom" type="text" id="newsfrom" size="40" maxlength="20" />
      </td>
    </tr>
    <tr>
      <td align="center" width="50">内容：</td>
      <td align="left" width="650">
		<script type="text/javascript">
		    var oFCKeditor = new FCKeditor("content");    
		    oFCKeditor.BasePath	= 'fckeditor/' ;
		    oFCKeditor.Height	= 600 ;
		    oFCKeditor.Width	= 700 ;
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