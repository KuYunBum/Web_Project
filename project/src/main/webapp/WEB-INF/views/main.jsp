<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<%@include file="include/header.jsp"%>
	
	
	<div class="main">
		<div class="main_content">
			<div class="content_1">
				<img src="/project/resources/image/main1.JPG" style="width: 630px;height: 600px;">
			</div>	
			<div class="content_2">
				<img src="/project/resources/image/main2.JPG" style="width: 630px;height: 600px;">
			</div>	
		</div>
	</div>
	
	<div class="container">
		<div id="myCarousel" class="carousel slide" data-ride="carousel">
			<ol class="carousel-indicators">
				<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
				<li data-target="#myCarousel" data-slide-to="2"></li>
				<li data-target="#myCarousel" data-slide-to="3"></li>
			</ol>
			<div class="carousel-inner">
				<div class="item active">
					<img src="/project/resources/image/css.png">
				</div>
				<div class="item">
					<img src="/project/resources/image/javascript.png">
				</div>
				<div class="item">
					<img src="/project/resources/image/bootstrap.png">
				</div>
			</div>
			<a class="left carousel-control" href="#myCarousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#myCarousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
		</div>
	</div>


	<%@include file="include/footer.jsp"%>