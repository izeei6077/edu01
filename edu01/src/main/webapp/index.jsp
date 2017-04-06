<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%-- <jsp:forward page="/sample/openSample.do"/> --%>
<!doctype html>
<html lang="ko">
<head>
<%
	String contextPath = request.getContextPath();
%>
	<meta charset="UTF-8" />
	<title>index</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
</head>

<body>

<div>
<h1>Seed IT</h1>
<hr>
	<a href="<%=contextPath %>/sample/openSampleList.do" >Seed사원목록</a></br>
	<a href="<%=contextPath %>/blackList/blackList.do" >Seed블랙리스트</a>
</div>
</body>
</html>
