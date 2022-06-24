<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



	<%@include file="../include/header.jsp"%>

	<div class="main">
		<h1>게 시 판</h1>
		<table id='customers' border="1">
			<tr>
				<th style="width: 80px">번호</th>
				<th>제목</th>
				<th style="width: 200px">작성자</th>
				<th style="width: 250px">작성날짜</th>
				<th style="width: 80px">조회</th>
			</tr>
	
			<c:forEach items="${list}" var="boardDTO">
				<tr>
					<td>${boardDTO.bno}</td>
					<td><a href='/project/board/detail?bno=${boardDTO.bno}'>${boardDTO.title}</a></td>
					<td>${boardDTO.writer}</td>
					<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
							value="${boardDTO.regdate}" /></td>
					<td><span class="badge bg-red">${boardDTO.viewcnt }</span></td>
				</tr>
			</c:forEach>
		</table>
		<br>
		<div class="bt_box">
		<button class="bt_insert">글쓰기</button>
		</div>
	</div>

	<%@include file="../include/footer.jsp"%>
