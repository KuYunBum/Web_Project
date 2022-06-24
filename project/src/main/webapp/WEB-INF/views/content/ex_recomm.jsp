<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	

	<div class="main">
		<div class="content_ex">
			<img src="/project/resources/image/health_1.jpg">
			<h1>AI 추천 플랜</h1>
			<br>
			<p>
				사용자의 정보 신체 조건운동,<br> 장소 등을 고려한 맞춤 운동
			</p>
			<button onclick="location.href = '/project/content/ex_recomm_start'">시작하기</button>
		</div>
	</div>


	<%@include file="../include/footer.jsp"%>