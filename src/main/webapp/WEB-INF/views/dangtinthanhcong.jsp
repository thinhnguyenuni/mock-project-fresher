<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<title>đăng tin thành công</title>
<%@ include file="header_dttc.jsp"%>
<form:form action="${pageContext.request.contextPath}/dangtinthanhcong/dangtin"
	method="post" >
	<div class=" message">
		<div class="row row-thongbao">
			<p class="p-thongbao">Thông báo!</p>

		</div>
		<div class="row chitiet">

			<p>Bài viết của bạn đã được gửi tới quản trị viên. Chúng tôi sẽ
				duyệt bài viết của bạn trong thời gian sớm nhất. Chân thành cảm ơn!</p>
			<button id="quaylai" type="submit" class="btn bg-warning mt-3 mb-3 ">
				<i class="fa-solid fa-chevron-left"></i> <span>Quay lại trang
					chủ</span>
			</button>
		</div>
	</div>
</form:form>
<%@ include file="footer.jsp"%>