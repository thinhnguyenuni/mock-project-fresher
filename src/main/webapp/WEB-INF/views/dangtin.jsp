<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<title>đăng tin</title>
<%@ include file="header_dt.jsp"%>

<div class="container " style="margin-top: 100px;">

	<h3 id="h3-dangtin">Đăng Tin</h3>
	<p class="p-thongtin">Thông tin liên hệ</p>
	<hr>
	<div class="row">
		<div class="col-2">Họ và tên :</div>
		<div class="col-7" id="hoTen">Thu Thảo</div>
	</div>
	<div class="row">
		<div class="col-2">Email :</div>
		<div class="col-7" id="email">thao@gmail.com</div>
	</div>
	<div class="row">
		<div class="col-2">Địa chỉ :</div>
		<div class="col-7" id="diaChiUser">25 Duy Tan, thành phố Huế</div>
	</div>
	<div class="row">
		<div class="col-2">Số điện thoại :</div>
		<div class="col-7" id="phone">0909000999</div>
	</div>
	<p class="noidung">
		Nội dung tin <span class="vuilong">(vui lòng điền đầy đủ tấc cả
			các mục)</span>
	</p>
	<hr>
	<form:form action="xac-nha-dang-tin" method="post" modelAttribute="baidang">
		<div class="row mt-5">
			<div class="col-4">
				<p class="col-12 p-danhmuc w-100" style="text-align: end;">Danh
					mục :</p>
			</div>
			<div class="col-8">

				<div class="input-group">
					<form:select path="danhMuc" class="form-control">
						<form:option value="">Chọn danh mục</form:option>
						<form:options value="nha o">nha o</form:options>
						<form:options value="dat o">dat o</form:options>
						<form:options value="dat ban">dat ban</form:options>
						<form:options value="dat thue">dat thue</form:options>
					</form:select>
					<div class="input-group-append">
						<button type="button"
							class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						</button>

					</div>
				</div>
			</div>
		</div>

		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">Vùng miền :</p>
			</div>
			<div class="col-8">

				<div class="input-group">
					<form:select path="vungMien" class="form-control">
						<form:option value="">Chọn vùng miền</form:option>
						<form:options path="vungMien" value="mien nam">mien nam</form:options>
						<form:options path="vungMien" value="mien trug">mien trung</form:options>
					</form:select>
					<div class="input-group-append">
						<button type="button"
							class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						</button>

					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">Bạn là :</p>
			</div>
			<div class="col-8">
				<form:radiobutton path="banLa" id="caNhan" name="banLa"
					value="Cá nhân" label="Cá nhân" />
				<form:radiobutton path="banLa" id="congTy" name="banLa"
					value="Công ty" label="Công ty" />
				<!-- 				</div> -->
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">Bạn đăng tin :</p>

			</div>
			<div class="col-8">
				<form:radiobutton path="banDangTin" id="canBan" value="Cần bán"
					label="Cần bán" />
				<form:radiobutton path="banDangTin" id="canMua" value="Cần mua"
					label="Cần mua" />
				<form:radiobutton path="banDangTin" id="choThue" value="Cho thuê"
					label="Cho thuê" />
				<form:radiobutton path="banDangTin" id="canThue" value="Cần thuê"
					label="Cần thuê" />
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">Tình trạng :</p>

			</div>
			<div class="col-8">

				<form:radiobutton path="tinhTrang" id="moi" value="Mới" label="Mới" />
				<form:radiobutton path="tinhTrang" id="daSuDung" value="Đã sử dụng"
					label="Đã sử dụng" />
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Địa chỉ : <span id="batbuoc">(*)</span>
				</p>

			</div>
			<div class="col-8">
				<form:input path="diaChi" type="text" id="diaChi"
					class="form-control" required="required" />
				<p id="err-diaChi" class="err"></p>

			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Diện tích :<span id="batbuoc">(*)</span>
				</p>

			</div>
			<div class="col-8">

				<form:input path="dienTich" type="number" id="dienTich"
					class="form-control" required="required" />
				<p id="err-dienTich" class="err"></p>

			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">Hướng :</p>

			</div>
			<div class="col-8">

				<div class="input-group">

					<form:select path="huong" class="form-control" id="huong">
						<form:option value="">Chọn hướng</form:option>
						<form:option value="Nam">Nam</form:option>
						<form:option value="Bắc">Bắc</form:option>
						<form:option value="Tây Bắc">Tây Bắc</form:option>
						<form:option value="Tây Nam">Tây Nam</form:option>
					</form:select>
					<div class="input-group-append">
						<button type="button"
							class="btn btn-outline-secondary dropdown-toggle dropdown-toggle-split"
							data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
						</button>

					</div>
				</div>
			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Tựa đề :<span id="batbuoc">(*)</span>
				</p>
			</div>
			<div class="col-8">
				<form:input path="tuaDe" type="text" id="tuaDe" class="form-control"
					required="required" />

				<p id="err-tuaDe" class="err"></p>

			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Nội dung :<span id="batbuoc">(*)</span>
				</p>
			</div>
			<div class="col-8">

				<form:textarea path="noiDung" class="form-control w-100" name=""
					id="noiDung" rows="3" required="required" />
				<p id="err-noiDung" class="err"></p>

			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Giá :<span id="batbuoc">(*)</span>
				</p>
			</div>
			<div class="col-8">

				<form:input path="gia" type="number" id="gia" class="form-control"
					required="required" />
				<p id="err-gia" class="err"></p>

				<div class="form-check form-check-inline mt-3">
					<form:checkbox path="giaThoaThuan" class="form-check-input"
						id="giaThoaThuan" value="duoc thoa thuan" />
					<label class="form-check-label" for="giaThoaThuan">Gía có
						thể thỏa thuận</label>
				</div>

			</div>
		</div>
		<div class="row mt-3">
			<div class="col-4">
				<p class="col-12" style="text-align: end;">
					Hình ảnh :<span id="batbuoc">(*)</span>
				</p>
			</div>
			<div class="col-8">
				<span class="vuilong">Chỉ hình ảnh thật của sản phẩm mới được
					duyệt. Lưu ý không dùng hình ảnh có số điện thoại hoặc địa chỉ
					website.</span>
				<div class="row mt-3">
					<div class="col-3 1">
						<input type="file" class="form-control" id="imageID"
							name="imageUpload" accept="image/*">
					</div>
					<div class="col-3 img "></div>
					<div class="col-3 img"></div>
				</div>
				<div class="row mt-3">
					<div class="col-3 img"></div>
					<div class="col-3 img"></div>
					<div class="col-3 img"></div>
				</div>

				<button id="dangTin" type="submit" class="btn bg-primary mt-5 mb-5">
					<i class="fa-solid fa-check"></i> <span>Đăng tin</span>
				</button>
			</div>
		</div>
	</form:form>
</div>

<%@ include file="footer.jsp"%>