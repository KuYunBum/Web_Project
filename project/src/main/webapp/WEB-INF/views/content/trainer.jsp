<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="re_tr"><%out.print(String.valueOf(session.getAttribute("user"))+" 님"); %>의 추천 트레이너
	</div>
	<div class="main">
		<div class="trainer">
			<div class="trainer_1">
				<img src="/project/resources/image/arnold.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>arnold</h2>
				<div class="trainer_info"><br>
					<p>1967 미스터유니버스 우승</p>
					<p>1968 미스터유니버스 우승</p>
					<p>1969 미스터유니버스 우승</p>
					<p>1970 미스터올림피아 우승</p>
				</div>
			</div>	
			<div class="trainer_2">
				<img src="/project/resources/image/bigRamy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>bigRamy</h2>
				<div class="trainer_info"><br>
					<p>2017 아놀드 클래식 유럽 – 1위</p>
					<p>2018 미스터 올림피아 – 6위</p>
					<p>2020 아놀드 클래식 오하이오 – 3위</p>
					<p>2020 미스터 올림피아 – 1위</p>
				</div>
			</div>	
			<div class="trainer_3">
				<img src="/project/resources/image/Billy.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>Billy</h2>
				<div class="trainer_info"><br>
					<p>2015 미스터 올림피아 - 5위</p>
					<p>2016 아놀드 클래식 유럽 – 3위</p>
					<p>2017 미스터 올림피아 – 3위</p>
					<p>2018 아놀드 클래식 오하이오 – 2위</p>
				</div>
			</div>	
			<div class="trainer_4">
				<img src="/project/resources/image/ronnieWidth.jpeg" style="width: 305px;height: 300px;">
				<br><br><h2>ronnie</h2>
				<div class="trainer_info"><br>
					<p>2007 미스터 올림피아 - 4위</p>
					<p>2006 미스터 올림피아 - 2위</p>
					<p>2005 미스터 올림피아 - 1위</p>
					<p>2004 미스터 올림피아 - 1위</p>
				</div>
			</div>	
		</div>
	</div>


	<%@include file="../include/footer.jsp"%>