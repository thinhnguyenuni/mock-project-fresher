<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>thiết lập</title>

<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
	crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/resources/css/mock.css">
</head>
<style>
.menu {
	height: 40px;
	margin-left: 24px;
}

.left.border-end {
	background: #f8f8f8;
}

a:hover {
	cursor: pointer;
}

.container {
	display: flex;
}

i.thietlap1.fa-solid.fa-pen-to-square {
	font-size: 300%;
	margin-top: 8%;
	width: 8%;
}

span#thietLap {
	font-size: 300%;
	margin-top: 7%;
}

.thietlap {
	height: 50%;
	border-bottom: 1px #e8e8e8 solid;
	margin-top: -6%;
	display: flex;
	width: 100%;
	justify-content: flex-start;
}

.right.container {
	border-top: 1px solid #e8e8e8;
	flex-direction: column;
	padding-left: 60px;
}

.row.tieudedanhmuc {
	background: #f5f5f5;
	border-radius: 10px 10px 0 0;
	border: 1px solid #e8e8e8;
}

.row.bangdanhmuc {
	margin-top: 5%;
	border-radius: 10px;
	border: 1px solid #e8e8e8;
}

.than-danhmuc {
	display: flex;
	flex-direction: column;
}

button.btn {
	margin-top: 5%;
	width: 25%;
}

input[type="text"] {
	margin-top: 5%;
}

.col-6 {
	margin-top: -3px;
	padding-left: 40px;
}

.active {
	color: white;
}

i.fa-solid.fa-chevron-left {
	padding-left: 36%;
}

/* header */
header img {
	margin-left: -5%;
	margin-top: -3%;
	width: 100%;
}

header .flex {
	background: #f8f8f8;
	display: flex;
	justify-content: space-between;
}

.icon {
	margin: 2% 10%;
}

.err {
	color: red;
}
</style>
<body>
	<header>
		<div class="container flex">
			<div class="bds">
				<img class=""
					src="${pageContext.request.contextPath}/resources/img/bds.png"
					alt="">

			</div>
			<div class="icon">

				<i class="fa-solid fa-user-large"></i> <i
					class="fa-solid fa-sort-down"></i>
			</div>
		</div>


	</header>
	<div class="container">

		<div class=" left  border-end" style="width: 22%;">
			<div class="mt-2 menu">
				<a href="/datvemoi" class="text-decoration-none"> <i
					class="fa-solid fa-user-large"></i> Thành viên
				</a>
				<hr>
			</div>
			<div class="mt-2 menu">
				<a href="/JWD.General/tao-moi-khach-hang"
					class="text-decoration-none"> <i class="fa-solid fa-bullhorn"></i>
					Bài đăng <i class="fa-solid fa-chevron-left"></i>

				</a>
				<hr>
			</div>
			<div class="mt-2 menu">
				<a href="/JWD.General/tao-moi-dich-vu" class="text-decoration-none">
					<i class="fa-solid fa-book"></i> Trợ giúp
				</a>
				<hr>
			</div>
			<div class="mt-2 menu">
				<a href="/JWD.General/danh-sach-may" class="text-decoration-none">
					<i class="fa-regular fa-file-lines"></i> Thống kê <i
					class="fa-solid fa-chevron-left"></i>

				</a>
				<hr>
			</div>
			<div class="mt-2 menu">
				<a href="/JWD.General/danh-sach-may" class="text-decoration-none">
					<i class="fa-solid fa-pen-to-square"></i> Thiết lập
				</a>
				<hr>
			</div>
			<div class="mt-2 menu">
				<a href="/JWD.General/danh-sach-may" class="text-decoration-none">
					<i class="fa-solid fa-pen-to-square"></i> Cấp quyền
				</a>
				<hr>
			</div>
		</div>
		<div class="right container">
			<div class=" thietlap">
				<i class="thietlap1 fa-solid fa-pen-to-square"></i> <span
					id="thietLap">Thiết lập</span>
			</div>
			<div class="row">
				<div class="col-5">
					<div class="row bangdanhmuc">
						<div class="col-12">
							<div class="row tieudedanhmuc">
								<p class="p-thietlapdanhmuc">Danh mục bất động sản</p>
							</div>
							<div class="than-danhmuc">
								<input class="form-control" id="danhMuc" type="text"
									placeholder="Tên danh muc">
								<p id="err-danhMuc" class="err"></p>

								<button class="btn bg-primary" id="luuDanhMuc">
									<span>Lưu</span>
								</button>

								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">Mã</th>
											<th scope="col">Tên danh mục</th>
											<th scope="col"></th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty listct}">
											<c:forEach var="ct" items="${listct}" varStatus="loop">
												<tr>
													<td>${loop.index + 1}</td>
													<td>${ct.idCustomer}</td>
													<td>${ct.nameCustomer}</td>
													<td>${ct.address}</td>
													<td>${ct.phone}</td>
													<td>${ct.email}</td>
													<td>
														<i class="far fa-edit btn bg-warning edit-customer"></i> 
														<i class="far fa-trash-alt btn bg-danger remove-customer"></i>
													</td>
												</tr>
											</c:forEach>
										</c:if>

									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="row bangdanhmuc">
						<div class="col-12">
							<div class="row tieudedanhmuc">
								<p class="p-thietlapdanhmuc">Loại tin</p>
							</div>
							<div class="than-danhmuc">
								<input class="form-control" id="loaiTin" type="text"
									placeholder="Tên loại tin">
								<p id="err-loaiTin" class="err"></p>

								<button class="btn bg-primary" id="luuLoaiTin">
									<span>Lưu</span>
								</button>

								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">Mã</th>
											<th scope="col">Tên loại tin</th>
											<th scope="col"></th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty listct}">
											<c:forEach var="ct" items="${listct}" varStatus="loop">
												<tr>
													<td>${loop.index + 1}</td>
													<td>${ct.idCustomer}</td>
													<td>${ct.nameCustomer}</td>
													<td>${ct.address}</td>
													<td>${ct.phone}</td>
													<td>${ct.email}</td>
													<td><i
														class="far fa-edit btn bg-warning edit-customer"></i> <i
														class="far fa-trash-alt btn bg-danger remove-customer"></i>
													</td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
				<div class="col-6 ">

					<div class="row bangdanhmuc">
						<div class="col-12">
							<div class="row tieudedanhmuc">
								<p class="p-thietlapdanhmuc">Vùng miền</p>
							</div>
							<div class="than-danhmuc">
								<input class="form-control" id="vungMien" type="text"
									placeholder="Tên vùng miền">
								<p id="err-vungMien" class="err"></p>

								<button class="btn bg-primary" id="luuVungMien">
									<span>Lưu</span>

								</button>

								<table class="table table-hover">
									<thead>
										<tr>
											<th scope="col">Mã</th>
											<th scope="col">Tên vùng miền</th>
											<th scope="col"></th>
											<th scope="col"></th>
										</tr>
									</thead>
									<tbody>
										<c:if test="${not empty listct}">
											<c:forEach var="ct" items="${listct}" varStatus="loop">
												<tr>
													<td>${loop.index + 1}</td>
													<td>${ct.idCustomer}</td>
													<td>${ct.nameCustomer}</td>
													<td>${ct.address}</td>
													<td>${ct.phone}</td>
													<td>${ct.email}</td>
													<td><i
														class="far fa-edit btn bg-warning edit-customer"></i> <i
														class="far fa-trash-alt btn bg-danger remove-customer"></i>
													</td>
												</tr>
											</c:forEach>
										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@ include file="footer.jsp"%>