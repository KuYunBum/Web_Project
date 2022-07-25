<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>내용 수정</h1>
		<form role="form" method="post">
			<table id='customers' border="1" style="width: 500px;">
				<tr>
					<th>측정 날짜</th>
				</tr>
				<tr>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${inbodyDTO.inbodyDate}" /></td>
				</tr>
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td>${inbodyDTO.userGender}</td>
				</tr>
				<tr>
					<th>키</th>
				</tr>
				<tr>
					<td><input type="text" name='height' style="width:80%; height:30px;" value="${inbodyDTO.height}"></td>
				</tr>
				<tr>
					<th>몸무게</th>
				</tr>
				<tr>
					<td><input type="text" name='weight' style="width:80%; height:30px;" value="${inbodyDTO.weight}"></td>
				</tr>
				<tr>
					<th>골격근량</th>
				</tr>
				<tr>
					<td><input type="text" name='skeletalMuscleMass' style="width:80%; height:30px;" value="${inbodyDTO.skeletalMuscleMass}"></td>
				</tr>
				<tr>
					<th>체지방량</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyFatMass' style="width:80%; height:30px;" value="${inbodyDTO.bodyFatMass}"></td>
				</tr>
				<tr>
					<th>체수분</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyWater' style="width:80%; height:30px;" value="${inbodyDTO.bodyWater}"></td>
				</tr>
				<tr>
					<th>단백질</th>
				</tr>
				<tr>
					<td><input type="text" name='protein' style="width:80%; height:30px;" value="${inbodyDTO.protein}"></td>
				</tr>
				<tr>
					<th>근육량</th>
				</tr>
				<tr>
					<td><input type="text" name='muscleMass' style="width:80%; height:30px;" value="${inbodyDTO.muscleMass}"></td>
				</tr>
				<tr>
					<th>제지방량</th>
				</tr>
				<tr>
					<td><input type="text" name='leanBodyMass' style="width:80%; height:30px;" value="${inbodyDTO.leanBodyMass}"></td>
				</tr>
				<tr>
					<th>무기질</th>
				</tr>
				<tr>
					<td><input type="text" name='minerals' style="width:80%; height:30px;" value="${inbodyDTO.minerals}"></td>
				</tr>
				<tr>
					<th>체질량지수(BMI)</th>
				</tr>
				<tr>
					<td><input type="text" name='BMI' style="width:80%; height:30px;" value="${inbodyDTO.BMI}"></td>
				</tr>
				<tr>
					<th>복부지방률</th>
				</tr>
				<tr>
					<td><input type="text" name='waistHipRatio' style="width:80%; height:30px;" value="${inbodyDTO.waistHipRatio}"></td>
				</tr>
				<tr>
					<th>기초대사량(BMR)</th>
				</tr>
				<tr>
					<td><input type="text" name='BMR' style="width:80%; height:30px;" value="${inbodyDTO.BMR}"></td>
				</tr>
				<tr>
					<th>체형</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyShape' style="width:80%; height:30px;" value="${inbodyDTO.bodyShape}"></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="submit" class="bt_save">저장</button>
			<button type="button" onclick="location.href='/project/content/inbody/detail?userNum=${userNum}'">뒤로</button>
		</div>
	</div>
	
	<%@include file="../../include/footer.jsp"%>