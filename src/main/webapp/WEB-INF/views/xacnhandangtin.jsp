<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> --%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>xác nhận đăng tin</title>
<%@ include file="header_xndt.jsp"%>

<div class="container">

	<form:form action="/luuthongtin"
		method="post" modelAttribute="baidang">

		<p class="noidung">Nội dung tin</p>
		<hr>
		<%-- 		<c:forEach  items="${baidang}" var="baidang"> --%>
<%-- 		<c:forEach items="baidangs" var="bd"> --%>
<!-- 			<div class="row mt-5"> -->

<!-- 				<p class="col-2">Danh mục :</p> -->

<%-- 				<p id="p-danhMuc" class="col-8">${bd.tenDanhMuc }</p> --%>

<!-- 			</div> -->

<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Vùng miền :</p> -->
<%-- 				<p id="p-vungMien" class="col-8">${bd.tenVungMien }</p> --%>

<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Bạn là :</p> -->
<%-- 				<p id="p-Banla" class="col-8">${bd.banLa}</p> --%>

<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Hướng:</p> -->
<%-- 				<p id="p-Banla" class="col-8">${bd.huong}</p> --%>

<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Tựa đề</p> -->
<%-- 				<p id="p-banDangTin" class="col-8">${bd.tuaDe}</p> --%>
<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Tình trạng :</p> -->
<%-- 				<p id=" p-tinhTrang" class="col-8">${bd.tinhTrang}</p> --%>
<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Địa chỉ :</p> -->
<%-- 				<p id=" p-diaChi" class="col-8">${bd.diaChi}</p> --%>
<!-- 			</div> -->

<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Diện tích :</p> -->
<%-- 				<p id=" p-dienTich" class="col-8">${bd.dienTich}</p> --%>
<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Giá :</p> -->
<%-- 				<p id=" p-gia" class="col-8">${bd.gia}</p> --%>
<!-- 			</div> -->
<!-- 			<div class="row "> -->
<!-- 				<p class="col-2">Nội dung :</p> -->
<%-- 				<p id=" p-gia" class="col-8">${bd.noiDung}.</p> --%>
<!-- 			</div> -->

<%-- 		</c:forEach> --%>



		<div class="row ">
			<p class="col-12" style="text-align: start;">
				Hình ảnh :</span>
			</p>

			<div class="row mt-3">
				<div class="col-2 img"></div>
				<div class="col-2 img"></div>
				<div class="col-2 img"></div>
				<div class="col-2 img"></div>
				<div class="col-2 img"></div>
				<div class="col-2 img"></div>
			</div>
			<div class="row row-button">

<!-- 				<button id="quaylai" onclick="history.back()" -->
<!-- 					class="btn bg-warning mt-5 mb-5 "> -->
<!-- 					<i class="fa-solid fa-chevron-left"></i> <span>Quay lại</span> -->
<!-- 				</button> -->

				<button id="xacnhan" type="submit" class="btn bg-primary mt-5 mb-5">
					<i class="fa-solid fa-check"></i> <span>Xác nhận</span>
				</button>
				<!-- 				<button type="submit" name="submitAction" value="submit">Submit</button> -->
				<!-- 				<button type="submit" name="submitAction" value="goBack">Quay -->
				<!-- 					lại</button> -->
			</div>
		</div>
		<%-- 		</c:forEach> --%>
	</form:form>
</div>

<%@ include file="footer.jsp"%>