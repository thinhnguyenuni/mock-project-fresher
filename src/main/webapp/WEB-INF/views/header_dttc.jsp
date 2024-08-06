<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%--THUANTQ <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> --%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">


<%-- THUANTQ <link href="<c:url value="/static/css/mock.css" />" rel="stylesheet"> --%>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/mock.css">
<style>

/* body */
body {
	background-color: #F1F8E9;
}

.message {
	width: 410px;
	margin: 200px auto;
	padding: 0 10px 10px;
	border: 2px solid #2196f3;
	background-color: white;
	border-radius: 10px;
	font-family: Arial, sans-serif;
	color: white;
}

.row-thongbao {
	border-radius: 10px 10px 0 0;
	background-color: #2196f3;
}

p {
	color: black;
}

p.p-thongbao {
	margin-top: 8px;
	color: white;
}

.row.chitiet {
	margin-top: 10px;
}

button#quaylai {
	width: 46%;
	margin-left: 50%;
}

.active {
	color: white;
}
.color {
	color: #777777;
}
</style>
</head>

<body>
	<div class="header">
		<div class="col-3">
			<img class=""
				src="${pageContext.request.contextPath}/resources/img/logo.bmp"
				alt="">

		</div>
		<div class="text-menu">

			<div class="tim">
				<i class="fa-solid fa-magnifying-glass color"></i> <span class="color">Tìm bất
					động sản</span> <i class="fa-solid fa-sort-down color"></i>

			</div>
			<div class="tim dangtin">
				<a href="#" class="nav-link text-dark text-center "> <i
					class="fa-solid fa-bullhorn color"></i> <span class="color">Đăng tin</span> 
				</a>

			</div>
			<div class="tim">
				<i class="fa-solid fa-book color"></i> <span class="color">Trợ giúp</span>
			</div>
			<div class="tim icon">
				<i class="fa-solid fa-user-large color"></i> <span class="color">thinh@gmail.com</span>
				<i class="fa-solid fa-sort-down color"></i>
			</div>
		</div>
	</div>