package entity;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
public class NguoiDung {
	@Id
	private String email;

	private String hoTen;
	private String diaChi;

	@Pattern(regexp = "^(0\\d{9,10})$", message = "so dien thoai sai dinh dang")
	private String phone;

	@OneToMany(mappedBy = "nguoiDung", cascade = CascadeType.ALL)
	private List<BaiDang> listBaiDang = new ArrayList<BaiDang>();

	public NguoiDung() {
	}

	public NguoiDung(String email, String hoTen, String diaChi,
			@Pattern(regexp = "^(0\\d{9,10})$", message = "so dien thoai sai dinh dang") String phone) {
		this.email = email;
		this.hoTen = hoTen;
		this.diaChi = diaChi;
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getDiaChi() {
		return diaChi;
	}

	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	
}
