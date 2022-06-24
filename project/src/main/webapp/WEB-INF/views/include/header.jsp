<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>Page Title</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@48,400,0,0" />
<link rel="stylesheet" href="/project/resources/css/include_template.css">
<link rel="stylesheet" href="/project/resources/css/template.css" />
<script>
	var result = '${msg}';
	if (result == 'success') {
		alert("처리가 완료되었습니다.");
	}

	$(document).ready(function(){
		
		var formObj = $("form[role='form']");

		$(".bt_save").on("click", function() {
			formObj.submit();
		});
		
		$(".bt_list").on("click", function(){
			self.location = "/project/board/select";
		});
		
		$(".bt_insert").on("click", function() {
			location.href = "/project/board/insert"
		});
		
		$(".bt_update").on("click", function(){
			self.location = "update?bno=${boardDTO.bno}";
		});
		
		$(".bt_delete").on("click", function(){
			formObj.attr("action", "/project/board/delete");
			formObj.submit();
		});
		
		$(".bt_cancel").on("click", function() {
			self.location = "/project/board/detail?bno=${boardDTO.bno}";
		});
		
	});
	
</script>
</head>
<body>

  <div class="header">
        <div class="navbar1">

            <a href="/project/">
                <img src="/project/resources/image/logo.png" style="width:200px;height:150px;"> <!-- 로고 -->
            </a>

            <ul>
                <!-- 상단 메뉴 -->
                <li><a href="/project/user/login">로그인</a></li>
                <li><a href="/project/user/join">회원가입</a></li>
                <li><a href="#">고객센터</a></li>
            </ul>
        </div>

        <div class="navbar2">
            <ul>
                <!-- 메인 메뉴 -->
                <li><a href="/project/">홈</a></li>
                <li><a href="/project/content/ex_recomm">AI 운동 추천</a></li>
                <li><a href="/project/content/membership">멤버쉽</a></li>
                <li><a href="/project/content/trainer">트레이너</a></li>
                <li><a href="/project/board/select">자유게시판</a></li>
                <li><a href="/project/content/gym">내 주변 헬스장 찾기</a></li>
                <li>
                    <div class="searchBox">
                        <!-- 수정해야함 -->
                        <div class="search">
                            <label>
                                <input type="text" name="searchBar " placeholder="검색어 입력">
                                <span class="material-symbols-outlined">search</span>
                            </label>
                        </div>
                    </div>
                </li>
            </ul>
        </div>
    </div>