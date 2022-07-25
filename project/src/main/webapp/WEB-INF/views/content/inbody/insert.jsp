<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../../include/header.jsp"%>
	
	<div class="main">
		<h1>글 쓰기</h1>
		<!-- action에 경로가 없으면 현재 페이지 주소로 이동한다.-->
		<form role="form" method="post">
			<table id='customers' border="1" style="width: 500px;">
				<tr>
					<th>성별</th>
				</tr>
				<tr>
					<td><input type="text" name='userGender' style="width:80%" value="${userDTO.userGender}"></td>
				</tr>
				<tr>
					<th>키</th>
				</tr>
				<tr>
					<td><input type="text" name='height' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>몸무게</th>
				</tr>
				<tr>
					<td><input type="text" name='weight' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>골격근량</th>
				</tr>
				<tr>
					<td><input type="text" name='skeletalMuscleMass' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>체지방량</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyFatMass' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>체수분</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyWater' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>단백질</th>
				</tr>
				<tr>
					<td><input type="text" name='protein' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>근육량</th>
				</tr>
				<tr>
					<td><input type="text" name='muscleMass' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>제지방량</th>
				</tr>
				<tr>
					<td><input type="text" name='leanBodyMass' placeholder="내용 입력"	style="width:80%"></td>
				</tr>
				<tr>
					<th>무기질</th>
				</tr>
				<tr>
					<td><input type="text" name='minerals' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>체질량지수(BMI)</th>
				</tr>
				<tr>
					<td><input type="text" name='BMI' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>복부지방률</th>
				</tr>
				<tr>
					<td><input type="text" name='waistHipRatio' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>기초대사량(BMR)</th>
				</tr>
				<tr>
					<td><input type="text" name='BMR' placeholder="내용 입력" style="width:80%"></td>
				</tr>
				<tr>
					<th>체형</th>
				</tr>
				<tr>
					<td><input type="text" name='bodyShape' placeholder="내용 입력" style="width:80%"></td>
				</tr>
			</table>
		</form>
		<div class="bt_box">
			<button type="button" class="bt_save">저장</button>
			<button type="button" onclick="location.href='/project/content/inbody/detail?userNum=${userNum}'">뒤로</button>
		</div>
	</div>
	
	<%@include file="../../include/footer.jsp"%>