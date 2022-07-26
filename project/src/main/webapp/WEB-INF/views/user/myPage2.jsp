<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="../include/header.jsp"%>
	
	<div class="main">
		<h1>마이페이지</h1>
		<div class="myPage">
			<table id='customers' border="1" style="width: 300px;">
				<tr>
					<td><a href="/project/user/information?userNum=${userNum }">내 정보</a></td>
				</tr>
				<tr>
					<td><a href="/project/content/inbody/detail?userNum=${userNum }">인바디</a></td>
				</tr>
			</table>
		</div>
	</div>
	
	<%@include file="../include/footer.jsp"%>