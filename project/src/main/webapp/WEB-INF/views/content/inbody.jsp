<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>인바디</h1>
		<form role="form" method="post">
			<input type='hidden' name='userNum' value="${userDTO.userNum}">
		</form>
			<table id='customers' border="1" style="width: 500px;">
				<tr>
					<th>측정 날짜</th>
				</tr>
				<tr>
					<td>${inbodyDTO.inbodyDate}</td>
				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td>${inbodyDTO.gender}</td>
				</tr>
				<tr>
					<th>키</th>
				</tr>
				<tr>
					<td>${inbodyDTO.height}</td>
				</tr>
				<tr>
					<th>몸무게</th>
				</tr>
				<tr>
					<td>${inbodyDTO.weight}</td>
				</tr>
				<tr>
					<th>골격근량</th>
				</tr>
				<tr>
					<td>${inbodyDTO.skeletalMuscleMass}</td>
				</tr>
				<tr>
					<th>체지방량</th>
				</tr>
				<tr>
					<td>${inbodyDTO.bodyFatMass}</td>
				</tr>
				<tr>
					<th>체수분</th>
				</tr>
				<tr>
					<td>${inbodyDTO.bodyWater}</td>
				</tr>
				<tr>
					<th>단백질</th>
				</tr>
				<tr>
					<td>${inbodyDTO.protein}</td>
				</tr>
				<tr>
					<th>근육량</th>
				</tr>
				<tr>
					<td>${inbodyDTO.muscleMass}</td>
				</tr>
				<tr>
					<th>제지방량</th>
				</tr>
				<tr>
					<td>${inbodyDTO.leanBodyMass}</td>
				</tr>
				<tr>
					<th>무기질</th>
				</tr>
				<tr>
					<td>${inbodyDTO.minerals}</td>
				</tr>
				<tr>
					<th>체질량지수(BMI)</th>
				</tr>
				<tr>
					<td>${inbodyDTO.BMI}</td>
				</tr>
				<tr>
					<th>복부지방률</th>
				</tr>
				<tr>
					<td>${inbodyDTO.waistHipRatio}</td>
				</tr>
				<tr>
					<th>기초대사량(BMR)</th>
				</tr>
				<tr>
					<td>${inbodyDTO.BMR}</td>
				</tr>
				<tr>
					<th>체형</th>
				</tr>
				<tr>
					<td>${inbodyDTO.bodyShape}</td>
				</tr>
			</table>
		<div class="bt_box">
			<button type="submit" class="">입력</button>
			<button type="button" class="">수정</button>
			<button onclick="location.href='/project/'">홈</button>
		</div>
	</div>
		
	<%@include file="../include/footer.jsp"%>