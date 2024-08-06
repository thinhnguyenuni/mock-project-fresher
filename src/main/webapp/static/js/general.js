$(document).ready(function() {


	//Thiet lap

	$(document).on("click", "#luuDanhMuc", function() {
		// Thêm class active vào thẻ h1
		$("#luuDanhMuc span").addClass("active");
		var danhMuc = $("#danhMuc").val();
		var y = true;

		if (danhMuc === "") {
			$("#err-danhMuc").show().text("Vui lòng nhập tên danh mục!");
			y = false;
		} else {
			$("#err-danhMuc").hide();
		}
	});
	$(document).on("click", "#luuLoaiTin", function() {
		// Thêm class active vào thẻ h1
		$("#luuLoaiTin span").addClass("active");
		var loaiTin = $("#loaiTin").val();
		var y = true;

		if (loaiTin === "") {
			$("#err-loaiTin").show().text("Vui lòng nhập tên loại tin!");
			y = false;
		} else {
			$("#err-loaiTin").hide();
		}
	});
	$(document).on("click", "#luuVungMien ", function() {
		// Thêm class active vào thẻ h1
		$("#luuVungMien span").addClass("active");
		var vungMien = $("#vungMien").val();
		var y = true;

		if (vungMien === "") {
			$("#err-vungMien").show().text("Vui lòng nhập tên vùng miền!");
			y = false;
		} else {
			$("#err-vungMien").hide();
		}
	});

	//dang tin

	$(document).on("click", "#dangTin", function() {
		// Thêm class active vào thẻ h1
		$("#dangTin span, #dangTin i").addClass("active");


		var diaChi = $("#diaChi").val();
		var dienTich = $("#dienTich").val();
		var tuaDe = $("#tuaDe").val();
		var noiDung = $("#noiDung").val();
		var gia = $("#gia").val();

		var y = true;

		if (dienTich === "" || dienTich < 0) {
			$("#err-dienTich").show().text("Vui lòng điền thông tin!");
			y = false;
		} else {
			$("#err-dienTich").hide();
		}

		if (diaChi === "") {
			$("#err-diaChi").show().text("Vui lòng điền thông tin!");
			y = false;
		} else {
			$("#err-diaChi").hide();
		}

		if (tuaDe === "") {
			$("#err-tuaDe").show().text("Vui lòng điền thông tin!");
			y = false;
		} else {
			$("#err-tuaDe").hide();
		}

		if (noiDung === "") {
			$("#err-noiDung").show().text("Vui lòng điền thông tin!");
			y = false;
		} else {
			$("#err-noiDung").hide();
		}

		if (gia === "" || gia < 0) {
			$("#err-gia").show().text("Sai định dạng dữ liệu!");
			y = false;
		} else {
			$("#err-gia").hide();
		}

		if (y === false) {
			alert("Bạn cần phải nhập đầy đủ thông tin!")
		}

		var danhMuc = $("#danhMuc").val();
		var vungMien = $("#vungMien").val();
		var banLa = $("input[name='baidang.banLa']:checked").val();
		var banDangTin = $("input[name='baidang.banDangTin']:checked").val();
		var tinhTrang = $("input[name='baidang.tinhTrang']:checked").val();
		var huong = $("#huong").val();

		window.location.href = "/xacnhandangtin?danhMuc=" + encodeURIComponent(danhMuc) + "&vungMien=" + encodeURIComponent(vungMien)
			+ "&banLa=" + encodeURIComponent(banLa) + "&banDangTin=" + encodeURIComponent(banDangTin)
			+ "&tinhTrang=" + encodeURIComponent(tinhTrang) + "&huong=" + encodeURIComponent(huong)
			+ "&diaChi=" + encodeURIComponent(diaChi) + "&dienTich=" + encodeURIComponent(dienTich)
			+ "&tuaDe=" + encodeURIComponent(tuaDe) + "&noiDung=" + encodeURIComponent(noiDung)
			+ "&gia=" + encodeURIComponent(gia);



	});

	$('#imageID').change(function() {
		// Khi có sự kiện change (tức là người dùng đã chọn ảnh), ẩn thẻ input
		$(this).hide();
	});
	
	//Xác nhận đăng tin

	$(document).on("click", "#quaylai", function() {
		// Thêm class active vào thẻ h1
		$("#quaylai span, #quaylai i").addClass("active");
	});

	$(document).on("click", "#xacnhan", function() {
		// Thêm class active vào thẻ h1
		$("#dangtin span, #dangtin i").addClass("active");

	});
});