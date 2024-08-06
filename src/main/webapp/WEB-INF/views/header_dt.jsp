<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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


<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/mock.css">


<style>
/* container */
p.p-thongtin {
	font-size: 20px;
	font-weight: 400;
}

span.vuilong {
	color: #FDD835;
}

span#batbuoc {
	font-weight: 600;
	color: red;
}

p.col-12 {
	font-weight: 700;
}

.col-3.img {
	height: 200px;
	border: solid black 1px;
	width: 200px;
	margin: 5px 10px;
	background-image:
		url("${pageContext.request.contextPath}/resources/img/nha_1.jpg");
	background-size: cover;
	/* hoặc contain */
	background-position: center center;
	background-repeat: no-repeat;
}

.col-3.1 {
	height: 200px;
	border: solid black 1px;
	width: 200px;
	margin: 5px 10px;
	background-image: url("${imageUrl}") background-size: cover;
	/* hoặc contain */
	background-position: center center;
	background-repeat: no-repeat;
}

button.btn.bg-primary {
	margin-left: 70%;
	width: 30%;
}

.active {
	color: white;
}

.err {
	color: red;
}

.color {
	color: #777777;
}

button.btn.btn-outline-secondary.dropdown-toggle.dropdown-toggle-split {
	height: 100%;
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
				<i class="fa-solid fa-magnifying-glass color"></i> <span
					class="color">Tìm bất động sản</span> <i
					class="fa-solid fa-sort-down color"></i>

			</div>
			<div class="tim dangtin">
				<a href="#" class="nav-link text-dark text-center color"> <i
					class="fa-solid fa-bullhorn color"></i> <span class="color">Đăng
						tin</span>
				</a>

			</div>
			<div class="tim">
				<i class="fa-solid fa-book color"></i> <span class="color">Trợ
					giúp</span>
			</div>
			<div class="tim icon">
				<i class="fa-solid fa-user-large color"></i> 
				<span class="color">thinh@gmail.com</span>

				<%-- 				<form:select path="nguoiDung.email" class="form-control"> --%>
				<%-- 					<form:option value="">Chọn danh mục</form:option> --%>
				<%-- 					<form:options items="${listnd}" itemValue="email" --%>
				<%-- 						itemLabel="email"></form:options> --%>
				<%-- 				</form:select> --%>

				<i class="fa-solid fa-sort-down color"></i>
			</div>
		</div>
	</div>