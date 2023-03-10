<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>文件传输助手</title>
<%@include file="/common/head.jsp" %>
<script type="text/javascript">
	jQuery(function() {
		var menuLI = document.getElementById('levelmenu2').getElementsByTagName('li');
		var menuid = "";
		for ( var i = 0; i < menuLI.length; i++) {
			var menuA = menuLI[i].getElementsByTagName('a');
			for ( var j = 0; j < menuA.length; j++) {
				if (i == 0 && j == 0) {
					menuid = "#" + menuA[j].id;
				} else {
					menuid = menuid + ",#" + menuA[j].id;
				}
			}
		}
		console.log(menuid)
		var list = jQuery(menuid);
		list.click(function() {
			list.removeClass('on');
			jQuery(this).addClass('on');
			return true;
		});
	});

</script>
</head>
<body>
<div class="left" id="levelmenu2">
    <ul>
    	<li><a id="3" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=2">语文</a></li>
    	<li><a id="2" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=3">数学</a></li>
    	<li><a id="4" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=4">英语</a></li>
    	<li><a id="5" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=5">日语</a></li>
    	<li><a id="6" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=6">俄语</a></li>
    	<li><a id="7" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=7">物理</a></li>
    	<li><a id="8" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=8">化学</a></li>
    	<li><a id="9" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=9">生物</a></li>
    	<li><a id="10" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=10">政治</a></li>
    	<li><a id="11" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=11">历史</a></li>
    	<li><a id="12" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=12">地理</a></li>
    	<li><a id="13" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=13">音乐</a></li>
    	<li><a id="14" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=14">体育</a></li>
    	<li><a id="15" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=15">美术</a></li>
    	<li><a id="16" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=16">信息技术</a></li>
    	<li><a id="17" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=17">通用技术</a></li>
    	<li><a id="18" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=18">工具类</a></li>
    	<li><a id="1" class="on" target="rightframe" href="${pageContext.request.contextPath}/userFile/indexPage?field=1">文件汇总管理</a></li>
    </ul>
</div>
</body>
</html>