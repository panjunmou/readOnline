<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<html>
  <head>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
  </head>
  <body>
  	<form action="uploadServlet" enctype="multipart/form-data" method="post">
  		<font style="color:red">只支持office文件在线预览，如doc,docx,ppt,pptx,xls,xlxs</font></br>
  		<input type="file" name="file"/></br>
  		<input type="submit" value="在线预览">
  	</form>
  </body>
</html>
