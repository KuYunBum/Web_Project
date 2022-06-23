<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false" %>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>상세 내용</h1>
		<form role="form" method="post">
			<input type='hidden' name='bno' value="${boardDTO.bno}">
		</form>
			<table id='customers' border="1">
				<tr>
					<th>번호</th>
				</tr>
				<tr>
					<td>${boardDTO.bno}</td>
				</tr>
				<tr>
					<th>작성자</th>
				</tr>
				<tr>
					<td>${boardDTO.writer}</td>
				</tr>
				<tr>
					<th>제목</th>
				</tr>
				<tr>
					<td>${boardDTO.title}</td>
				</tr>
				<tr>
					<th>내용</th>
				</tr>
				<tr>
					<td><textarea readonly="readonly"> ${boardDTO.content}</textarea></td>
				</tr>
			</table>
		<div class="bt_box">
			<button type="submit" class="bt_update">수정</button>
			<button type="submit" class="bt_delete">삭제</button>
			<button type="button" class="bt_list">목록</button>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>