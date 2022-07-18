<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
$(document).ready(function(){
	var bno="${boardDTO.bno}";
	var page=1;
	
	function replyList() {
		
 		$.getJSON("/project/board/replyList"+bno+"/"+page,function(data){
			console.log(data);
			$(data.list).each(function(){
				str+="<li data-rno='"+this.rno+"' class='replyLi'>"
				+this.rno+":"+this.replytext+" <button>Mod</button></li>"
				
			})
			$("#replies").html(str);
		}) 
		
		
/* 		$.ajax({
			type : 'GET',
			url : '/project/board/replyList',
			data : {bno},
			success : function (result) {
				for(var i=0; i<result.lenth; i++){
					var str = "<div class=\"replies\">"
					str += result[i].reply+"</div><hr>"
					$("replies").append(str);
				}
			},
			error : function(result) {
			},
			complete : function() {
			}
		}) */
			
	}
}
</script>

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
			<button type="submit" class="board_update">수정</button>
			<button type="submit" class="board_delete">삭제</button>
			<button type="button" class="board_list">목록</button>
		</div>
		<br><br><br>
		
		
		<div>
			<h2>Reply</h2><br>
			<div>
				<form action="/project/board/replyWrite" method="post">
				<div>
					<input type="hidden" name="bno" th:value="*{bno}" />
					REPLYER &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='text' name='replyer'>
				</div>
				<div>
					REPLY TEXT <input type='text' name="replyText" >
				</div><br>
				<button type="submit" value="확인">확인</button>
				</form>
			</div>
		</div>
		<ul id="replies"></ul>
	</div>
	
	<%@include file="../include/footer.jsp"%>