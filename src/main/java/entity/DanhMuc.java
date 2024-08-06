package entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class DanhMuc {
	@Id
	@Pattern(regexp = "^DM\\d{5}$", message = "Mã danh mục không hợp lệ")
	private String maDanhMuc;
	private String tenDanhMuc;

	@OneToMany(mappedBy = "danhMuc", cascade = CascadeType.ALL)
	private List<BaiDang> listBaiDang = new ArrayList<BaiDang>();
	
	public DanhMuc() {
	}

	public DanhMuc(@Pattern(regexp = "^DM\\d{5}$", message = "Mã danh mục không hợp lệ") String maDanhMuc,
			String tenDanhMuc) {
		this.maDanhMuc = maDanhMuc;
		this.tenDanhMuc = tenDanhMuc;
	}

	public String getMaDanhMuc() {
		return maDanhMuc;
	}

	public void setMaDanhMuc(String maDanhMuc) {
		this.maDanhMuc = maDanhMuc;
	}

	public String getTenDanhMuc() {
		return tenDanhMuc;
	}

	public void setTenDanhMuc(String tenDanhMuc) {
		this.tenDanhMuc = tenDanhMuc;
	}
	
	
	
	
	
	
}
