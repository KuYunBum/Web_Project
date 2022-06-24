<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
    
	<div class="main">
	    <div class="joinBox">
	        <div class="joinInput">
		        <a href="/project/">
	                <img src="/project/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
	            </a>
		        <form method="post">
		            <label for="logID"> 아이디 </label><br>
		            <input type="text" id="logID" name="logID" placeholder="4~20자리 사이의 아이디를 입력해주세요.">
		            <button> 중복확인 </button><br>
		            
		            <label for="logPW"> 비밀번호 </label>
		            <input type="password" id="logPW" name="logPW" placeholder="8~20자리 사이의 비밀번호를 입력해주세요.">
		            
		            <label for="logPWCheck"> 비밀번호 확인 </label>
		            <input type="password" id="logPW" name="logPW" placeholder="비밀번호를 다시 한 번 입력해주세요.">
		            
		            <label for="logName"> 이름 </label>
		            <input type="text" id="logName" name="logName" placeholder="이름을 입력해주세요.">
		            
		            <label for="logBirth"> 생년월일 </label>
		            <input type="date" id="logBirth" name="logBirth"><br>
		            
		            <label for="phoneNum"> 전화번호 </label><br>
		            <input type="text" id="phoneNum" name="phoneNum" placeholder="핸드폰 번호를 입력해주세요.">
		            
		            <label for="email"> 이메일 </label><br>
		            <input type="text" id="email" name="email" placeholder="이메일을 입력해주세요.">
		
<!-- 		            <div class="sBox">fieldset/ legend 로 변경 -->
<!-- 			            <div> -->
<!-- 			                <label for="howJoin">가입경로</label><br> -->
<!-- 			                <select id="howJoin" name="howJoin"> -->
<!-- 			                <option value="지인추천"> 지인추천 </option> -->
<!-- 			                <option value="블로그"> 블로그 </option> -->
<!-- 			                <option value="현수막"> 현수막 </option> -->
<!-- 			                </select> -->
<!-- 			            </div> -->
<!-- 			            <div> -->
<!-- 			                <label for="joinPp"> 운동 목적 </label><br> -->
<!-- 			                <select id="joinPp" name="joinPp"> -->
<!-- 			                <option value="다이어트"> 다이어트 </option> -->
<!-- 			                <option value="근육질몸매"> 근육질 몸매 </option> -->
<!-- 			                <option value="건강관리"> 건강관리 </option> -->
<!-- 			                </select> -->
<!-- 			            </div> -->
<!-- 			            <div class="cb"> -->
<!-- 			                <label for="ex"> 원하는 운동부위 </label><br> -->
<!-- 			                <input type="checkbox" value="list1"> 가슴 -->
<!-- 			                <input type="checkbox" value="list2"> 어깨 -->
<!-- 			                <input type="checkbox" value="list3"> 복부 -->
<!-- 			                <input type="checkbox" value="list4"> 등 -->
<!-- 			                <input type="checkbox" value="list5"> 팔 -->
<!-- 			                <input type="checkbox" value="list5"> 허벅지 -->
<!-- 			                <input type="checkbox" value="list5"> 종아리  -->
<!-- 			            </div> -->
<!-- 		            </div> -->

		                <input type="submit" value="가입하기" >
		        </form>
	        </div>
	    </div>
	</div>

	<%@include file="../include/footer.jsp"%>