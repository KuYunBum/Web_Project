<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1><br><br>
 		<form role="form" method="post">
			<input type='hidden' name='userNum' value="${userDTO.userNum}">
		</form>
		
		<div class="myPageNav">
			<ul>
				<li>
					<a href="/project/user/myPage?userNum=${userNum }">내 프로필</a>
				</li>
				<li>
					<a href="/project/content/inbody/detail?userNum=${userNum }">인바디</a>
				</li>
				<li>
					<a href="/project/user/routineBox?userNum=${userNum }">내 루틴 커스텀</a>
				</li>
				<li>
					<a href="#">운동기록</a>
				</li>
			</ul>
		</div>
		
		<hr style="width: 1300px; margin:auto;">

		<div class="myPageNav2">
			<div class="leftContainer" >
				<h3>프로필 사진</h3>
				<div class="profillePhoto">
					<img src="/project/resources/image/arnold.jpeg" >
				</div>
			</div>
					
			<div class="heightLine" ></div>
				
			<div class="rightContainer" >
				<div class="rcText" >
				
				</div>
			</div>
		</div>
		
		<hr style="width: 1300px; margin:auto;"><br>
				
		<div class="bt_box">
		
		</div>
		
	</div>

	<%@include file="../include/footer.jsp"%>