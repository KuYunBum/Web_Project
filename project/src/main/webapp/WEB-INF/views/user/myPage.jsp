<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br>
		<ul>
			<li><a href="/project/user/information?userNum=${userNum }">내 정보</a></li>
			<li><a href="/project/content/inbody?userNum=${userNum }">인바디</a></li>
		</ul>
		
	</div>
	
	<%@include file="../include/footer.jsp"%>