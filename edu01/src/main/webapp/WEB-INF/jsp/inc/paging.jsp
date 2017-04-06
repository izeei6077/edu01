<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<ul class="w3-pagination w3-border w3-round w3-center">
    <li><a href="javascript:goPage(${param.firstPageNo})">&laquo;&laquo;</a></li> <% // 맨 처음으로 가는 화살표 %>
    <li><a href="javascript:goPage(${param.prevPageNo})">&laquo;</a></li> <% // 이전으로 가는 화살표 %>
    
    <c:forEach var="i" begin="${param.startPageNo}" end="${param.endPageNo}" step="1">  <% // 가운데 페이지 넘버를 나타내주는 for문 %>
        <c:choose>
            <c:when test="${i eq param.pageNo}"> <li><a class="w3-green" href="javascript:goPage(${i})">${i}</a></li></c:when>
            <c:otherwise><li><a href="javascript:goPage(${i})">${i}</a></li></c:otherwise>
        </c:choose>
    </c:forEach>
	
	<li><a href="javascript:goPage(${param.nextPageNo})">&raquo;</a>   <% // 다음으로 가는 화살표 %>
	<li><a href="javascript:goPage(${param.finalPageNo})">&raquo;&raquo;</a> <% // 맨 끝으로 가는 화살표 %>
</ul>


