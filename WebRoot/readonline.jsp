<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">	
  <head>
    <title>在线预览</title>
<script type="text/javascript" src="FlexPaper/js/jquery.js"></script>
<script type="text/javascript" src="FlexPaper/js/flexpaper_flash.js"></script>
<script type="text/javascript" src="FlexPaper/js/flexpaper_flash_debug.js"></script>
  </head>
  <%--  <%=(String)session.getAttribute("fileName")%>  --%>
  <body> 
        <div style="position:absolute;left:10px;top:10px;width: 1024px;height: 750px">
        	<%-- 指定flexPaper的宽度和高度  --%>   
            <a id="viewerPlaceHolder" style="width:100%;height:100%;display:block"></a>
            <script type="text/javascript"> 
                var fp = new FlexPaperViewer(    
                         'FlexPaper/swfFiles/FlexPaperViewer', 
                         'viewerPlaceHolder',     <!--对应于a 标签的id-->
                         { config : {
                         SwfFile : escape('upload/<%=(String)session.getAttribute("fileName")%>'),  <!--导入的.swf的路径,文件名称使用英语表示，中文时显示不出来，暂时未解决这个问题-->
                         Scale : 0.6, 
                         ZoomTransition : 'easeOut',
                         ZoomTime : 0.5,
                         ZoomInterval : 0.2,
                         FitPageOnLoad : true,
                         FitWidthOnLoad : false,
                         PrintEnabled : false,<%-- 是否可以打印  --%>
                         FullScreenAsMaxWindow : false,
                         ProgressiveLoading : false,
                         MinZoomSize : 0.2,
                         MaxZoomSize : 5,
                         SearchMatchAll : false,
                         InitViewMode : 'Portrait',
                         ViewModeToolsVisible : true,
                         ZoomToolsVisible : true,
                         NavToolsVisible : true,
                         CursorToolsVisible : true,
                         SearchToolsVisible : true,
                           localeChain: 'en_US'
                         }});
            </script>
        </div>
</body>
</html>
