<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	String contextPath = request.getContextPath();
	String curMenu = request.getParameter("curMenu");
%>
<ul>
 <li><a <%= curMenu.equals("index") ? "class=\"w3-black\"": "" %> href="<%=contextPath %>">인덱스</a></li>
 <li><a <%= curMenu.equals("seedList") ? "class=\"w3-red\"": "" %> href="<%=contextPath %>/sample/openSampleList.do">Seed사원목록</a></li>
 <li><a <%= curMenu.equals("blackList") ? "class=\"w3-red\"": "" %> href="<%=contextPath %>/blackList/blackList.do">블랙리스트목록</a></li>
</ul>